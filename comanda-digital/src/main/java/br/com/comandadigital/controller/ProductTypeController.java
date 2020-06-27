package br.com.comandadigital.controller;

import br.com.comandadigital.constants.log.ProductLog;
import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.ProductType;
import br.com.comandadigital.model.User;
import br.com.comandadigital.repository.ProductTypeRepository;
import br.com.comandadigital.repository.UserRepository;
import br.com.comandadigital.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("v1/productType")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Tipo de Produto")
public class ProductTypeController {

	private final ProductTypeRepository repository;

	@GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('read')")
	@ApiOperation(value = "Listar todos os tipos de produto", response = ProductType[].class)
	public ResponseEntity<List<ProductType>> listAll(){
		log.info(ProductLog.PRODUCT_TYPE_LIST_ALL);
		return new ResponseEntity<>(repository.findAll(), HttpStatus.OK);
	}
	


}