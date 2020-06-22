package br.com.comandadigital.doc;

import org.springframework.context.annotation.Bean;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

public class BaseSwaggerConfig {

	private final String basePackage;

	public BaseSwaggerConfig(String basePackage) {
		this.basePackage = basePackage;
	}

	private ApiInfo metaData() {
		return new ApiInfoBuilder()
				.title("Comanda digital - API")
				.description("Comanda digital para bares e restaurantes")
				.version("1.0")
				.contact((new Contact("David Rezende & Bryan Souza","https://www.uniceub.br","david.rezende@sempreceub.com" )))
				.license("None")
				.license("http://uniceub.br")
				.build();
	}
	@Bean
	public Docket api() {
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.apis(RequestHandlerSelectors.basePackage(basePackage))
				.build()
				.apiInfo(metaData());
	}
}
