package br.com.comandadigital;

import br.com.comandadigital.config.property.ComandaDigitalApiProperty;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@EnableConfigurationProperties(ComandaDigitalApiProperty.class)
public class ComandaDigitalApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComandaDigitalApplication.class, args);
    }

}
