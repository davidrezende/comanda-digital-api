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

    @GetMapping(path = "/listAllOpenCards/store/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<List<Card>> listAllOpenCards(@PathVariable long idStore) {
        return new ResponseEntity<List<Card>>(cardService.listAllOpenCards(idStore), HttpStatus.OK);
    }

/*    @GetMapping(path = "/findOpenCardsByStoreId/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<Card> findOpenCardsByStoreId(@PathVariable long idStore) {
        return new ResponseEntity<Card>(cardService.findOpenCardsByStoreId(idStore), HttpStatus.OK);
    }*/

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

    @PostMapping(path = "/closeCard", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @Transactional(rollbackFor = Exception.class)
    public ResponseEntity<?> updateAndCloseCard(@RequestBody Card card) throws Exception {
        return new ResponseEntity<>(cardService.updateAndCloseCard(card), HttpStatus.CREATED);
    }

    @PostMapping(path = "/findByCPF", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<Card>> findByCPF(@RequestBody VoCardCpf cpf){
        return new ResponseEntity<List<Card>>(cardService.findByCpf(cpf), HttpStatus.OK);
    }

    @GetMapping(path = "/find/store/{idStore}/card/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<Card> findByIdStoreAndIdCard(@PathVariable long idStore, @PathVariable long idCard){
        return new ResponseEntity<Card>(cardService.findByIdStoreAndIdCard(idStore, idCard), HttpStatus.OK);
    }



}