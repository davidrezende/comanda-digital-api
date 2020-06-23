package br.com.comandadigital.model.vo;

import br.com.comandadigital.constants.entity.UserValidation;
import lombok.*;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class VoCardCpf {
    @NotBlank(message = UserValidation.CPF_VALIDATION_MESSAGE)
    private String cpf;
}
