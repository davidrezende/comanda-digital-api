package br.com.comandadigital.model;

import br.com.comandadigital.constants.entity.ProductValidation;
import br.com.comandadigital.constants.entity.StoreValidation;
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

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idProduct;

    @NotBlank( message = ProductValidation.NAME_VALIDATION_MESSAGE)
    @Size( min = 5, max = 100, message = StoreValidation.NAME_VALIDATION_MESSAGE)
    private String name;

    @NotBlank( message = ProductValidation.DESCRIPTION_VALIDATION_MESSAGE)
    @Size( min = 5, max = 200, message = StoreValidation.NAME_VALIDATION_MESSAGE)
    private String description;

    @NotNull
    @DecimalMin(value = "0.0", inclusive = false, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    @Digits(integer= 3, fraction=2, message = ProductValidation.VALUE_VALIDATION_MESSAGE)
    private BigDecimal value;

    private Integer status = 1;

    @ManyToOne(cascade = {CascadeType.MERGE}, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_store")
    private Store store;
}
