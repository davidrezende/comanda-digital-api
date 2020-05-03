package br.com.comandadigital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
@CrossOrigin
@RestController
@RequestMapping("v1/productCard")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ProductCardController {

	
	private final ProductCardService productCardService;
	
	@GetMapping(path = "/find/productCard/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE )
	@ResponseBody
	public ResponseEntity<?> listByCard(@PathVariable Long idCard){
		return new ResponseEntity<>(productCardService.listByCard(idCard), HttpStatus.OK);
	}
	
	
	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<ProductCard> save(@RequestBody ProductCard productCard){
		return new ResponseEntity<>(productCardService.save(productCard), HttpStatus.CREATED);
	}
	
	@PostMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<ProductCard> update(@RequestBody ProductCard productCard){
		return new ResponseEntity<>(productCardService.save(productCard), HttpStatus.CREATED);
	}
	
	
}
