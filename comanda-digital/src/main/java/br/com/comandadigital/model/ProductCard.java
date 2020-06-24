package br.com.comandadigital.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import br.com.comandadigital.constants.entity.ProductValidation;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_product_card")
public class ProductCard {

    @ApiModelProperty(value = "Código de Produto Comanda")
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long idProductCard;

    @ApiModelProperty(value = "Quantidade do produto na comanda")
	@NotNull( message = ProductValidation.AMOUNT_VALIDATION_MESSAGE)
	private Integer amountProduct;

    @ApiModelProperty(value = "Data de registro e de atualização do produto na comanda")
	@Column(updatable = false, nullable = false)
	private Date  dateRegistration;

    @ApiModelProperty(value = "Valor unitário do produto no momento da inclusão na comanda")
    @DecimalMin(value = "0.0", inclusive = false, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    @Digits(integer= 3, fraction=2, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    private BigDecimal value;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_product")
    private Product product;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_card")
    private Card card;
    
}
