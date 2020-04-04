package br.com.comandadigital.model;


import br.com.comandadigital.constants.entity.StoreValidation;
import br.com.comandadigital.constants.entity.UserValidation;
import lombok.*;
import org.hibernate.validator.constraints.br.CNPJ;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_store")
public class Store implements Serializable {

    @Id
    @GeneratedValue
    private Long idStore;

    @CNPJ(message = StoreValidation.CNPJ_VALIDATION_MESSAGE)
    private String cnpj;

    @NotBlank(message = StoreValidation.NAME_VALIDATION_MESSAGE)
    @Size( min = 10, max = 100, message = StoreValidation.NAME_VALIDATION_MESSAGE)
    private String name;

    @NotBlank(message = StoreValidation.PHONE_VALIDATION_MESSAGE)
    @Size( min = 10, max = 11, message = StoreValidation.PHONE_VALIDATION_MESSAGE)
    private String phone;

    @NotBlank(message = StoreValidation.ADDRESS_VALIDATION_MESSAGE)
    @Size( max = 200, message = StoreValidation.ADDRESS_VALIDATION_MESSAGE)
    private String address;

    private String registrationDate;


}
