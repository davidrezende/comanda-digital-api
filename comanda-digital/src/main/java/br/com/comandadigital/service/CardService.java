package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.CardLog;
import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.vo.VoCardClosedDate;
import br.com.comandadigital.model.vo.VoCardCpf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.repository.CardRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class CardService {
	private final CardRepository cardRepository;

	public Card update(Card card){
		log.info(CardLog.UPDATE_LOG);
		return cardRepository.save(card);
	}

	public Card updateAndCloseCard(Card card) throws Exception {
		Card closedCard = new Card();
		log.info(CardLog.UPDATE_CLOSE_CARD);
		Optional<Card> foundCard = Optional.ofNullable(cardRepository.findByIdCardAndEndDateIsNull(card.getIdCard()));
		boolean found = foundCard.isPresent();
		if (!found)
			throw new Exception("Comanda nao encontrada ou ja estah fechada!");
		foundCard.get().setEndDate(new Date());
		return cardRepository.save(foundCard.get());
	}

	public Card save(Card card){
		log.info(CardLog.SAVE_LOG);
		card.setBeginDate(new Date());
		return cardRepository.save(card);
	}

	public List<Card> listAll(){
		log.info(CardLog.LIST_LOG);
		return cardRepository.findAll();

	}

	public List<Card> listAllOpenCards(long idStore){
		log.info(CardLog.LIST_OPEN_LOG);
		return cardRepository.findByStore_idStoreAndEndDateIsNullOrderByBeginDateDesc(idStore);
	}

	public Card findByIdStoreAndIdCard (long idStore, long idCard){
		log.info(CardLog.FIND_STOREID_CARDID_LOG);
		return cardRepository.findByStore_idStoreAndIdCard(idStore, idCard);
	}

	public Card findByIdCard (long idCard){
		log.info(CardLog.FIND_ID_CARD_LOG);
		return cardRepository.findByIdCard(idCard);
	}

	public List<Card> findByIdStoreAndTableNumberAndOpenCards(long idStore, int tableNumber){
		log.info(CardLog.FIND_STOREID_TABLENUMBER_LOG);
		return cardRepository.findByStore_idStoreAndTableNumberAndEndDateIsNullOrderByBeginDateDesc(idStore, tableNumber);
	}

	public Card findLastOpenCardByIdUser(long idUser){
		log.info(CardLog.FIND_LAST_OPEN_BY_USER_LOG);
		return cardRepository.findFirstByUser_IdUserAndEndDateIsNullOrderByBeginDateDesc(idUser);
	}

	public List<Card> findClosedCardsByIdUser(long idUser){
		log.info(CardLog.FIND_CLOSED_BY_USER_LOG);
		return cardRepository.findByUser_idUserAndEndDateIsNotNullOrderByBeginDateDesc(idUser);
	}

	public List<Card> findClosedCardsByStoreAndBeginDate(VoCardClosedDate vo){
		log.info(CardLog.FIND_CLOSED_BY_DATE_STORE_LOG);
			if(vo.getFirstDate() == null || vo.getSecondDate() == null){
				return cardRepository.findByStore_idStoreAndEndDateIsNotNullOrderByEndDateDesc(
						vo.getIdStore());
			}else{
				Calendar c = Calendar.getInstance();
				c.setTime(vo.getSecondDate());
				c.add(Calendar.DATE, +1);
				vo.setSecondDate(c.getTime());
				return cardRepository.findByStore_idStoreAndEndDateIsNotNullAndBeginDateBetweenOrderByEndDateDesc(
					vo.getIdStore(), vo.getFirstDate(), vo.getSecondDate());
			}
	}

	public List<Card> findByCpf(VoCardCpf cpf){
//		log.info(LogConstants.LIST_ALL_STORES);
		return cardRepository.findByUser_Cpf(cpf.getCpf());
	}
}
