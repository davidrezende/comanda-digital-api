package br.com.comandadigital.service;

import java.util.*;

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
    private static final String PRODUCT_TYPE_FOOD = "COMIDA";
    private static final Integer PRODUCT_CARD_DONE = 3;
    private static final Integer PRODUCT_CARD_DOING = 2;
    private static final Integer PRODUCT_CARD_OPEN = 1;

    public ProductCard save(ProductCard productCard) throws Exception {
        log.info(ProductCardLog.SAVE_LOG);
        if (productCard.getAmountProduct() < 1) {
            throw new Exception("Quantidade do produto invalida");
        }
        Optional<Product> foundProduct = Optional.ofNullable(productRepository.findByIdProduct(productCard.getProduct().getIdProduct()));
        if (!foundProduct.isPresent()) {
            throw new Exception("Produto inexistente para adicionar a comanda!");
        }
        //verifico se produto ja existe na comanda com status de em preparo ou finalizado
		List<Integer> statusKitchen = new ArrayList<Integer>();
		statusKitchen.add(PRODUCT_CARD_DONE);
		statusKitchen.add(PRODUCT_CARD_DOING);
        Optional<ProductCard> foundProductCard = Optional.ofNullable(productCardRepository.findByCard_IdCardAndProduct_IdProductAndStatusNotIn(productCard.getCard().getIdCard(), productCard.getProduct().getIdProduct(), statusKitchen));
        if (foundProductCard.isPresent()) {
            //caso o produto ainda nao tenha comecado a ser preparado permito a alteracao na quantidade
            foundProductCard.get().setAmountProduct(productCard.getAmountProduct() + foundProductCard.get().getAmountProduct());
            foundProductCard.get().setDateChange(new Date());
            return productCardRepository.save(foundProductCard.get());
        } else {
            //caso esteja em preparo ou finalizado adiciono um novo pedido do mesmo produto a comanda
            productCard.setValue(foundProduct.get().getValue());
			productCard.setDateRegistration(new Date());
            return productCardRepository.save(productCard);
        }
    }

    public ProductCard update(ProductCard productCard) throws Exception {
        log.info(ProductCardLog.UPDATE_LOG);
        //verifico se produto ja esta em preparo ou foi finalizado
        List<Integer> statusKitchen = new ArrayList<Integer>();
        statusKitchen.add(PRODUCT_CARD_DONE);
        statusKitchen.add(PRODUCT_CARD_DOING);
        Optional<ProductCard> foundProductCard = Optional.ofNullable(productCardRepository.findByCard_IdCardAndProduct_IdProductAndStatusNotIn(productCard.getCard().getIdCard(), productCard.getProduct().getIdProduct(), statusKitchen));
        //caso ja esteja em preparo ou finalizado nao permito o usuario altera-lo
        if(!foundProductCard.isPresent()){
            throw new Exception("Produto já está em preparo ou foi finalizado!");
        }
        if (productCard.getAmountProduct() < 1) {
            log.info(ProductCardLog.DELETE_LOG);
            if (delete(productCard) == 1) {
                return null;
            } else {
                throw new Exception("Erro ao remover o produto da comanda!");
            }
        }



        productCard.setDateChange(new Date());
        return productCardRepository.save(productCard);
    }

    public long delete(ProductCard productCard) {
//		log.info(LogConstants.LIST_BY_CARD);
        return productCardRepository.deleteByIdProductCard(productCard.getIdProductCard());
    }

    public List<ProductCard> listByCard(Long idCard) {
//		log.info(LogConstants.LIST_BY_CARD);		
        return productCardRepository.findByCard_idCard(idCard);
    }

    public List<ProductCard> listAllOpenCards() {
//		log.info(LogConstants.LISTALdL);
        return productCardRepository.findByCard_EndDateIsNull();
    }

    public List<ProductCard> listAll() {
//		log.info(LogConstants.LISTALdL);
        return productCardRepository.findAll();
    }

    public List<ProductCard> listAllProductCardStatusAvailableInOpenCardAndProductTypeIsFoodAndIdStore(Long idStore) {
        log.info(ProductCardLog.LIST_KITCHEN_LOG);
        return productCardRepository.findByIdStoreAndProductCardsAvailableAndProductTypeFoodInOpenCard(idStore, PRODUCT_CARD_DONE, PRODUCT_TYPE_FOOD);
    }

    public ProductCard updateStatus(ProductCard productCard) throws Exception {
        log.info(ProductCardLog.UPDATE_STATUS_LOG);
        Optional<ProductCard> foundProductCard = Optional.ofNullable(productCardRepository.findByIdProductCardAndStatus(productCard.getIdProductCard(), productCard.getStatus()));
        if (!foundProductCard.isPresent()) {
            throw new Exception("Pedido nao existente ou ja concluido");
        } else {
            if (foundProductCard.get().getStatus() == PRODUCT_CARD_OPEN) {
                foundProductCard.get().setStatus(PRODUCT_CARD_DOING);
            } else if (foundProductCard.get().getStatus() == PRODUCT_CARD_DOING) {
                foundProductCard.get().setStatus(PRODUCT_CARD_DONE);
            } else {
                throw new Exception("Pedido ja concluido");
            }
        }
        return productCardRepository.save(foundProductCard.get());
    }

    public ProductCard updateStatusRollBack(ProductCard productCard) throws Exception {
        log.info(ProductCardLog.UPDATE_STATUS_ROLLBACK_LOG);
        Optional<ProductCard> foundProductCard = Optional.ofNullable(productCardRepository.findByIdProductCardAndStatus(productCard.getIdProductCard(), productCard.getStatus()));
        if (!foundProductCard.isPresent()) {
            throw new Exception("Pedido nao existente ou ja concluido");
        } else {
            if (foundProductCard.get().getStatus() == PRODUCT_CARD_DOING) {
                foundProductCard.get().setStatus(PRODUCT_CARD_OPEN);
            }else {
                throw new Exception("Pedido ja esta aberto ou finalizado");
            }
        }
        return productCardRepository.save(foundProductCard.get());
    }

}
