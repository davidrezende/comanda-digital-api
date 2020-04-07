package br.com.comandadigital.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.comandadigital.model.User;
import br.com.comandadigital.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("v1/user")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
//@Api(value = "User endpoints")
public class UserController {
	
	private final UserService  userService;

	@GetMapping("/testeapi")
	private String test() {
		return "teste";
	}
	
	@GetMapping("/users")
	public List<User> list(){
		return userService.listAll();
	}
	
	@GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	//@ApiOperation(value = "List all users", response = ResponseEntity.class)
	public ResponseEntity<Iterable<User>> listAll(Pageable pageable){
		return new ResponseEntity<>(userService.listAll(pageable), HttpStatus.OK);
	}
	
	
	@GetMapping(path = "/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	//@ApiOperation(value = "List all users", response = ResponseEntity.class)
	public ResponseEntity<List<User>> listAll(){
		return new ResponseEntity<List<User>>(userService.listAll(), HttpStatus.OK);
	}
	
	
	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor = Exception.class)
	//@ApiOperation(value = "Save object user", response = ResponseEntity.class)
	public ResponseEntity<User> save(@RequestBody @Valid User user){
		return new ResponseEntity<>(userService.save(user), HttpStatus.CREATED);
	}
	
	@PostMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor  = Exception.class)
	public ResponseEntity<?> update(@RequestBody @Valid User user){
		return new ResponseEntity<>(userService.update(user), HttpStatus.CREATED);
	}
	
	


}