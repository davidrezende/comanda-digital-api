package br.com.comandadigital.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Card;

public interface CardRepository extends PagingAndSortingRepository<Card, Long> {

}
