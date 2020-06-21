package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.StoreLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.StoreRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class StoreService {

	private final StoreRepository storeRepository;

	public List<Store> list(){
		log.info(StoreLog.LIST_LOG);
		return storeRepository.findAll();
	}

	public Optional<Store> findByUser(long idUser){
		log.info(StoreLog.FIND_USER_LOG);
		return storeRepository.findFirstByUser_IdUser(idUser);
	}

	public Store save(Store store){
		log.info(StoreLog.SAVE_LOG);
		store.setRegistrationDate(new Date());
		return storeRepository.save(store);
	}

	public Store update(Store store){
		log.info(StoreLog.UPDATE_LOG);
		return storeRepository.save(store);
	}
	
}
