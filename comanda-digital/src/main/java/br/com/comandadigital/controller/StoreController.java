package br.com.comandadigital.controller;


import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.StoreRepository;
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
@RequestMapping("v1/store")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class StoreController {
    private final StoreRepository storeRepository;
    private final StoreService storeService;

    @GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<Store>> listAll() {
        return new ResponseEntity<List<Store>>(storeService.list(), HttpStatus.OK);
    }

    @PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @Transactional(rollbackFor = Exception.class)
    public ResponseEntity<Store> save(@RequestBody Store store) {
        return new ResponseEntity<>(storeService.save(store), HttpStatus.CREATED);
    }

    @PostMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @Transactional(rollbackFor = Exception.class)
    public ResponseEntity<?> update(@RequestBody Store store) {
        return new ResponseEntity<>(storeService.update(store), HttpStatus.CREATED);
    }

    @GetMapping(path = "/find/name/{name}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<?> findByNameLike(@PathVariable String name) {
        return new ResponseEntity<>(storeRepository.findByNameLike(name), HttpStatus.CREATED);
    }

    @GetMapping(path = "/find/cnpj/{cnpj}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<?> findByCnpjLike(@PathVariable String cnpj) {
        return new ResponseEntity<>(storeRepository.findByCnpjLike(cnpj), HttpStatus.CREATED);
    }
}