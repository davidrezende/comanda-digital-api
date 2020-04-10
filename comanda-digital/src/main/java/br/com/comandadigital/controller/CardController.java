package br.com.comandadigital.controller;


import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.Store;
import br.com.comandadigital.repository.CardRepository;
import br.com.comandadigital.repository.StoreRepository;
import br.com.comandadigital.service.CardService;
import br.com.comandadigital.service.StoreService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("v1/card")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class CardController {
    private final CardRepository cardRepository;
    private final CardService cardService;

    @GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<Card>> listAll() {
        return new ResponseEntity<List<Card>>(cardService.list(), HttpStatus.OK);
    }

    @PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @Transactional(rollbackFor = Exception.class)
    public ResponseEntity<Card> save(@RequestBody Card card) {
        return new ResponseEntity<>(cardService.save(card), HttpStatus.CREATED);
    }

    @PostMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @Transactional(rollbackFor = Exception.class)
    public ResponseEntity<?> update(@RequestBody Card card) {
        return new ResponseEntity<>(cardService.update(card), HttpStatus.CREATED);
    }

}