package br.com.comandadigital.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.User;

public interface UserRepository extends PagingAndSortingRepository<User, Long>{
	List<User> findAll();
}
