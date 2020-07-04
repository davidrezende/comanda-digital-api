package br.com.comandadigital.model;

import br.com.comandadigital.constants.entity.ProductTypeValidation;
import br.com.comandadigital.constants.entity.ProductValidation;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_product_type")
public class ProductType {

    @ApiModelProperty(value = "Código de tipo do produto")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idProductType;

    @ApiModelProperty(value = "Descrição do tipo do produto")
    @NotBlank( message = ProductTypeValidation.DESCRIPTION_VALIDATION_MESSAGE)
    @Column(nullable = false)
    private String description;

}
