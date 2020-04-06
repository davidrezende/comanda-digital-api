package br.com.comandadigital.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.User;

public interface UserRepository extends PagingAndSortingRepository<User, Long>{

}
