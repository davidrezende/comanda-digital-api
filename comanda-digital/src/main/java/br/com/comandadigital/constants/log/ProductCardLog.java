package br.com.comandadigital.constants.log;

public final class ProductCardLog {
    public static final String SAVE_LOG = "Salvando novo produto na lista de pedidos da comanda";
    public static final String UPDATE_LOG = "Alterando produto na lista de pedidos da comanda";
    public static final String DELETE_LOG = "Deletando produto na lista de pedidos da comanda";
    public static final String LIST_KITCHEN_LOG = "Listando todos produtos enviados a cozinha nao concluidos por Id do Estabelecimento";
    public static final String UPDATE_STATUS_LOG = "Alterando status do preparo do produto para fazendo ou concluído";
    public static final String UPDATE_STATUS_ROLLBACK_LOG = "Alterando status do preparo do produto para aberto";
    public static final String LIST_ALL_PRODUCTS_IN_CARD_LOG = "Listando todos os produtos adicionados na comanda aberta";
    public static final String LIST_ALL_PRODUCTS_IN_OPEN_CARD_LOG = "Listando todos os produtos adicionados na comanda";
    public static final String DELETE_BY_ID_LOG = "Deletando produto da comanda por id do produto comanda" ;
    public static final String LIST_BY_ID_CARD_LOG = "Listando produtos adicionados na comanda pelo id da comanda";
}
