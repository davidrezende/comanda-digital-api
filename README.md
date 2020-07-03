# Comanda Digital API

Trabalho de Conclusão de Curso - UNICEUB  06/2020



***Comando a ser executado junto ao Maven para construir o .jar

```mvn clean package```

```java -jar /home/api/comanda-digital.jar --spring.datasource.username=USERNAME --spring.datasource.password=PASSWORD  --comanda.origin-permitida=http://www.comandadigital.tk --server.port=8090```

## [+] Banco de dados

[SQL PARA GERAÇÃO DO BANCO DE DADOS](https://github.com/davidrezende/comanda-digital-api/blob/develop/database/sql_tables.sql)

[SQL PARA MASSA DE TESTE](https://github.com/davidrezende/comanda-digital-api/blob/develop/database/sql_tables.sql)

## [+] Objetivo

O objetivo com a Comanda Digital API é fornecer endpoints para manipular as principais entidades que estão envolvidas no fluxo trandicional de uma comanda em bares e restaurantes.

## [+] Documentação

[Versão Online SWAGGER Doc - Comanda Digital](http://142.93.114.227:8090/swagger-ui.html#/)

![png](img/swagger.png)


## [+] Deploy

Como solução para hospedar a aplicação na Internet. Hospedamos a API na plataforma Digital Ocean

![png](img/digitalocean.png)

