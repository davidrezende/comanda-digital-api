package br.com.comandadigital.repository;

import br.com.comandadigital.model.ProductType;
import org.springframework.data.repository.PagingAndSortingRepository;
import java.util.List;

public interface ProductTypeRepository extends PagingAndSortingRepository<ProductType, Long> {
    List<ProductType> findAll();
}
