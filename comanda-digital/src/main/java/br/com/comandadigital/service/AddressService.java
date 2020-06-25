package br.com.comandadigital.service;

import br.com.comandadigital.constants.log.AddressLog;
import br.com.comandadigital.model.Address;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class AddressService {

        public Address findByZipCode(String cep) {
            log.info(AddressLog.FIND_CEP_LOG);
            RestTemplate restTemplate = new RestTemplate();
            String url = "http://viacep.com.br/ws/"+cep+"/json/";
            Address address = restTemplate.getForObject(url, Address.class);
            return address;
        }
}
