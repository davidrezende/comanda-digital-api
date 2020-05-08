package br.com.comandadigital.service;

import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.Store;
import br.com.comandadigital.model.vo.VoCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.repository.CardRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class CardService {
	private final CardRepository cardRepository;

	public Card update(Card card){
//		log.info(LogConstants.UPDATE_STORE);
		return cardRepository.save(card);
	}

	public Card save(Card card){
//		log.info(LogConstants.UPDATE_STORE);
		return cardRepository.save(card);
	}

	public List<Card> listAll(){
//		log.info(LogConstants.LIST_ALL_STORES);
		return cardRepository.findAll();

	}

	public List<Card> listAllOpenCards(){
//		log.info(LogConstants.LIST_ALL_STORES);
		return cardRepository.findByEndDateIsNull();
	}

	public List<Card> findByCpf(String cpf){
//		log.info(LogConstants.LIST_ALL_STORES);
		return cardRepository.findByUser_CpfAndEndDateIsNull(cpf);
	}
}
