package br.com.comandadigital.controller;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.Product;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping(path = "/find/card/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Procurar produtos na comanda por ID da Comanda", response = ProductCard[].class)
    @ResponseBody
    public ResponseEntity<?> listByCard(@PathVariable Long idCard) {
        return new ResponseEntity<>(productCardService.listByCard(idCard), HttpStatus.OK);
    }

    @PostMapping(path = "/add/product", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('write')")
    @ApiOperation(value = "Adicionar produto na comanda", response = ProductCard.class)
    public ResponseEntity<?> addProduct(@RequestBody @Valid ProductCard productCard) throws Exception {
        try {
            return new ResponseEntity<>(productCardService.save(productCard), HttpStatus.CREATED);
        } catch (DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping(path = "/update/product", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('write')")
    @ApiOperation(value = "Alterar produto na comanda", response = ProductCard.class)
    public ResponseEntity<?> updateProduct(@RequestBody @Valid ProductCard productCard) throws Exception {
        try {
            return new ResponseEntity<>(productCardService.update(productCard), HttpStatus.OK);
        } catch (DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping(path = "/update/status", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('write')")
    @ApiOperation(value = "Alterar status do preparo do produto na comanda para fazendo e concluído", response = ProductCard.class)
    public ResponseEntity<?> updateStatusProductCard(@RequestBody @Valid ProductCard productCard) throws Exception {
        try {
            return new ResponseEntity<>(productCardService.updateStatus(productCard), HttpStatus.OK);
        } catch (DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping(path = "/update/status/rollBack", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('write')")
    @ApiOperation(value = "Alterar status do preparo do produto na comanda para aberto", response = ProductCard.class)
    public ResponseEntity<?> updateStatusProductCardRollBack(@RequestBody @Valid ProductCard productCard) throws Exception {
        try {
            return new ResponseEntity<>(productCardService.updateStatusRollBack(productCard), HttpStatus.OK);
        } catch (DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/listAllOpenCards", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Listar todos os produtos nas comandas abertas", response = ProductCard[].class)
    public ResponseEntity<List<ProductCard>> listAllOpenCards() {
        return new ResponseEntity<List<ProductCard>>(productCardService.listAllOpenCards(), HttpStatus.OK);
    }

    @GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Listar todos os produtos nas comandas", response = ProductCard[].class)
    public ResponseEntity<List<ProductCard>> listAll() {
        return new ResponseEntity<List<ProductCard>>(productCardService.listAll(), HttpStatus.OK);
    }

    @GetMapping(path = "/listProductCardToKitchenByStore/store/id/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO')  and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Listar todos os produtos abertos de comandas abertas por Id do Estabelecimento", response = ProductCard[].class)
    @ResponseBody
    public ResponseEntity<List<ProductCard>> listProductCardToKitchen(@PathVariable Long idStore) {
        return new ResponseEntity<>(productCardService.listAllProductCardStatusAvailableInOpenCardAndProductTypeIsFoodAndIdStore(idStore), HttpStatus.OK);
    }

}
