package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.ReportLog;
import br.com.comandadigital.model.vo.*;
import br.com.comandadigital.repository.CardRepository;
import br.com.comandadigital.repository.ProductCardRespository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.function.Predicate;
import java.util.stream.Collectors;

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
                return productCardRepository.reportTopSellingProductByStoreWithQtReg(vo.getIdStore(), TYPE_FOOD_OR_DRINK, vo.getQtReg());
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

    public VoRetBilling reportBillingInfo(VoReportBillingDate vo) {
        log.info(ReportLog.REPORT_BILLING_INFO);
        return formatChartTotBillingByStore(vo);
    }

    public VoRetBilling formatChartTotBillingByStore(VoReportBillingDate vo) {
        VoRetBilling voRet = new VoRetBilling();
        List<VoRetReportBillingStore> list = new ArrayList<>();
        if (vo.getFirstDate() != null && vo.getSecondDate() != null) {
            log.info(ReportLog.REPORT_BILLING_DATE_INTERVAL_INFO);
            Calendar c = Calendar.getInstance();
            c.setTime(vo.getSecondDate());
            c.add(Calendar.MONTH, +1);
            vo.setSecondDate(c.getTime());
            list = productCardRepository.reportTotBillingByStoreAndDate(vo.getIdStore(), vo.getFirstDate(),vo.getSecondDate());
        } else {
            log.info(ReportLog.REPORT_BILLING_12MONTH_INFO);
            list = productCardRepository.reportTotBillingByStore(vo.getIdStore());
        }

        //retirando meses iguais
        List<String> meses = list.stream()
                .map(VoRetReportBillingStore::getMes)
                .distinct()
                .collect(Collectors.toList());

        List<BigDecimal> totBebida = new ArrayList<>();
        List<BigDecimal> totComida = new ArrayList<>();
        List<BigDecimal> totBilling = new ArrayList<>();
        List<Integer> qtComida = new ArrayList<>();
        List<Integer> qtBebida = new ArrayList<>();
        List<String> mesArray = new ArrayList<>();

        Predicate<VoRetReportBillingStore> a;
        Predicate<VoRetReportBillingStore> b;

        //para cada mes eu filtro por data e id categoria
        for (String mes : meses) {
            a = e -> e.getMes().equals(mes);
            for (int i = 1; i < 3; i++) {
                int finalI = i;
                b = e -> e.getIdCategoria().equals(finalI);
                //se achar o registro para a data e categoria e monta as listas
                if (!list.stream().filter(a).filter(b).collect(Collectors.toList()).isEmpty()) {
                    if (i == 1) {
                        totComida.add(list.stream()
                                .filter(a.and(b))
                                .collect(Collectors.toList())
                                .get(0)
                                .getTotFaturado());
                        qtComida.add(list.stream()
                                .filter(a.and(b))
                                .collect(Collectors.toList())
                                .get(0)
                                .getQtd());
                        mesArray.add(mes);
                    } else {
                        totBebida.add(list.stream()
                                .filter(a.and(b))
                                .collect(Collectors.toList())
                                .get(0)
                                .getTotFaturado());
                        qtBebida.add(list.stream()
                                .filter(a.and(b))
                                .collect(Collectors.toList())
                                .get(0)
                                .getQtd());
                        mesArray.add(mes);
                    }
                } else {
                    //se nao achar o registro seta valor 0
                    if (i == 1) {
                        totComida.add(new BigDecimal(0));
                        qtComida.add(0);
                        mesArray.add(mes);
                    } else {
                        totBebida.add(new BigDecimal(0));
                        qtBebida.add(0);
                        mesArray.add(mes);
                    }
                }

            }
        }

        for (int i = 0; i < totBebida.size(); i++) {
            totBilling.add(totComida.get(i).add(totBebida.get(i)));
        }
        voRet.setTotBilling(totBilling);
        voRet.setMonth(meses);
        voRet.setQtDrink(qtBebida);
        voRet.setQtFood(qtComida);
        voRet.setTotDrink(totBebida);
        voRet.setTotFood(totComida);
        voRet.setDetails(list);
        return voRet;
    }
}
