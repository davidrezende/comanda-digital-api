package br.com.comandadigital.model.vo;

import java.math.BigDecimal;

public interface VoRetReportBillingStore {
    String getMes();
    Integer getIdCategoria();
    String getDescricaoCategoria();
    Integer getQtd();
    BigDecimal getTotFaturado();
}
