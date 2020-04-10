package br.com.comandadigital.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.comandadigital.model.Product;
import br.com.comandadigital.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@RestController
@RequestMapping("v1/product")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
//@Api(value = "Product endpoints")
public class ProductController {

	private final ProductService productService;
	
	@GetMapping(path = "/find/products/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	private ResponseEntity<?> listByStore( @PathVariable Long idStore){		
		return new ResponseEntity<>(productService.listByStore(idStore), HttpStatus.OK);
	}
	
	@GetMapping(path = "/find/productStore/{name}/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	private ResponseEntity<?> listByNameAndStore(@PathVariable String name, @PathVariable Long idStore){		
		return new ResponseEntity<>( productService.listByNameAndStore(name, idStore), HttpStatus.OK);
	}
	
//	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//	@Transactional(rollbackFor =  Exception.class)
//	public ResponseEntity<Product> save(@RequestBody Product product){
//		return new ResponseEntity<>(productService.save(product), HttpStatus.CREATED);
//	}
//	
//	@PostMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//	@Transactional(rollbackFor =  Exception.class)
//	public ResponseEntity<?> update(@RequestBody Product product){
//		return new ResponseEntity<>(productService.update(product), HttpStatus.CREATED);
//	}
//	
}
