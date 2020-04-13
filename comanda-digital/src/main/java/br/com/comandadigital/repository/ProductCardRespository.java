package br.com.comandadigital.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.ProductCard;

public interface ProductCardRespository extends PagingAndSortingRepository<ProductCard, Long>{

	List<ProductCard> findByCard_idCard(Long idCard);
	
}
