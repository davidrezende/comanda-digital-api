package br.com.comandadigital.model;

import br.com.comandadigital.constants.entity.AddressValidation;
import br.com.comandadigital.constants.entity.StoreValidation;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_address")
public class Address {

    @ApiModelProperty(value = "Código do Endereço")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idAddress;

    @ApiModelProperty(value = "Número do CEP do Estabelecimento")
    @NotBlank(message = AddressValidation.CEP_MESSAGE)
    @Size(min = 9, max = 9, message = AddressValidation.CEP_SIZE_MESSAGE)
    @JsonProperty("cep")
    @Column(nullable = false)
    private String zipCode;

    @ApiModelProperty(value = "Logradouro do Estabelecimento")
    @NotBlank(message = AddressValidation.LOGRADOURO_MESSAGE)
    @Size(min = 5, max = 180, message = AddressValidation.LOGRADOURO_SIZE_MESSAGE)
    @JsonProperty("logradouro")
    @Column(nullable = false)
    private String streetName;

    @ApiModelProperty(value = "Complemento do Estabelecimento")
    @NotBlank(message = AddressValidation.COMPLEMENTO_MESSAGE)
    @Size(min = 1, max = 50, message = AddressValidation.COMPLEMENTO_SIZE_MESSAGE)
    @JsonProperty("complemento")
    @Column(nullable = false)
    private String aditionalInfo;

    @ApiModelProperty(value = "Bairro do Estabelecimento")
    @NotBlank(message = AddressValidation.BAIRRO_MESSAGE)
    @Size(min = 3, max = 80, message = AddressValidation.BAIRRO_SIZE_MESSAGE)
    @JsonProperty("bairro")
    @Column(nullable = false)
    private String neighborhood;

    @ApiModelProperty(value = "Cidade do Estabelecimento")
    @NotBlank(message = AddressValidation.CIDADE_MESSAGE)
    @Size(min = 3, max = 80, message = AddressValidation.CIDADE_SIZE_MESSAGE)
    @JsonProperty("localidade")
    @Column(nullable = false)
    private String city;

    @ApiModelProperty(value = "UF do Estabelecimento")
    @NotBlank(message = AddressValidation.UF_MESSAGE)
    @Size(min = 2, max = 2, message = AddressValidation.UF_SIZE_MESSAGE)
    @JsonProperty("uf")
    @Column(nullable = false)
    private String state;
}
