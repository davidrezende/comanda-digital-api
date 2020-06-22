package br.com.comandadigital.controller;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Card;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
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

import br.com.comandadigital.model.ProductCard;
import br.com.comandadigital.service.ProductCardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("v1/productCard")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Produto Comanda")
public class ProductCardController {
	private final ProductCardService productCardService;

	@GetMapping(path = "/find/card/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE )
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and  #oauth2.hasScope('read')")
	@ResponseBody
	public ResponseEntity<?> listByCard(@PathVariable Long idCard){
		return new ResponseEntity<>(productCardService.listByCard(idCard), HttpStatus.OK);
	}

	@PostMapping(path = "/add/product", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('write')")
//	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<?> addProduct(@RequestBody @Valid ProductCard productCard) throws Exception {
//		return new ResponseEntity<>(productCardService.save(productCard), HttpStatus.CREATED);
		try{
			return new ResponseEntity<>(productCardService.save(productCard), HttpStatus.CREATED);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}

	@PostMapping(path = "/update/product", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('write')")
	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<?> updateProduct(@RequestBody @Valid ProductCard productCard) throws Exception {
//		return new ResponseEntity<>(productCardService.update(productCard), HttpStatus.OK);
		try{
			return new ResponseEntity<>(productCardService.update(productCard), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}

	@GetMapping(path = "/listAllOpenCards", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('read')")
	public ResponseEntity<List<ProductCard>> listAllOpenCards() {
		return new ResponseEntity<List<ProductCard>>(productCardService.listAllOpenCards(), HttpStatus.OK);
	}

	@GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('read')")
	public ResponseEntity<List<ProductCard>> listAll() {
		return new ResponseEntity<List<ProductCard>>(productCardService.listAll(), HttpStatus.OK);
	}


	
}
