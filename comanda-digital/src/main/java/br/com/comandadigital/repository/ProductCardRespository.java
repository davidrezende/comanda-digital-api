package br.com.comandadigital.repository;

import java.util.Date;
import java.util.List;

import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.vo.VoRetReportTopSellingProduct;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.ProductCard;
import org.springframework.data.repository.query.Param;

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

	@Query(
			value = "select p.name as name , \n" +
					" (sum(pc.amount_product)) as qtSale, \n" +
					" pc.value as unitaryValue, \n" +
					" ((sum(pc.amount_product)) * pc.value) as totSale \n" +
					" from tb_product_card pc, \n" +
					" tb_card c, \n" +
					" tb_product p, \n" +
					" tb_store s \n" +
					"where \n" +
					"pc.id_card = c.id_card  \n" +
					"and s.id_store = ? \n" +
					"and c.id_store = s.id_store \n" +
					"and pc.status = ? \n" +
					"and pc.id_product = p.id_product \n" +
					"and p.id_type = ( select tb_product_type.id_product_type from tb_product_type where tb_product_type.description =  ? ) \n" +
					"and c.end_date is not null \n" +
					"and pc.date_registration >= ? \n" +
					"and pc.date_registration <= ? \n" +
					"group by p.name, pc.value \n" +
					"order by qtSale desc, totSale desc, name asc ",
			nativeQuery = true)
	List<VoRetReportTopSellingProduct> reportTopSellingProductByStoreAndDate(@Param("idStore") Long idStore,
																			 @Param("status") Integer status,
																			 @Param("productType") String productType,
																			 @Param("firstDate") Date firstDate,
																			 @Param("secondDate") Date secondDate );

	@Query(
			value = "select p.name as name , \n" +
					" (sum(pc.amount_product)) as qtSale, \n" +
					" pc.value as unitaryValue, \n" +
					" ((sum(pc.amount_product)) * pc.value) as totSale \n" +
					" from tb_product_card pc, \n" +
					" tb_card c, \n" +
					" tb_product p, \n" +
					" tb_store s \n" +
					"where \n" +
					"pc.id_card = c.id_card  \n" +
					"and s.id_store = ? \n" +
					"and c.id_store = s.id_store \n" +
					"and pc.status = ? \n" +
					"and pc.id_product = p.id_product \n" +
					"and p.id_type = ( select tb_product_type.id_product_type from tb_product_type where tb_product_type.description =  ? ) \n" +
					"and c.end_date is not null \n" +
					"group by p.name, pc.value \n" +
					"order by qtSale desc, totSale desc, name asc ",
			nativeQuery = true)
	List<VoRetReportTopSellingProduct> reportTopSellingProductByStore(@Param("idStore") Long idStore,
																	  @Param("status") Integer status,
																	  @Param("productType") String productType);
}
