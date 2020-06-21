package br.com.comandadigital.repository;

import java.util.List;

import br.com.comandadigital.model.Card;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.ProductCard;

public interface ProductCardRespository extends PagingAndSortingRepository<ProductCard, Long>{

	List<ProductCard> findByCard_idCard(Long idCard);
	List<ProductCard> findByCard_EndDateIsNull();
	ProductCard findByCard_IdCardAndProduct_IdProduct(long idCard, long idProduct);
	List<ProductCard> findAll();
	long deleteByIdProductCard(long idProductCard);
}
