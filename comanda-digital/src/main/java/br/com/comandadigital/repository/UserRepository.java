package br.com.comandadigital.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.User;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends PagingAndSortingRepository<User, Long>{
	List<User> findAll();
	//Optional<User> findByIdUser(Long idUser);
	@Query(
			value = "select u.* from tb_user u, tb_user_permission up, tb_permission p \n" +
					"where p.description = ? \n" +
					"and p.id_permission = up.id_permission \n" +
					"and u.id_user = up.id_user \n" +
					"and not exists ( select * from tb_store where tb_store.id_user = u.id_user ) ",
			nativeQuery = true)
	List<User> findByUserPermissionsByRoleStoreAndWithoutStore(@Param("role") String role);

	List<User> findByUserPermissions_DescriptionContainingAllIgnoreCase(String role);

	List<User> findByNameContainingAllIgnoreCaseAndUserPermissions_Description(String name, String role);

	User findByCpf(String cpf);
	
	List<User> findByNameLike(String name);

	Optional<User> findByIdUser(Long idUser);
	
	Optional<User> findByEmail(String email);
	
}
