package br.com.comandadigital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.StoreRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class StoreService {

	private final StoreRepository storeRepository;
	
	public Store save (Store store) {	
		return storeRepository.save(store);
	}
	
	
}
