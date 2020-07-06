package br.com.comandadigital.repository;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.vo.VoRetReportBillingStore;
import br.com.comandadigital.model.vo.VoRetReportTopSellingProduct;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.ProductCard;
import org.springframework.data.repository.query.Param;

public interface ProductCardRespository extends PagingAndSortingRepository<ProductCard, Long>{

	@Query(
			value = "select sum(pc.value * amount_product) as totBilling from tb_product_card pc, tb_card c \n" +
					"where c.id_store = ? \n" +
					"and pc.id_card = c.id_card \n" +
					"and date(c.end_date) =  date(SYSDATE()) ;",
			nativeQuery = true)
	BigDecimal dailyBilling(@Param("idStore")  Long idStore);


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

	@Query(
			value = "select count(pc.id_product_card) as qtProductCardKitchen from tb_product_card pc, tb_card c, tb_product p, tb_store s \n" +
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
	Integer countByIdStoreAndProductCardsAvailableAndProductTypeFoodInOpenCard(@Param("idStore") Long idStore, @Param("statusProductCard") Integer statusProductCard, @Param("descriptionType") String descriptionType);
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
					"and pc.id_product = p.id_product \n" +
					"and p.id_type = ( select tb_product_type.id_product_type from tb_product_type where tb_product_type.description =  ? ) \n" +
					"and c.end_date is not null \n" +
					"and pc.date_registration >= ? \n" +
					"and pc.date_registration <= ? \n" +
					"group by p.name, pc.value \n" +
					"order by qtSale desc, totSale desc, name asc ",
			nativeQuery = true)
	List<VoRetReportTopSellingProduct> reportTopSellingProductByStoreAndDate(@Param("idStore") Long idStore,
																			 @Param("productType") String productType,
																			 @Param("firstDate") Date firstDate,
																			 @Param("secondDate") Date secondDate );


	@Query(
			value = "select  \n" +
					"  DATE_FORMAT(card.end_date, '%m/%Y') as mes, \n" +
					"    prdtp.id_product_type as idCategoria, \n" +
					"	 prdtp.description as descricaoCategoria, \n" +
					"    count(prdcard.id_product) as qtd, \n" +
					"    sum(prdcard.amount_product*prdcard.value) as totFaturado \n" +
					" from \n" +
					" tb_card as card, \n" +
					"    tb_product_card as prdcard, \n" +
					"    tb_product as prd, \n" +
					"    tb_product_type as prdtp \n" +
					" where \n" +
					" card.id_store = ? \n" +
					"    and card.end_date is not null \n" +
					"	 and  card.end_date  >=  date_add(SYSDATE(), interval - 12 month) \n"+
					"    and card.id_card = prdcard.id_card \n" +
					"    and prd.id_store = card.id_store \n" +
					"    and prdcard.id_product = prd.id_product \n" +
					"    and prd.id_type = prdtp.id_product_type \n" +
					" group by \n" +
					" DATE_FORMAT(card.end_date, '%m/%Y'), \n" +
					"    prdtp.id_product_type, \n" +
					"	 prdtp.description	\n" +
					" order by \n" +
					" card.end_date desc, \n" +
					" prdtp.id_product_type \n",
			nativeQuery = true)
	List<VoRetReportBillingStore> reportTotBillingByStore(@Param("idStore") Long idStore);

	@Query(
			value = "select  \n" +
					"  DATE_FORMAT(card.end_date, '%m/%Y') as mes, \n" +
					"    prdtp.id_product_type as idCategoria, \n" +
					"	 prdtp.description as descricaoCategoria, \n" +
					"    count(prdcard.id_product) as qtd, \n" +
					"    sum(prdcard.amount_product*prdcard.value) as totFaturado \n" +
					" from \n" +
					" tb_card as card, \n" +
					"    tb_product_card as prdcard, \n" +
					"    tb_product as prd, \n" +
					"    tb_product_type as prdtp \n" +
					" where \n" +
					" card.id_store = ? \n" +
					"    and card.end_date is not null \n" +
					"    and card.end_date  >=  ? \n"+
					"	 and card.end_date  <=  ? \n"+
					"    and card.id_card = prdcard.id_card \n" +
					"    and prd.id_store = card.id_store \n" +
					"    and prdcard.id_product = prd.id_product \n" +
					"    and prd.id_type = prdtp.id_product_type \n" +
					" group by \n" +
					" DATE_FORMAT(card.end_date, '%m/%Y'), \n" +
					"    prdtp.id_product_type, \n" +
					"	 prdtp.description	\n" +
					" order by \n" +
					" card.end_date desc, \n" +
					" prdtp.id_product_type \n",
			nativeQuery = true)
	List<VoRetReportBillingStore> reportTotBillingByStoreAndDate(@Param("idStore") Long idStore	,
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
					"and pc.id_product = p.id_product \n" +
					"and p.id_type = ( select tb_product_type.id_product_type from tb_product_type where tb_product_type.description =  ? ) \n" +
					"and c.end_date is not null \n" +
					"group by p.name, pc.value \n" +
					"order by qtSale desc, totSale desc, name asc ",
			nativeQuery = true)
	List<VoRetReportTopSellingProduct> reportTopSellingProductByStore(@Param("idStore") Long idStore,
																	  @Param("productType") String productType);


	@Query(
			value = "select  p.name as name , \n" +
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
					"and pc.id_product = p.id_product \n" +
					"and p.id_type = ( select tb_product_type.id_product_type from tb_product_type where tb_product_type.description =  ? ) \n" +
					"and c.end_date is not null \n" +
					"group by p.name, pc.value \n" +
					"order by qtSale desc, totSale desc, name asc \n" +
					"limit ? ",
			nativeQuery = true)
	List<VoRetReportTopSellingProduct> reportTopSellingProductByStoreWithQtReg(
																	  @Param("idStore") Long idStore,
																	  @Param("productType") String productType,
																	  @Param("qtReg") Integer qtReg);
}
