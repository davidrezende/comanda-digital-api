package br.com.comandadigital.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Store;

public interface StoreRepository extends PagingAndSortingRepository<Store, Long>{

}
