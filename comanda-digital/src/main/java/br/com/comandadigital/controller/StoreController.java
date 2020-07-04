package br.com.comandadigital.controller;


import br.com.comandadigital.error.ErrorObject;
import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Store;
import br.com.comandadigital.model.User;
import br.com.comandadigital.repository.StoreRepository;
import br.com.comandadigital.service.StoreService;
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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
@CrossOrigin
@RestController
@RequestMapping("v1/store")
@Slf4j
@Api(value = "Endpoints de Estabelecimento")
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class StoreController {
    private final StoreRepository storeRepository;
    private final StoreService storeService;

    @GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar todos os estabelecimentos", response = Store[].class)
    public ResponseEntity<List<Store>> listAll() {
        return new ResponseEntity<List<Store>>(storeService.list(), HttpStatus.OK);
    }

    @PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    //@Transactional(rollbackFor = Exception.class)
    @ApiOperation(value = "Salvar novo estabelecimento", response = Store.class)
    @PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
    public ResponseEntity<?> save(@RequestBody @Valid Store store) {
        try{
            return new ResponseEntity<>(storeService.save(store), HttpStatus.CREATED);
        }catch(DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ApiOperation(value = "Alterar estabelecimento", response = Store.class)
    @PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
    @Transactional(rollbackFor = Exception.class)
    public ResponseEntity<?> update(@RequestBody @Valid Store store) {
//        try{
            return new ResponseEntity<>(storeService.update(store), HttpStatus.OK);
//        }catch(DataIntegrityViolationException e) {
//            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
//            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
//        }
    }


    @PutMapping(path = "/enable/disable", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ApiOperation(value = "Ativar ou desativar estabelecimento", response = Store.class)
    @PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
    @Transactional(rollbackFor = Exception.class)
    public ResponseEntity<?> enableDisable(@RequestBody @Valid Store store) throws Exception {
        try{
            return new ResponseEntity<>(storeService.enableDisable(store), HttpStatus.OK);
        }catch(DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }catch(Exception e){
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/find/name/{name}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar por nome do estabelecimento", response = Store[].class)
    @ResponseBody
    public ResponseEntity<?> findByNameLike(@PathVariable String name) {
//        return new ResponseEntity<>(storeRepository.findByNameContainingAllIgnoreCaseOrderByRegistrationDateDesc(name), HttpStatus.OK);
        return new ResponseEntity<>(storeService.findByName(name), HttpStatus.OK);
    }

//    @GetMapping(path = "/find/cnpj/{cnpj}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//    @PreAuthorize("hasAuthority('ROLE_ADM') and #oauth2.hasScope('read')")
//    @ApiOperation(value = "Pesquisar estabelecimento por documento", response = Store.class)
//    @ResponseBody
//    public ResponseEntity<?> findByCnpjLike(@Valid String cnpj) {
//        return new ResponseEntity<>(storeRepository.findByCnpjLike(cnpj), HttpStatus.OK);
//    }
}