package br.com.comandadigital.controller;

import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.vo.VoCardCpf;
import br.com.comandadigital.repository.CardRepository;
import br.com.comandadigital.service.CardService;
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
@CrossOrigin
@RequestMapping("v1/card")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class CardController {
    private final CardRepository cardRepository;
    private final CardService cardService;

    @GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<Card>> listAll() {
        return new ResponseEntity<List<Card>>(cardService.listAll(), HttpStatus.OK);
    }

    @GetMapping(path = "/listAllOpenCards", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<Card>> listAllOpenCards() {
        return new ResponseEntity<List<Card>>(cardService.listAllOpenCards(), HttpStatus.OK);
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

    @PostMapping(path = "/findByCPF", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<Card>> findByCPF(@RequestBody VoCardCpf cpf){
        return new ResponseEntity<List<Card>>(cardService.findByCpf(cpf), HttpStatus.OK);
    }
}