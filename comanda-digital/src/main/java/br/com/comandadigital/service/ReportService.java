package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.ReportLog;
import br.com.comandadigital.model.vo.VoReportTopSellingProductDate;
import br.com.comandadigital.model.vo.VoRetReportTopSellingProduct;
import br.com.comandadigital.repository.ProductCardRespository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ReportService {
	private final ProductCardRespository reportRepository;

	private static final Integer STATUS_PRODUCT_CARD_DONE_BY_KITCHEN 		= 3;
	private static final String PRODUCT_CARD_TYPE_FOOD 						= "COMIDA";
	private static final String PRODUCT_CARD_TYPE_DRINK 					= "BEBIDA";

	public List<VoRetReportTopSellingProduct> getReportTopSellingFoodList(VoReportTopSellingProductDate vo){
		log.info(ReportLog.REPORT_TOP_PRODUCT_TYPE_FOOD_SALE);
		if(vo.getFirstDate() != null && vo.getSecondDate() != null){
			return reportRepository.reportTopSellingProductByStoreAndDate(vo.getIdStore(), STATUS_PRODUCT_CARD_DONE_BY_KITCHEN, PRODUCT_CARD_TYPE_FOOD, vo.getFirstDate(), vo.getSecondDate());
		}else{
			return reportRepository.reportTopSellingProductByStore(vo.getIdStore(), STATUS_PRODUCT_CARD_DONE_BY_KITCHEN, PRODUCT_CARD_TYPE_FOOD);
		}
	}

	public List<VoRetReportTopSellingProduct> getReportTopSellingDrinkList(VoReportTopSellingProductDate vo){
		log.info(ReportLog.REPORT_TOP_PRODUCT_TYPE_DRINK_SALE);
		if(vo.getFirstDate() != null && vo.getSecondDate() != null){
			return reportRepository.reportTopSellingProductByStoreAndDate(vo.getIdStore(), STATUS_PRODUCT_CARD_DONE_BY_KITCHEN, PRODUCT_CARD_TYPE_DRINK, vo.getFirstDate(), vo.getSecondDate());
		}else{
			return reportRepository.reportTopSellingProductByStore(vo.getIdStore(), STATUS_PRODUCT_CARD_DONE_BY_KITCHEN, PRODUCT_CARD_TYPE_DRINK);
		}
	}

}
