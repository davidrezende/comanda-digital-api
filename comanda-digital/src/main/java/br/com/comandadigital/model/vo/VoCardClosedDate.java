package br.com.comandadigital.model.vo;

import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class VoCardClosedDate {

    @NotNull(message = "Estabelecimento invalido")
    private long idStore;
    private Date firstDate;
    private Date secondDate;
}
