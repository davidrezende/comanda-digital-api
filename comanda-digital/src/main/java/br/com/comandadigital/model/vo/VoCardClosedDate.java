package br.com.comandadigital.model.vo;

import io.swagger.annotations.ApiModel;
import lombok.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.constraints.NotNull;
import java.util.Date;

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
