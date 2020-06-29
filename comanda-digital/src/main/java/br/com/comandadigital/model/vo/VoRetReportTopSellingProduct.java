package br.com.comandadigital.model.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.math.BigDecimal;
//@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public interface   VoRetReportTopSellingProduct {
    String getName();
    BigDecimal getUnitaryValue();
    Integer getQtSale();
    BigDecimal getTotSale();
}
