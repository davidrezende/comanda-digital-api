package br.com.comandadigital.model.vo;

import br.com.comandadigital.constants.entity.CardValidation;
import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.Product;
import br.com.comandadigital.model.ProductCard;
import br.com.comandadigital.model.User;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;



@Getter
@Setter
@Builder
public class VoCardCpf {
    private String cpf;
}
