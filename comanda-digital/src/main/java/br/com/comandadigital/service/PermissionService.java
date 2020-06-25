package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.PermissionLog;
import br.com.comandadigital.model.Permission;
import br.com.comandadigital.repository.PermissionRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class PermissionService {
	private final PermissionRepository permissionRepository;

	public Optional<List<Permission>> findByRoleDescription(String permission){
		log.info(PermissionLog.FIND_ROLE_LOG);
		return permissionRepository.findByDescription(permission);
	}

	public List<Permission> listAll(){
		log.info(PermissionLog.FIND_ALL_ROLE_LOG);
		return permissionRepository.findAll();
	}


}
