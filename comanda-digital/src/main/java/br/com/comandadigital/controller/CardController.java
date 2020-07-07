package br.com.comandadigital.controller;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.Card;
import br.com.comandadigital.model.vo.VoCardClosedDate;
import br.com.comandadigital.model.vo.VoCardCpf;
import br.com.comandadigital.repository.CardRepository;
import br.com.comandadigital.service.CardService;
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

@RestController
@CrossOrigin
@RequestMapping("v1/card")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Comanda")
public class CardController {
    private final CardRepository cardRepository;
    private final CardService cardService;

    @GetMapping(path = "/listAll", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ApiOperation(value = "Listar todas as comandas", response = Card[].class)
    public ResponseEntity<List<Card>> listAll() {
        return new ResponseEntity<List<Card>>(cardService.listAll(), HttpStatus.OK);
    }

    @GetMapping(path = "/listAllOpenCards/store/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Listar todas as comandas abertas por ID do Estabelecimento", response = Card[].class)
    @ResponseBody
    public ResponseEntity<List<Card>> listAllOpenCards(@PathVariable long idStore) {
        return new ResponseEntity<List<Card>>(cardService.listAllOpenCards(idStore), HttpStatus.OK);
    }

    @PostMapping(path = "/save", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('write')")
    @ApiOperation(value = "Salvar nova comanda", response = Card.class)
    public ResponseEntity<?> save(@RequestBody @Valid Card card) {
        try{
            return new ResponseEntity<>(cardService.save(card), HttpStatus.CREATED);
        }catch(DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping(path = "/update", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('write')")//TODO: realizar update em card
    @ApiOperation(value = "Alterar comanda", response = Card.class)
    public ResponseEntity<?> update(@RequestBody @Valid Card card) {
        try{
            return new ResponseEntity<>(cardService.update(card), HttpStatus.OK);
        }catch(DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping(path = "/closeCard", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('write')")
    @ApiOperation(value = "Fechar comanda", response = Card.class)
    public ResponseEntity<?> updateAndCloseCard(@RequestBody @Valid Card card) throws Exception {
        try{
            return new ResponseEntity<>(cardService.updateAndCloseCard(card), HttpStatus.OK);
        }catch(DataIntegrityViolationException e) {
            ErrorResponse errorResponse = RestExceptionHandler.getConstraintErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/findByCPF", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar comandas por documento", response = Card[].class)
    public ResponseEntity<List<Card>> findByCPF(VoCardCpf vo){
        log.info(vo.toString());
        return new ResponseEntity<>(cardService.findByCpf(vo), HttpStatus.OK);
    }

    @GetMapping(path = "/find/store/{idStore}/card/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar comanda por ID do Estabelecimento e ID da Comanda", response = Card.class)
    @ResponseBody
    public ResponseEntity<Card> findByIdStoreAndIdCard(@PathVariable long idStore, @PathVariable long idCard){
        return new ResponseEntity<>(cardService.findByIdStoreAndIdCard(idStore, idCard), HttpStatus.OK);
    }

    @GetMapping(path = "/find/card/{idCard}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') or hasAuthority('ROLE_CLIENTE') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar comanda por ID da Comanda", response = Card.class)
    @ResponseBody
    public ResponseEntity<Card> findByIdCard(@PathVariable long idCard){
        return new ResponseEntity<>(cardService.findByIdCard(idCard), HttpStatus.OK);
    }

    @GetMapping(path = "/find/last/open/user/{idUser}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_CLIENTE') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar última comanda aberta por ID do Usuário", response = Card.class)
    @ResponseBody
    public ResponseEntity<Card> findOpenCardsByIdUser(@PathVariable long idUser){
        return new ResponseEntity<>(cardService.findLastOpenCardByIdUser(idUser), HttpStatus.OK);
    }

    @GetMapping(path = "/find/closed/user/{idUser}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_CLIENTE') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar comandas fechadas por ID do Usuário", response = Card[].class)
    @ResponseBody
    public ResponseEntity<List<Card>>  findClosedCardsByIdUser(@PathVariable long idUser){
        return new ResponseEntity<>(cardService.findClosedCardsByIdUser(idUser), HttpStatus.OK);
    }

    @PostMapping(path = "/find/closedCardsByStoreAndDate", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar lista de comandas fechadas por ID do Estabelecimento e intervalo de datas de abertura", response = Card[].class)
    public ResponseEntity<List<Card>>  findClosedCardsByStoreAndBeginDate(@RequestBody @Valid VoCardClosedDate vo){
        return new ResponseEntity<>(cardService.findClosedCardsByStoreAndBeginDate(vo), HttpStatus.OK);
    }

    @GetMapping(path = "/find/store/{idStore}/tableNumber/{tableNumber}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ESTABELECIMENTO') and  #oauth2.hasScope('read')")
    @ApiOperation(value = "Pesquisar lista de comandas por ID do Estabelecimento e número da mesa", response = Card[].class)
    @ResponseBody
    public ResponseEntity<List<Card>> findByIdStoreAndTableNumberAndOpenCards(@PathVariable long idStore, @PathVariable int tableNumber){
        return new ResponseEntity<>(cardService.findByIdStoreAndTableNumberAndOpenCards(idStore, tableNumber), HttpStatus.OK);
    }


}