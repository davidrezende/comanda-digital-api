package br.com.comandadigital.controller;

import java.util.List;

import javax.validation.Valid;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Store;
import br.com.comandadigital.model.vo.VoUserChangePassword;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import br.com.comandadigital.model.User;
import br.com.comandadigital.repository.UserRepository;
import br.com.comandadigital.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@CrossOrigin
@RestController
@RequestMapping("v1/user")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Usuário")
public class UserController {
	
	private final UserService  userService;
	private final UserRepository userRepository;

	@GetMapping(path = "/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os usuários", response = User[].class)
	public ResponseEntity<List<User>> listAll(){
		return new ResponseEntity<>(userService.listAll(), HttpStatus.OK);
	}

	@GetMapping(path = "/listAllUsersWithoutStoreAndPermissionUserStore", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os usuários qu", response = User[].class)
	public ResponseEntity<List<User>> listAllUserByPermissionRoleUserStoreWithoutStore() throws Exception {
		return new ResponseEntity<>(userService.listAllUsersWithoutStoreAndPermissionUserStore(), HttpStatus.OK);
	}

	@GetMapping(path = "/listAllUsersWithPermissionUserStore", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os usuários que possuam permissão para serem donos de estabelecimentos", response = User[].class)
	public ResponseEntity<List<User>> listAllUsersWithPermissionUserStore() throws Exception {
		return new ResponseEntity<>(userService.listAllUsersWithPermissionUserStore(), HttpStatus.OK);
	}

	@GetMapping(path = "/find/name/{nameUser}/hasPermissionUserStore", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os usuários que possuam permissão para serem donos de estabelecimentos por Nome", response = User[].class)
	@ResponseBody
	public ResponseEntity<List<User>> listAllUserByNameAndPermissionRoleUserStoreWithStore(@PathVariable String nameUser) throws Exception {
		return new ResponseEntity<>(userService.listAllUsersByNameWithStoreAndPermissionUserStore(nameUser), HttpStatus.OK);
	}

	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('write')")
	@ApiOperation(value = "Salvar novo usuário", response = User.class)
	public ResponseEntity<?> save(@RequestBody @Valid User user){
		try{
			return new ResponseEntity<>(userService.save(user), HttpStatus.CREATED);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}
	
	@PutMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and #oauth2.hasScope('write')")
	@ApiOperation(value = "Alterar usuário", response = User.class)
	public ResponseEntity<?> update(@RequestBody @Valid User user) throws Exception {
		try{
			return new ResponseEntity<>(userService.update(user), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}catch	(Exception e){
			ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}


	@PutMapping(path = "/updateByAdmin", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and #oauth2.hasScope('write')")
	@ApiOperation(value = "Administrador alterando usuário", response = User.class)
	public ResponseEntity<?> updateByAdmin(@RequestBody @Valid User user) throws Exception {
		try{
			return new ResponseEntity<>(userService.updateAdmin(user), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}catch	(Exception e){
			ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}


	@PutMapping(path = "/changePassword", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and #oauth2.hasScope('write')")
	@ApiOperation(value = "Alterar senha do usuário")
	public ResponseEntity<?> update(@RequestBody @Valid VoUserChangePassword userChangePassword) throws Exception {
		try{
			return new ResponseEntity<>(userService.changePassword(userChangePassword), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}catch	(Exception e){
			ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}
	
    @GetMapping(path = "/find/name/{name}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ApiOperation(value = "Pesquisar por nome do usuário", response = User[].class)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('read')")
    @ResponseBody
    public ResponseEntity<?> findByNameLike(@PathVariable String name) {
        return new ResponseEntity<>(userRepository.findByNameLike(name), HttpStatus.OK);
    }

	@GetMapping(path = "/find/id/{idUser}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ApiOperation(value = "Pesquisar por ID", response = User.class)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE')and #oauth2.hasScope('read')")
	@ResponseBody
	public ResponseEntity<?> findById(@PathVariable Long idUser) {
		return new ResponseEntity<>(userRepository.findByIdUser(idUser), HttpStatus.OK);
	}

    @GetMapping(path = "/find/cpf/{cpf}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ApiOperation(value = "Pesquisar por documento", response = User.class)
    @ResponseBody
    public ResponseEntity<?> findByCpfLike(@PathVariable String cpf) {
        return new ResponseEntity<>(userRepository.findByCpf(cpf), HttpStatus.OK);
    }


}