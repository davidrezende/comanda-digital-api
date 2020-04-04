package br.com.comandadigital.model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
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

    private String name;
    private String description;
    private BigDecimal value;

}
