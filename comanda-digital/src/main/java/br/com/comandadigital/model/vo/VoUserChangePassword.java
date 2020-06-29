package br.com.comandadigital.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Setter
@Getter
@ToString
public class VoUserChangePassword {

    @NotNull(message = "Id do usuario invalido")
    private Long idUser;
    @NotBlank(message = "Senha atual invalida")
    private String password;
    @NotBlank(message = "Senha nova invalida")
    private String newPassword;
}
