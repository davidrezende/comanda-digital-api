package br.com.comandadigital.controller;

import br.com.comandadigital.model.Product;
import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.ProductRepository;
import br.com.comandadigital.repository.StoreRepository;
import br.com.comandadigital.service.ProductService;
import br.com.comandadigital.service.StoreService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


@RestController
@RequestMapping("v1/product")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class ProductController {
    private final ProductRepository productRepository;
	private final ProductService productService;
	
	@GetMapping(path = "/find/products/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<?> listByStore( @PathVariable Long idStore){
		return new ResponseEntity<>(productService.listByStore(idStore), HttpStatus.OK);
	}
	
	@GetMapping(path = "/find/productStore/{name}/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<?> listByNameAndStore(@PathVariable String name, @PathVariable Long idStore){
		return new ResponseEntity<>( productService.listByNameAndStore(name, idStore), HttpStatus.OK);
	}
	
	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<Product> save(@RequestBody Product product){
		return new ResponseEntity<>(productService.save(product), HttpStatus.CREATED);
	}

	@PostMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<?> update(@RequestBody Product product){
		return new ResponseEntity<>(productService.update(product), HttpStatus.CREATED);
	}

}
