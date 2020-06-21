package br.com.comandadigital.model.vo;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import java.util.Collection;

@Getter
public class VoUserSystem extends User {

    private static final long serialVersionUID = 1L;

    private br.com.comandadigital.model.User user;

    public VoUserSystem(br.com.comandadigital.model.User user, Collection<? extends GrantedAuthority> authorities) {
        super(user.getEmail(), user.getPassword(), authorities);
        this.user = user;
    }



}
