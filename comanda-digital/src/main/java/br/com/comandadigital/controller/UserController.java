package br.com.comandadigital.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
@RequestMapping("v1")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
//@Api(value = "User endpoints")
public class UserController {
	
	private final UserService  userService;

	@GetMapping("/testeapi")
	private String test() {
		return "teste";
	}
	
	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackOn = Exception.class)
	//@ApiOperation(value = "Save object user", response = ResponseEntity.class)
	public ResponseEntity<User> save(@RequestBody User user){
		
		return new ResponseEntity<>(userService.save(user), HttpStatus.CREATED);
		
	}
	


}