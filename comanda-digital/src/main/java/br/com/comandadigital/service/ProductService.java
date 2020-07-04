package br.com.comandadigital.service;

import java.util.List;
import java.util.Optional;

import br.com.comandadigital.constants.log.ProductLog;
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
	private final int ENABLE = 1;
	private final int DISABLE = 2;

	public List<Product> listByStore(long IdStore){
		log.info(ProductLog.LIST_LOG);
		return productRepository.findByStatusAndStore_idStore(ENABLE, IdStore);
	}

	public List<Product> listMenuByStore(long IdStore){
		log.info(ProductLog.LIST_MENU_LOG);
		return productRepository.findByStatusAndStore_idStoreOrderByTypeAsc(ENABLE, IdStore);
	}

	public List<Product> listByNameAndStore(String name,long idStore){
		log.info(ProductLog.LIST_NAME_STORE_LOG);
		return productRepository.findByNameContainingAndStore_IdStore(name, idStore);
	}	
	
	public Product save(Product product) {
		log.info(ProductLog.SAVE_LOG);
		return productRepository.save(product);
	}

	public Product update(Product product) {
		log.info(ProductLog.UPDATE_LOG);
		return productRepository.save(product);
	}

	public Integer delete(Product product) {
		log.info(ProductLog.DELETE_LOG);
		return productRepository.deleteByIdProductAndStore_IdStore(product.getIdProduct(), product.getStore().getIdStore());
	}

	public Product disable(Product product) throws Exception {
		log.info(ProductLog.DISABLE_LOG);
		Optional<Product> foundProduct = Optional.ofNullable(productRepository.findByIdProductAndStatusAndStore_IdStore(product.getIdProduct(), ENABLE, product.getStore().getIdStore()));
		boolean found = foundProduct.isPresent();
		if (!found)
			throw new Exception("Produto não existente ou já desabilitado");
		foundProduct.get().setStatus(DISABLE);
		return productRepository.save(foundProduct.get());
	}

}
