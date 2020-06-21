package br.com.comandadigital.repository;

import br.com.comandadigital.model.Store;
import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.comandadigital.model.Card;

import java.util.Date;
import java.util.List;

public interface CardRepository extends PagingAndSortingRepository<Card, Long> {
    List<Card> findAll();
    List<Card> findByStore_idStoreAndEndDateIsNull(long idStore);
    Card findByStore_idStoreAndIdCard(long idStore, long idCard);
    List<Card> findByUser_Cpf(String cpf);
    Card findByIdCardAndEndDateIsNull(long idCard);
    List<Card> findByStore_idStoreAndTableNumberAndEndDateIsNull(long idStore, int tableNumber);
    Card findFirstByUser_IdUserAndEndDateIsNullOrderByBeginDateDesc(long idUser);
    List<Card> findByUser_idUserAndEndDateIsNotNullOrderByBeginDateDesc(long idUser);
    List<Card> findByUser_idUserAndEndDateIsNotNullAndBeginDateBetweenOrderByBeginDateDesc(long idUser, Date beginDate, Date endDate);
}
