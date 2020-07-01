package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.ProductCardLog;
import br.com.comandadigital.constants.log.ReportLog;
import br.com.comandadigital.model.ProductCard;
import br.com.comandadigital.model.vo.VoReportTopSellingProductDate;
import br.com.comandadigital.model.vo.VoRetReportBasicInfo;
import br.com.comandadigital.model.vo.VoRetReportTopSellingProduct;
import br.com.comandadigital.repository.CardRepository;
import br.com.comandadigital.repository.ProductCardRespository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ReportService {
    private final ProductCardRespository productCardRepository;
    private final CardRepository cardRepository;

    private static final Integer STATUS_PRODUCT_CARD_DONE_BY_KITCHEN = 3;
    private static final Integer STATUS_PRODUCT_CARD_DONE_DRINK = 1;

    private static final String PRODUCT_CARD_TYPE_FOOD = "COMIDA";
    private static final String PRODUCT_CARD_TYPE_DRINK = "BEBIDA";

    public List<VoRetReportTopSellingProduct> getReportTopSellingList(VoReportTopSellingProductDate vo) throws Exception {
        if (vo.getType() != null) {
            String TYPE_FOOD_OR_DRINK = vo.getType() == 1 ? PRODUCT_CARD_TYPE_FOOD : PRODUCT_CARD_TYPE_DRINK;
            log.info(ReportLog.REPORT_TOP_PRODUCT_TYPE_FOOD_SALE + " " + TYPE_FOOD_OR_DRINK);
            if (vo.getFirstDate() != null && vo.getSecondDate() != null) {
                Calendar c = Calendar.getInstance();
                c.setTime(vo.getSecondDate());
                c.add(Calendar.DATE, +1);
                vo.setSecondDate(c.getTime());
                return productCardRepository.reportTopSellingProductByStoreAndDate(vo.getIdStore(), TYPE_FOOD_OR_DRINK, vo.getFirstDate(), vo.getSecondDate());
            } else if (vo.getQtReg() != null) {
                return productCardRepository.reportTopSellingProductByStoreWithQtReg( vo.getIdStore(), TYPE_FOOD_OR_DRINK, vo.getQtReg());
            } else {
                return productCardRepository.reportTopSellingProductByStore(vo.getIdStore(), TYPE_FOOD_OR_DRINK);
            }
        } else {
            throw new Exception("Servico indisponivel");
        }
    }


    public VoRetReportBasicInfo getReportBasicInfo(Long idStore) {
        log.info(ReportLog.REPORT_BASIC_INFO);
        VoRetReportBasicInfo voRet = new VoRetReportBasicInfo();
        voRet.setQtOpenCards(cardRepository.countByStore_idStoreAndEndDateIsNull(idStore));
        voRet.setQtPeople(cardRepository.reportQtPeople(idStore));
        voRet.setQtProductCardKitchen(productCardRepository.countByIdStoreAndProductCardsAvailableAndProductTypeFoodInOpenCard(idStore, STATUS_PRODUCT_CARD_DONE_BY_KITCHEN, PRODUCT_CARD_TYPE_FOOD));
        voRet.setTotBilling(productCardRepository.dailyBilling(idStore));
        return voRet;
    }
}
