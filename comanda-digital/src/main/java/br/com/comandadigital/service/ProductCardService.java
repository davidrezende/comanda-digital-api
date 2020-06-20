package br.com.comandadigital.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import br.com.comandadigital.constants.log.ProductCardLog;
import br.com.comandadigital.model.Product;
import br.com.comandadigital.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.ProductCard;
import br.com.comandadigital.repository.ProductCardRespository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ProductCardService {
	private final ProductCardRespository productCardRepository;
	private final ProductRepository productRepository;

	public ProductCard save(ProductCard productCard) throws Exception {
		log.info(ProductCardLog.SAVE_LOG);
		Optional<Product> foundProduct = Optional.ofNullable(productRepository.findByIdProduct(productCard.getProduct().getIdProduct()));
		boolean foundProductStatus = foundProduct.isPresent();
		if (!foundProductStatus) {
			throw new Exception("Produto inexistente para adicionar a comanda!");
		}
		productCard.setDateRegistration(new Date());
		productCard.setValue(foundProduct.get().getValue());

		Optional<ProductCard> foundProductCard = Optional.ofNullable(productCardRepository.findByCard_IdCardAndProduct_IdProduct(productCard.getCard().getIdCard(), productCard.getProduct().getIdProduct()));
		boolean foundProductCardStatus = foundProductCard.isPresent();
		if (foundProductCardStatus) {
			foundProductCard.get().setAmountProduct(productCard.getAmountProduct()+foundProductCard.get().getAmountProduct());
			foundProductCard.get().setDateRegistration(new Date());
			return productCardRepository.save(foundProductCard.get());
		}
		return productCardRepository.save(productCard);
	}

	public ProductCard update(ProductCard productCard) throws Exception {
		log.info(ProductCardLog.UPDATE_LOG);
		if(productCard.getAmountProduct() < 1){
			log.info(ProductCardLog.DELETE_LOG);
			if(delete(productCard) == 1){
				return null;
			}else{
				throw new Exception("Houve problemas para remover o produto da comanda!");
			}
		}
		productCard.setDateRegistration(new Date());
		return productCardRepository.save(productCard);
	}

	public long delete(ProductCard productCard){
//		log.info(LogConstants.LIST_BY_CARD);
		return productCardRepository.deleteByIdProductCard(productCard.getIdProductCard());
	}
	
	public List<ProductCard> listByCard(Long idCard){
//		log.info(LogConstants.LIST_BY_CARD);		
		return productCardRepository.findByCard_idCard(idCard);
	}

	public List<ProductCard> listAllOpenCards (){
//		log.info(LogConstants.LISTALdL);
		return productCardRepository.findByCard_EndDateIsNull();
	}

	public List<ProductCard> listAll (){
//		log.info(LogConstants.LISTALdL);
		return productCardRepository.findAll();
	}
	
	
}
