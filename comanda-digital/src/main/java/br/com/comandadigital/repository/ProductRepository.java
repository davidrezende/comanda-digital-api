package br.com.comandadigital.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Product;

public interface ProductRepository extends PagingAndSortingRepository<Product, Long> {

}
