package br.com.comandadigital.model;


import br.com.comandadigital.constants.entity.StoreValidation;
import br.com.comandadigital.constants.entity.UserValidation;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;
import org.hibernate.validator.constraints.br.CNPJ;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_store")
public class Store implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = -8733769688320329862L;

	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idStore;

   // @CNPJ(message = StoreValidation.CNPJ_VALIDATION_MESSAGE)
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

    @JsonIgnore
    @OneToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
    @JoinColumn(name = "fk_store")
    private List<Card> cards;

}
