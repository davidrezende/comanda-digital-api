package br.com.comandadigital.service;

import br.com.comandadigital.constants.AcessRoles;
import br.com.comandadigital.constants.log.StoreLog;
import br.com.comandadigital.model.Permission;
import br.com.comandadigital.model.Product;
import br.com.comandadigital.model.User;
import br.com.comandadigital.repository.PermissionRepository;
import br.com.comandadigital.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.StoreRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class StoreService {

	private final StoreRepository storeRepository;
	private final UserRepository userRepository;
	private final PermissionRepository permissinRepository;
	private final int ENABLE = 1;
	private final int DISABLE = 2;

	public List<Store> list(){
		log.info(StoreLog.LIST_LOG);
		return storeRepository.findAllByOrderByRegistrationDateDesc();
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

	public Store enableDisable(Store store) throws Exception {
		log.info(StoreLog.ENABLE_DISABLE_LOG);

		Optional<Store> foundStore = Optional.ofNullable(storeRepository.findByIdStore(store.getIdStore()));
		boolean found = foundStore.isPresent();

		if (!found) {
			throw new Exception("Loja não existente");
		}

		if(foundStore.get().getStatus() == ENABLE){
			//desativo
			return disable(foundStore.get());
		}else{
			return enable(foundStore.get());
		}
	}

	public Store disable(Store store) throws Exception {
		log.info(StoreLog.DISABLE_LOG);

		Optional<List<Permission>> listPermissionUserStore = permissinRepository.findByDescription(AcessRoles.ROLE_ACESS_USER);
		if(listPermissionUserStore.isPresent()){
			store.getUser().setUserPermissions(listPermissionUserStore.get());
		}else{
			throw new Exception("Permissão "+ AcessRoles.ROLE_ACESS_USER + " não encontrada");
		}

		store.setStatus(DISABLE);
		return storeRepository.save(store);
	}

	public Store enable(Store store) throws Exception {
		log.info(StoreLog.ENABLE_DISABLE_LOG);

		Optional<List<Permission>> listPermissionUserStore = permissinRepository.findByDescription(AcessRoles.ROLE_ACESS_USER_STORE);
		if(listPermissionUserStore.isPresent()){
			store.getUser().setUserPermissions(listPermissionUserStore.get());
		}else{
			throw new Exception("Permissão "+ AcessRoles.ROLE_ACESS_USER_STORE + " não encontrada");
		}

		store.setStatus(ENABLE);
		return storeRepository.save(store);
	}

	//TODO:alterar para post pois a comparacao de nulo enviada pela url nao funciona
	public List<Store> findByName(String name){
		log.info(StoreLog.FIND_NAME_LOG);
		if(name != null){
			return storeRepository.findByNameContainingAllIgnoreCaseOrderByRegistrationDateDesc(name);
		}else{
			return storeRepository.findAllByOrderByRegistrationDateDesc();
		}
	}
	
}
