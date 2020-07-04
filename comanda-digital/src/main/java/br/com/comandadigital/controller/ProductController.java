package br.com.comandadigital.controller;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Product;
import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.ProductRepository;
import br.com.comandadigital.repository.StoreRepository;
import br.com.comandadigital.service.ProductService;
import br.com.comandadigital.service.StoreService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("v1/product")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Produto")
public class ProductController {
	private final ProductService productService;
	
	@GetMapping(path = "/find/store/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and  #oauth2.hasScope('read')")
	@ApiOperation(value = "Pesquisar produtos por ID do Estabelecimento", response = Product[].class)
	@ResponseBody
	public ResponseEntity<?> listByStore( @PathVariable Long idStore){
		return new ResponseEntity<>(productService.listByStore(idStore), HttpStatus.OK);
	}

	//servico a ser utilizado no cardapio
	@GetMapping(path = "/menu/find/store/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ApiOperation(value = "Pesquisar produtos por ID do Estabelecimento", response = Product[].class)
	@ResponseBody
	public ResponseEntity<?> listMenuByStore( @PathVariable Long idStore){
		return new ResponseEntity<>(productService.listMenuByStore(idStore), HttpStatus.OK);
	}
	
	@GetMapping(path = "/find/name/{name}/store/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and  #oauth2.hasScope('read')")
	@ApiOperation(value = "Procurar produtos por nome e ID do Estabelecimento", response = Product[].class)
	@ResponseBody
	public ResponseEntity<?> listByNameAndStore(@PathVariable String name, @PathVariable Long idStore){
		return new ResponseEntity<>( productService.listByNameAndStore(name, idStore), HttpStatus.OK);
	}
	
	@PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('write')")
	@ApiOperation(value = "Salvar novo produto", response = Product.class)
//	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<?> save(@RequestBody @Valid Product product){
		try{
			return new ResponseEntity<>(productService.save(product), HttpStatus.CREATED);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}

	@PutMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('write')")
	@ApiOperation(value = "Alterar produto", response = Product.class)
	//@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<?> update(@RequestBody @Valid Product product){
		try{
			return new ResponseEntity<>(productService.update(product), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}

	@PutMapping(path = "/disable", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('write')")
	@ApiOperation(value = "Desabilitar produto", response = Product.class)
//	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<?> disable(@RequestBody @Valid Product product) throws Exception {
		try{
			return new ResponseEntity<>(productService.disable(product), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}

	@PutMapping(path = "/delete", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ApiOperation(value = "Deletar produto", response = Product.class)
//	@Transactional(rollbackFor =  Exception.class)
	public ResponseEntity<?> delete(@RequestBody @Valid Product product){
		try{
			return new ResponseEntity<>(productService.delete(product), HttpStatus.OK);
		}catch(DataIntegrityViolationException e) {
			ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
	}

}
