package br.com.comandadigital.repository;

import java.util.List;

import br.com.comandadigital.model.Card;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.ProductCard;

public interface ProductCardRespository extends PagingAndSortingRepository<ProductCard, Long>{



	@Query(
			value = "select pc.* from tb_product_card pc, tb_card c, tb_product p, tb_store s \n" +
					"where \n" +
					"pc.id_card = c.id_card \n" +
					"and s.id_store = ? \n" +
					"and c.id_store = s.id_store \n" +
					"and pc.status != ? \n" +
					"and pc.id_product = p.id_product \n" +
					"and p.id_type = ( select tb_product_type.id_product_type from tb_product_type where tb_product_type.description = ? ) \n" +
					"and c.end_date is null \n" +
					"order by pc.status desc, pc.date_registration asc ",
			nativeQuery = true)
	List<ProductCard> findByIdStoreAndProductCardsAvailableAndProductTypeFoodInOpenCard(Long idStore, Integer statusProductCard, String descriptionType);
	List<ProductCard> findByCard_idCard(Long idCard);
	List<ProductCard> findByCard_EndDateIsNull();
	ProductCard findByCard_IdCardAndProduct_IdProductAndStatusNotIn(Long idCard, Long idProduct, List<Integer> statusKitchen);
	ProductCard findByIdProductCardAndStatus(Long idProductCard, Integer status);
	List<ProductCard> findAll();
	Long deleteByIdProductCard(Long idProductCard);
}
