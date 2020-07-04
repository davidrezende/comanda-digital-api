package br.com.comandadigital.model.vo;

import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
public class VoRetReportBasicInfo {
    private Integer qtOpenCards;
    private Integer qtPeople;
    private Integer qtProductCardKitchen;
    private BigDecimal totBilling;
}
