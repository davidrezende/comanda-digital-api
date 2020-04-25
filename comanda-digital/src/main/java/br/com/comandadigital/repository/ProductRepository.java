package br.com.comandadigital.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Product;
import br.com.comandadigital.model.Store;

public interface ProductRepository extends PagingAndSortingRepository<Product, Long> {

    List<Product> findByNameLikeAndStore_IdStore(String name, Long idSore);
    List<Product> findByStore_idStore(Long idStore);
	
}
