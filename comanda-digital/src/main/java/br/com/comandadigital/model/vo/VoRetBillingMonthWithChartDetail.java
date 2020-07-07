package br.com.comandadigital.model.vo;

import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.List;

@Getter
@Setter

public class VoRetBillingMonthWithChartDetail {
    List<BigDecimal> totBilling ;
    List<BigDecimal> totDrink ;
    List<BigDecimal> totFood ;
    List<Integer> qtFood ;
    List<Integer> qtDrink ;
    List<String> month;
    List<VoRetReportBillingMounthGroupByProductType> details;
}
