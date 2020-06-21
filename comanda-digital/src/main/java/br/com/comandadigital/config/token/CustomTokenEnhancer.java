package br.com.comandadigital.config.token;

import br.com.comandadigital.model.Store;
import br.com.comandadigital.model.vo.VoUserSystem;
import br.com.comandadigital.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class CustomTokenEnhancer implements TokenEnhancer {

    @Autowired
    public StoreService  storeService;

    @Override
    public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {
        VoUserSystem userSystem = (VoUserSystem) authentication.getPrincipal();
        Map<String, Object> addInfo = new HashMap<>();
        Optional<Store> storeByUser = storeService.findByUser(userSystem.getUser().getIdUser());

        addInfo.put("idUser", userSystem.getUser().getIdUser());
        addInfo.put("name", userSystem.getUser().getName());
        addInfo.put("idStore", storeByUser.map(Store::getIdStore).orElse(null));

        ((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(addInfo);
        return accessToken;
    }

}