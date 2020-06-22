package br.com.comandadigital.controller;

import java.util.List;

import javax.validation.Valid;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import io.swagger.annotations.Api;
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

	@GetMapping("/testeapi")
	private String test() {
		return "teste";
	}
	
	@GetMapping("/users")
	public List<User> list(){
		return userService.listAll();
	}
	
	@GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	//@ApiOperation(value = "List all users", response = ResponseEntity.class)
	public ResponseEntity<Iterable<User>> listAll(Pageable pageable){
		return new ResponseEntity<>(userService.listAll(pageable), HttpStatus.OK);
	}
	
	
	@GetMapping(path = "/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
	//@ApiOperation(value = "List all users", response = ResponseEntity.class)
	public ResponseEntity<List<User>> listAll(){
		return new ResponseEntity<List<User>>(userService.listAll(), HttpStatus.OK);
	}
	
	
	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('write')")
//	@Transactional(rollbackFor = Exception.class)
	//@ApiOperation(value = "Save object user", response = ResponseEntity.class)
	public ResponseEntity<?> save(@RequestBody @Valid User user){
//		return new ResponseEntity<>(userService.save(user), HttpStatus.CREATED);
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
	public ResponseEntity<?> update(@RequestBody @Valid User user){
//		return new ResponseEntity<>(userService.update(user), HttpStatus.CREATED);
		try{
			return new ResponseEntity<>(userService.update(user), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}
	
    @GetMapping(path = "/find/name/{name}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<?> findByNameLike(@PathVariable String name) {
        return new ResponseEntity<>(userRepository.findByNameLike(name), HttpStatus.OK);
    }

    @GetMapping(path = "/find/cpf/{cpf}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<?> findByCpfLike(@PathVariable String cpf) {
        return new ResponseEntity<>(userRepository.findByCpf(cpf), HttpStatus.OK);
    }
	
	


}