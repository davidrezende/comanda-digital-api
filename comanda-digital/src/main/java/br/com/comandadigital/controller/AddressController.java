package br.com.comandadigital.controller;

import br.com.comandadigital.model.Address;
import br.com.comandadigital.service.AddressService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("v1/address")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Endereço")
public class AddressController {

    private final AddressService addressService;

    @GetMapping(path = "/find/zipCode/{zipCode}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ApiOperation(value = "Buscar CEP através da APi VIACEP Correios", response = Address.class)
    @ResponseBody
    public Address findByZipCode(@PathVariable String zipCode) {
        return addressService.findByZipCode(zipCode);
    }

}
