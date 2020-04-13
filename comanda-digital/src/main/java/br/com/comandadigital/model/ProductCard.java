package br.com.comandadigital.model;

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
import javax.validation.constraints.NotBlank;

import br.com.comandadigital.constants.entity.ProductValidation;
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

	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long idProductCard;
	
	@NotBlank( message = ProductValidation.AMOUNT_VALIDATION_MESSAGE)
	private Integer amountProduct;
	
	@Column(updatable = false)
	private Date  dateRegistration;
	
    @ManyToOne(cascade = {CascadeType.MERGE}, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_product")
    private Product product;
    
    @ManyToOne(cascade = {CascadeType.MERGE}, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_card")
    private Card card;
    
	
}
