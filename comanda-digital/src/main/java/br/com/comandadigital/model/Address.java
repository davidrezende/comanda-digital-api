package br.com.comandadigital.model;

import br.com.comandadigital.constants.entity.AddressValidation;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

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

    @ApiModelProperty(value = "Código da comanda")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idAddress;

    @ApiModelProperty(value = "Número do CEP do Usuário")
    @NotBlank(message = AddressValidation.CEP_MESSAGE)
    @JsonProperty("cep")
    private String zipCode;

    @ApiModelProperty(value = "Logradouro do Usuário")
    @NotBlank(message = AddressValidation.LOGRADOURO_MESSAGE)
    @JsonProperty("logradouro")
    private String streetName;

    @ApiModelProperty(value = "Complemento do Usuário")
    @NotBlank(message = AddressValidation.COMPLEMENTO_MESSAGE)
    @JsonProperty("complemento")
    private String aditionalInfo;

    @ApiModelProperty(value = "Bairro do Usuário")
    @NotBlank(message = AddressValidation.BAIRRO_MESSAGE)
    @JsonProperty("bairro")
    private String neighborhood;

    @ApiModelProperty(value = "Cidade do Usuário")
    @NotBlank(message = AddressValidation.CIDADE_MESSAGE)
    @JsonProperty("localidade")
    private String city;

    @ApiModelProperty(value = "Estado do Usuário")
    @NotBlank(message = AddressValidation.UF_MESSAGE)
    @JsonProperty("uf")
    private String state;
}
