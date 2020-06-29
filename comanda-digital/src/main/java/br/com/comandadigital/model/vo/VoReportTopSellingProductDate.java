package br.com.comandadigital.model.vo;

import lombok.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class VoReportTopSellingProductDate {

    @NotNull(message = "Estabelecimento invalido")
    private long idStore;
    private Date firstDate;
    private Date secondDate;
}
