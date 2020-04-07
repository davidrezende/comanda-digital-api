package br.com.comandadigital.model;


import br.com.comandadigital.constants.entity.StoreValidation;
import br.com.comandadigital.constants.entity.UserValidation;
import lombok.*;
import org.hibernate.validator.constraints.br.CNPJ;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;

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

    @ManyToOne(cascade = {CascadeType.ALL}, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user")
    private User user;
    
    @OneToMany(mappedBy = "store", cascade = {CascadeType.ALL}, fetch = FetchType.EAGER)
    private List<Product> products;
    
    @OneToMany(mappedBy = "store", cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
    private List<Card> cards;
    


}
