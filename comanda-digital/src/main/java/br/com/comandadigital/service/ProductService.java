package br.com.comandadigital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.Product;
import br.com.comandadigital.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ProductService {

	private final ProductRepository productRepository;
	
	public List<Product> listByStore(Long IdStore){
//		log.info(LogConstants.LIST_ALL_PRODUCTS_BY_STORE);
		System.out.println("aqui?");
		return productRepository.findByStore_idStore(IdStore);
	}

	public List<Product> listByNameAndStore(String name,Long idStore){
//		log.info(LogConstants.LIST_ALL_PRODUCTS_BY_STORE);
		return productRepository.findByNameContainingAndStore_IdStore(name, idStore);
	}	
	
	
	public Product save(Product product) {
//		log.info(LogConstants.SAVE_PRODUCT);		
		return productRepository.save(product);
	}
	
	
	public Product update(Product product) {
//		log.info(LogConstants.UPDATE_PRODUCT);		
		return productRepository.save(product);
	}
	
}
