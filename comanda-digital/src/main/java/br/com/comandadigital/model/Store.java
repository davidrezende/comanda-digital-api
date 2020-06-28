package br.com.comandadigital.model;


import br.com.comandadigital.constants.entity.StoreValidation;
import br.com.comandadigital.constants.entity.UserValidation;
import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import org.hibernate.validator.constraints.br.CNPJ;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
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

    @ApiModelProperty(value = "Código do estabelecimento")
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idStore;

    @CNPJ(message = StoreValidation.CNPJ_VALIDATION_MESSAGE)
    @ApiModelProperty(value = "Número do documento CNPJ do estabelecimento")
    @ToString.Exclude
    @Column(unique = true, nullable = false, length = 18)
    private String cnpj;

    @ApiModelProperty(value = "Nome do estabelecimento")
    @NotBlank(message = StoreValidation.NAME_VALIDATION_MESSAGE)
    @Size( min = 5, max = 100, message = StoreValidation.NAME_SIZE_VALIDATION_MESSAGE)
    @Column(nullable = false)
    private String name;

    @ApiModelProperty(value = "Número do telefone")
    @NotBlank(message = StoreValidation.PHONE_VALIDATION_MESSAGE)
    @ToString.Exclude
    @Size( min = 10, max = 15, message = StoreValidation.PHONE_SIZE_VALIDATION_MESSAGE)
    @Column(nullable = false)
    private String phone;

    @ApiModelProperty(value = "Status do estabelecimento")
    private Integer status = 1;

    @ApiModelProperty(value = "Data do registro do estabelecimento")
    @Column(nullable = false)
    private Date registrationDate;

    @NotNull(message = UserValidation.USER_VALIDATION_MESSAGE)
    @ManyToOne( fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user")
    private User user;

    @Valid
    @OneToOne(cascade = CascadeType.ALL, optional = false)
    @JoinColumn(name = "id_address")
    private Address address;

    @JsonIgnore
    @OneToMany(cascade = {CascadeType.MERGE}, fetch = FetchType.LAZY)
    @JoinColumn(name = "id_store")
    private List<Card> cards;

}
