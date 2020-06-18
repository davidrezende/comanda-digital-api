package br.com.comandadigital.controller;

import br.com.comandadigital.model.Card;
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

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("v1/productCard")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ProductCardController {
	private final ProductCardService productCardService;

	@GetMapping(path = "/find/card/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE )
	@ResponseBody
	public ResponseEntity<?> listByCard(@PathVariable Long idCard){
		return new ResponseEntity<>(productCardService.listByCard(idCard), HttpStatus.OK);
	}

	@PostMapping(path = "/add/product", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<ProductCard> addProduct(@RequestBody ProductCard productCard) throws Exception {
		return new ResponseEntity<>(productCardService.save(productCard), HttpStatus.CREATED);
	}

	@PostMapping(path = "/update/product", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<ProductCard> updateProduct(@RequestBody ProductCard productCard) throws Exception {
		return new ResponseEntity<>(productCardService.update(productCard), HttpStatus.OK);
	}

	@GetMapping(path = "/listAllOpenCards", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ProductCard>> listAllOpenCards() {
		return new ResponseEntity<List<ProductCard>>(productCardService.listAllOpenCards(), HttpStatus.OK);
	}

	@GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ProductCard>> listAll() {
		return new ResponseEntity<List<ProductCard>>(productCardService.listAll(), HttpStatus.OK);
	}


	
}
