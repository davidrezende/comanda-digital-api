package br.com.comandadigital.model;

import br.com.comandadigital.constants.entity.UserValidation;
import lombok.*;
import org.hibernate.validator.constraints.br.CPF;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_user")
public class User implements Serializable {

    @Id
    @GeneratedValue
    private long idUser;

    @NotBlank(message = UserValidation.NAME_VALIDATION_MESSAGE)
    @Size( min = 5, max = 100, message = UserValidation.NAME_VALIDATION_MESSAGE)
    private String name;

    @ToString.Exclude
    @CPF(message = UserValidation.CPF_VALIDATION_MESSAGE)
    private String cpf;

    @ToString.Exclude
    @NotBlank(message = UserValidation.PASSWORD_VALIDATION_MESSAGE)
    @Size( min = 8, max = 16, message = UserValidation.PASSWORD_VALIDATION_MESSAGE)
    private String password;

    private Date dtRegistration;

}
