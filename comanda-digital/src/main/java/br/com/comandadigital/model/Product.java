package br.com.comandadigital.model;

import br.com.comandadigital.constants.entity.ProductValidation;
import lombok.*;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
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

    @Id
    @GeneratedValue
    private Long idProduct;

    @NotBlank( message = ProductValidation.NAME_VALIDATION_MESSAGE)
    private String name;

    @NotBlank( message = ProductValidation.DESCRIPTION_VALIDATION_MESSAGE)
    private String description;

    @DecimalMin(value = "0.0", inclusive = false, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    @Digits(integer= 3, fraction=2, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    private BigDecimal value;

    @ManyToOne(cascade = {CascadeType.ALL}, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_store")
    private Store store;
}
