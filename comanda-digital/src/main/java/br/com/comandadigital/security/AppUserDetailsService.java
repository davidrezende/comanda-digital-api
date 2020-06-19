package br.com.comandadigital.security;

import br.com.comandadigital.repository.UserRepository;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;


@Service
public class AppUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Optional<br.com.comandadigital.model.User> userOptional = userRepository.findByEmail(email);
        br.com.comandadigital.model.User user = userOptional.orElseThrow(() -> new UsernameNotFoundException("Usuario e/ou senha incorretos"));
        return new User(email, user.getPassword(), getPermissions(user) );
    }

    private Collection<? extends GrantedAuthority> getPermissions(br.com.comandadigital.model.User user) {
       //System.out.println("Pegando permissoes -> VoUsuario : " + user.toString());
        Set<SimpleGrantedAuthority> authorities = new HashSet<>();
        user.getUserPermissions().forEach(p -> authorities.add(new SimpleGrantedAuthority(p.getDescription().toUpperCase())));
        return authorities;
    }
}
