package br.com.comandadigital.repository;

import br.com.comandadigital.model.Store;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Card;

import java.util.List;

public interface CardRepository extends PagingAndSortingRepository<Card, Long> {
    List<Card> findAll();
    List<Card> findByEndDateIsNull();
    List<Card> findByUser_Cpf(String cpf);
}
