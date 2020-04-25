package br.com.comandadigital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.StoreRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class StoreService {

	private final StoreRepository storeRepository;

	public List<Store> list(){
//		log.info(LogConstants.LIST_ALL_STORES);
		return storeRepository.findAll();
	}

	public Store save(Store store){
//		log.info(LogConstants.SAVE_STORE);
		storeRepository.save(store);
		return storeRepository.save(store);
	}

	public Store update(Store store){
//		log.info(LogConstants.UPDATE_STORE);
		return storeRepository.save(store);
	}
	
}
