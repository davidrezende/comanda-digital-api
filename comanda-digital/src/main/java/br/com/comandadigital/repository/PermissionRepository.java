package br.com.comandadigital.repository;

import br.com.comandadigital.model.Permission;
import org.springframework.data.repository.PagingAndSortingRepository;
import java.util.List;
import java.util.Optional;

public interface PermissionRepository extends PagingAndSortingRepository<Permission, Long> {
    List<Permission> findAll();
    Optional<List<Permission>> findByDescription(String role);
}
