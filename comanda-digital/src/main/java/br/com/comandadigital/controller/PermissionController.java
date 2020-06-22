package br.com.comandadigital.controller;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Permission;
import br.com.comandadigital.model.User;
import br.com.comandadigital.repository.PermissionRepository;
import br.com.comandadigital.repository.UserRepository;
import br.com.comandadigital.service.PermissionService;
import br.com.comandadigital.service.UserService;
import io.swagger.annotations.Api;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("v1/permission")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Permissão")
public class PermissionController {
	
	private final PermissionService permissionService;

	@GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	//@ApiOperation(value = "List all users", response = ResponseEntity.class)
	public ResponseEntity<List<?>> listAll() {
		return new ResponseEntity<List<?>>(permissionService.listAll(), HttpStatus.OK);
	}

}