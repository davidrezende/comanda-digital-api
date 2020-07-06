package br.com.comandadigital.controller;

import br.com.comandadigital.error.ErrorResponse;
import br.com.comandadigital.error.RestExceptionHandler;
import br.com.comandadigital.model.User;
import br.com.comandadigital.model.vo.*;
import br.com.comandadigital.service.ReportService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@CrossOrigin
@RestController
@RequestMapping("v1/report")
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Api(value = "Endpoints de Relatório Personalizados")
public class ReportController {

    @Autowired
    private final ReportService reportService;

    @PostMapping(path = "/reportTopSalesByStore", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('read')")
    @ApiOperation(value = "Relatório de comidas ou bebidas mais vendidas por estabelecimento e/ou intervalo de data", response = VoRetReportTopSellingProduct.class)
    public ResponseEntity<?> reportTopSalesFoodByStoreAndDate(@RequestBody @Valid VoReportTopSellingProductDate voReport) {
        try {
            return new ResponseEntity<>(reportService.getReportTopSellingList(voReport), HttpStatus.OK);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }


    @GetMapping(path = "/reportBasicInfo/store/{idStore}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('read')")
    @ApiOperation(value = "Relatório das informações básicas diárias por estabelecimento", response = VoRetReportBasicInfo.class)
    @ResponseBody
    public ResponseEntity<?> reportBasicInfo(@PathVariable Long idStore) {
        try {
            return new ResponseEntity<>(reportService.getReportBasicInfo(idStore), HttpStatus.OK);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/reportBillingInfoByStore", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @PreAuthorize("hasAuthority('ROLE_ADM') or hasAuthority('ROLE_ESTABELECIMENTO') and #oauth2.hasScope('read')")
    @ApiOperation(value = "Relatório de faturamento de comidas e bebidas do estabelecimento por intervalo de data ou do último ano ", response = VoRetBilling.class)
    public ResponseEntity<?> reportBillingInfo(@RequestBody @Valid  VoReportBillingDate voReportBillingDate) {
        try {
            return new ResponseEntity<>(reportService.reportBillingInfo(voReportBillingDate), HttpStatus.OK);
        } catch (Exception e) {
            ErrorResponse errorResponse = RestExceptionHandler.getExceptionsErrors(e);
            return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
        }
    }

}