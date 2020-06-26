package br.com.comandadigital.controller;

import java.util.List;

import javax.validation.Valid;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Store;
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
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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

//	@GetMapping("/users")
//	public List<User> list(){
//		return userService.listAll();
//	}
	
/*	@GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os usuários com paginação", response = User[].class)
	public ResponseEntity<List<User>> listAll(Pageable pageable){
		return new ResponseEntity<>(userService.listAll(pageable), HttpStatus.OK);
	}*/

	@GetMapping(path = "/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os usuários", response = User[].class)
	public ResponseEntity<List<User>> listAll(){
		return new ResponseEntity<>(userService.listAll(), HttpStatus.OK);
	}

	@GetMapping(path = "/listAllUsersWithoutStoreAndPermissionUserStore", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os usuários aptos a terem seu estabelecimento cadastrado", response = User[].class)
	public ResponseEntity<List<User>> listAllUserByPermissionRoleUserStoreWithoutStore() throws Exception {
		return new ResponseEntity<>(userService.listAllUsersWithoutStoreAndPermissionUserStore(), HttpStatus.OK);
	}

	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('write')")
	//@Transactional(rollbackFor = Exception.class)
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
	
	@PostMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	//@Transactional(rollbackFor  = Exception.class)
	@ApiOperation(value = "Alterar usuário", response = User.class)
	public ResponseEntity<?> update(@RequestBody @Valid User user){
		try{
			return new ResponseEntity<>(userService.update(user), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}
	
    @GetMapping(path = "/find/name/{name}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ApiOperation(value = "Pesquisar por nome do usuário", response = User[].class)
    @ResponseBody
    public ResponseEntity<?> findByNameLike(@PathVariable String name) {
        return new ResponseEntity<>(userRepository.findByNameLike(name), HttpStatus.OK);
    }

    @GetMapping(path = "/find/cpf/{cpf}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ApiOperation(value = "Pesquisar por documento", response = User.class)
    @ResponseBody
    public ResponseEntity<?> findByCpfLike(@PathVariable String cpf) {
        return new ResponseEntity<>(userRepository.findByCpf(cpf), HttpStatus.OK);
    }

	


}