package br.com.comandadigital.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Store;

import java.util.List;

public interface StoreRepository extends PagingAndSortingRepository<Store, Long>{
    List<Store> findByCnpjLike(String name);
    List<Store> findByNameLike(String name);
    List<Store> findAll();
}
