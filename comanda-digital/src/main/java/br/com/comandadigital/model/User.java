package br.com.comandadigital.model;

import java.util.List;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import com.fasterxml.jackson.annotation.JsonIgnore;
import br.com.comandadigital.constants.entity.UserValidation;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.Value;
import org.hibernate.validator.constraints.br.CPF;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_user")
public class User implements Serializable {

	
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 2966895294948892097L;

    @ApiModelProperty(value = "Código do usuário")
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long idUser;

    @ApiModelProperty(value = "Nome do usuário")
    @NotBlank(message = UserValidation.NAME_VALIDATION_MESSAGE)
    @Size( min = 5, max = 100, message = UserValidation.NAME_VALIDATION_MESSAGE)
    private String name;

    @ApiModelProperty(value = "Email do usuário")
    @NotBlank(message = UserValidation.EMAIL_VALIDATION_MESSAGE)
    @ToString.Exclude
    @Email( message = UserValidation.EMAIL_VALIDATION_MESSAGE)
    @Column(unique = true)
    private String email;

    @ApiModelProperty(value = "Número do documento CPF do usuário")
    @ToString.Exclude
    @CPF(message = UserValidation.CPF_VALIDATION_MESSAGE)
    @Column(unique = true)
    private String cpf;

    @ApiModelProperty(value = "Senha do usuário")
    @ToString.Exclude
    @NotBlank(message = UserValidation.PASSWORD_VALIDATION_MESSAGE)
    @Size( min = 8, max = 255, message = UserValidation.PASSWORD_VALIDATION_MESSAGE)
    private String password;

    @ApiModelProperty(value = "Data de registro do usuário")
    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(updatable = false)
    private Date dtRegistration;

    @JsonIgnore
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Store> stores;

    @JsonIgnore
    @OneToMany(mappedBy = "user" ,cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
    private List<Card> cards;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "tb_user_permission",
            joinColumns = @JoinColumn(name = "id_user"),
            inverseJoinColumns = @JoinColumn(name = "id_permission"))
    private List<Permission> userPermissions;

}
