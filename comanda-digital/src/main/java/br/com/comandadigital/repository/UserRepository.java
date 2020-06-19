package br.com.comandadigital.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.User;

public interface UserRepository extends PagingAndSortingRepository<User, Long>{
	List<User> findAll();
	
	User findByCpf(String cpf);
	
	List<User> findByNameLike(String name);
	
	Optional<User> findByEmail(String email);
	
}
