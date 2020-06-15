package br.com.comandadigital.repository;

import java.util.List;

import br.com.comandadigital.model.Card;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.ProductCard;

public interface ProductCardRespository extends PagingAndSortingRepository<ProductCard, Long>{

	List<ProductCard> findByCard_idCardAndCard_EndDateIsNull(Long idCard);
	List<ProductCard> findByCard_EndDateIsNull();
	List<ProductCard> findAll();
}
