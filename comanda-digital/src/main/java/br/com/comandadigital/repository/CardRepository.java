package br.com.comandadigital.repository;

import br.com.comandadigital.model.Store;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Card;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface CardRepository extends PagingAndSortingRepository<Card, Long> {
    List<Card> findAll();
    List<Card> findByStore_idStoreAndEndDateIsNull(Long idStore);
    Card findByStore_idStoreAndIdCard(Long idStore, Long idCard);
    List<Card> findByUser_Cpf(String cpf);
    Card findByIdCardAndEndDateIsNull(Long idCard);
    List<Card> findByStore_idStoreAndTableNumberAndEndDateIsNull(Long idStore, int tableNumber);
    Card findFirstByUser_IdUserAndEndDateIsNullOrderByBeginDateDesc(Long idUser);
    List<Card> findByUser_idUserAndEndDateIsNotNullOrderByBeginDateDesc(Long idUser);
    List<Card> findByUser_idUserAndEndDateIsNotNullAndBeginDateBetweenOrderByBeginDateDesc(Long idUser, Date beginDate, Date endDate);
    Card findByIdCard(Long idCard);
    List<Card> findByStore_idStoreAndEndDateIsNotNullAndBeginDateBetweenOrderByBeginDateDesc(Long idStore, Date firstDate, Date secondDate);
    List<Card> findByStore_idStoreAndEndDateIsNotNullOrderByBeginDateDesc(Long idStore);
    Integer countByStore_idStoreAndEndDateIsNull(Long idStore);

    @Query(
            value = "select sum(c.amount_people) as qtPeople \n" +
                    "from tb_card c \n" +
                    "where c.id_store = ? \n" +
                    "and c.end_date is null \n",
            nativeQuery = true)
    Integer reportQtPeople(@Param("idStore") Long idStore);
}
