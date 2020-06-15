package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.CardLog;
import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.vo.VoCardCpf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.repository.CardRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

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
		Boolean found = foundCard.isPresent() ? true : false;
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
		return cardRepository.findByStore_idStoreAndEndDateIsNull(idStore);
	}
//
//	public Card findOpenCardsByStoreId(long idStore){
////		log.info(LogConstants.LIST_ALL_STORES);
//		return cardRepository.findByStore_IdStoreAndEndDateIsNull(idStore);
//	}

	public Card findByIdStoreAndIdCard (long idStore, long idCard){
		log.info(CardLog.FINDB_STOREID_CARDID);
		return cardRepository.findByStore_idStoreAndIdCard(idStore, idCard);
	}


	public List<Card> findByCpf(VoCardCpf cpf){
//		log.info(LogConstants.LIST_ALL_STORES);
		return cardRepository.findByUser_Cpf(cpf.getCpf());
	}
}
