package br.com.comandadigital.service;


import java.util.Date;
import java.util.List;
import java.util.Optional;

import br.com.comandadigital.constants.AcessRoles;
import br.com.comandadigital.constants.log.UserLog;
import br.com.comandadigital.model.Permission;
import br.com.comandadigital.model.vo.VoUserChangePassword;
import br.com.comandadigital.security.util.PasswordGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.User;
import br.com.comandadigital.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class UserService {

    private final UserRepository userRepository;
    private final PermissionService permissionService;


    public List<User> listAll() {
        log.info(UserLog.LIST_LOG);
        return userRepository.findAll();
    }

    public List<User> listAllUsersWithoutStoreAndPermissionUserStore() throws Exception {
        log.info(UserLog.LIST_WITHOUT_STORE_AND_PERMISSION_ONLY_USERSTORE);
        return userRepository.findByUserPermissionsByRoleStoreAndWithoutStore(AcessRoles.ROLE_ACESS_USER_STORE);
    }

    public List<User> listAllUsersWithPermissionUserStore() throws Exception {
        log.info(UserLog.LIST_PERMISSION_USERSTORE);
        return userRepository.findByUserPermissions_DescriptionContainingAllIgnoreCase(AcessRoles.ROLE_ACESS_USER_STORE);
    }

    public List<User> listAllUsersByNameWithStoreAndPermissionUserStore(String name) throws Exception {
        log.info(UserLog.LIST_NAME_USER_AND_PERMISSION_USERSTORE);
        return userRepository.findByNameContainingAllIgnoreCaseAndUserPermissions_Description(name, AcessRoles.ROLE_ACESS_USER_STORE);
    }


    public List<User> list() {
        log.info(UserLog.LIST_LOG);
        return userRepository.findAll();
    }

    public User save(User user) throws Exception {
        log.info(UserLog.SAVE_LOG);
        PasswordGenerator passwordGenerator = new PasswordGenerator();
        user.setDtRegistration(new Date());
        user.setPassword(passwordGenerator.encryptPassword(user.getPassword()));
        if (user.getUserPermissions() == null || user.getUserPermissions().isEmpty()) {
            //Caso nao seja passado a permissao ao inserir o usuario, sera inserida a permissao default de cliente
            Optional<List<Permission>> listPermissions = permissionService.findByRoleDescription(AcessRoles.ROLE_ACESS_USER);
            if (listPermissions.isPresent()) {
                user.setUserPermissions(listPermissions.get());
            } else {
                throw new Exception("Nao foram encontradas roles para inserir no usuario");
            }
        }
        return userRepository.save(user);
    }

    public User update(User user) throws Exception {
        log.info(UserLog.UPDATE_LOG);
        PasswordGenerator securityEncoder = new PasswordGenerator();
        Optional<User> userFound = userRepository.findByIdUser(user.getIdUser());
        if (userFound.isPresent()) {
            if (securityEncoder.comparePasswords(user.getPassword(), userFound.get().getPassword())) {
                user.setPassword(userFound.get().getPassword());
                return userRepository.save(user);
            } else {
                throw new Exception("Senha incorreta");
            }
        } else {
            throw new Exception("Usuario nao encontrado");
        }
    }

    public User updateAdmin(User user) throws Exception {
        log.info(UserLog.ADMIN_UPDATE_LOG);
        Optional<User> userFound = userRepository.findByIdUser(user.getIdUser());
        if (userFound.isPresent()) {
            user.setPassword(userFound.get().getPassword());
            return userRepository.save(user);
        } else {
            throw new Exception("Usuario nao encontrado");
        }
    }


    public User changePassword(VoUserChangePassword userChangePassword) throws Exception {
        log.info(UserLog.CHANGE_PASSWORD_LOG);
        PasswordGenerator securityEncoder = new PasswordGenerator();
        Optional<User> userFound = userRepository.findByIdUser(userChangePassword.getIdUser());

        if (userFound.isPresent()) {
            if (securityEncoder.comparePasswords(userChangePassword.getPassword(), userFound.get().getPassword())) {
                userFound.get().setPassword(securityEncoder.encryptPassword(userChangePassword.getNewPassword()));
                //userFound.get().setDtRegistration(new Date());:TODO acrescentar campo de ultima atualizacao
                return userRepository.save(userFound.get());
            } else {
                throw new Exception("Senha incorreta");
            }
        } else {
            throw new Exception("Usuario nao encontrado");
        }
    }


}
