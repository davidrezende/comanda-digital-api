package br.com.comandadigital.model;

import java.util.Date;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import br.com.comandadigital.constants.entity.CardValidation;
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
@Table(name = "tb_card")
public class Card {

	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idCard;
	
	@NotNull(message = CardValidation.TABLE_NUMBER_VALIDATION_MESSAGE)
	//@Size(min = 1, max = 3, message = CardValidation.TABLE_NUMBER_VALIDATION_MESSAGE)
    private Long tableNumber;
	
	@NotNull(message = CardValidation.TABLE_NUMBER_VALIDATION_MESSAGE)
	//@Size(min = 1, max = 3, message = CardValidation.AMOUNT_PEOPLE_VALIDATION_MESSAGE)
    private int amountPeople;

    private Date beginDate;

    private Date endDate;


    @ManyToOne( fetch = FetchType.EAGER)
    @JoinColumn(name = "id_store")
    private Store store;

    @ManyToOne( fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user")
    private User user;

    

}
