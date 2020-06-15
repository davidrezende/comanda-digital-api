package br.com.comandadigital.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Product;
import br.com.comandadigital.model.Store;

public interface ProductRepository extends PagingAndSortingRepository<Product, Long> {
    List<Product> findByNameContainingAndStore_IdStore(String name, long idSore);
    List<Product> findByStatusAndStore_idStore(int status, long idStore);
	Integer deleteByIdProductAndStore_IdStore(long idProduct, long idStore);
	Product findByIdProductAndStatusAndStore_IdStore(long idProduct, int status, long idStore);
}
