package br.com.comandadigital.model.vo;

import java.math.BigDecimal;

public interface VoRetReportBillingMounthGroupByProductType {
    String getMes();
    Integer getIdCategoria();
    String getDescricaoCategoria();
    Integer getQtd();
    BigDecimal getTotFaturado();
}
