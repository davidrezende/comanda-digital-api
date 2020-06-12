package br.com.comandadigital.service;

import java.util.Date;
import java.util.List;

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

	public ProductCard save(ProductCard productCard) {
//		log.info(LogConstants.SAVE_PRODUCT_CARD);
		productCard.setDateRegistration(new Date());
		return productCardRepository.save(productCard);
	}

	public ProductCard update(ProductCard productCard) {
//		log.info(LogConstants.UPDATE_PRODUCT_CARD);
		return productCardRepository.save(productCard);
	}
	
	public List<ProductCard> listByCard(Long idCard){
//		log.info(LogConstants.LIST_BY_CARD);		
		return productCardRepository.findByCard_idCardAndCard_EndDateIsNull(idCard);
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
