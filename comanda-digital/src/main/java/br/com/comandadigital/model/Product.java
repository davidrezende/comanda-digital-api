package br.com.comandadigital.model;

import br.com.comandadigital.constants.entity.ProductValidation;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.math.BigDecimal;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_product")
public class Product {

    @ApiModelProperty(value = "Código do produto")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idProduct;

    @ApiModelProperty(value = "Nome do produto")
    @NotBlank( message = ProductValidation.NAME_VALIDATION_MESSAGE)
    @Size( min = 1, max = 100, message = ProductValidation.NAME_SIZE_VALIDATION_MESSAGE)
    @Column(nullable = false)
    private String name;

    @ApiModelProperty(value = "Descrição do produto")
    @NotBlank( message = ProductValidation.DESCRIPTION_VALIDATION_MESSAGE)
    @Size( min = 5, max = 200, message = ProductValidation.DESCRIPTION_SIZE_VALIDATION_MESSAGE)
    @Column(nullable = false)
    private String description;

    @ApiModelProperty(value = "Valor do produto")
    @NotNull(message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    @DecimalMin(value = "0.0", inclusive = false, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    @Digits(integer= 6, fraction=2, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    private BigDecimal value;

    @ApiModelProperty(value = "Status do produto")
    private Integer status = 1;

    @ManyToOne( fetch = FetchType.EAGER)
    @JoinColumn(name = "id_store")
    private Store store;
}
