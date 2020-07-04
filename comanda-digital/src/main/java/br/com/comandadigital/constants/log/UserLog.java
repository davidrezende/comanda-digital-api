package br.com.comandadigital.constants.log;

public final class UserLog {

    public static final String SAVE_LOG                     =      "Salvando usuario";
    public static final String UPDATE_LOG                   =      "Alterando usuario";
    public static final String ADMIN_UPDATE_LOG             =      "Administrador alterando usuario";
    public static final String CHANGE_PASSWORD_LOG          =      "Alterando senha do usuario";
    public static final String LIST_LOG                     =      "Listando todos os usuarios";
    public static final String FIND_USER_BY_PASSWORD_LOG    =      "Validando senha do usuario por ID do Usuario";
    public static final String LIST_WITHOUT_STORE_AND_PERMISSION_ONLY_USERSTORE =      "Listando todos os usuarios que nao possuam um estabelecimento e tenham permissao de estabelecimento";
    public static final String LIST_PERMISSION_USERSTORE =      "Listando todos os usuarios que tenham permissao de estabelecimento";
    public static final String LIST_NAME_USER_AND_PERMISSION_USERSTORE =    "Listando todos os usuarios por nome que tenham permissao de estabelecimento";
}
