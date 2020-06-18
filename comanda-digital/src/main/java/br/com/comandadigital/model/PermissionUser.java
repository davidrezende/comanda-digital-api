package br.com.comandadigital.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.List;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_permission_user")
public class PermissionUser implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 2966895294948892097L;

	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long id;
//
//    @OneToMany(cascade = {CascadeType.MERGE}, fetch = FetchType.LAZY)
//    @JoinColumn(name = "id_user")
//	private List<User> idUser;
//
//    @OneToMany(cascade = {CascadeType.MERGE}, fetch = FetchType.LAZY)
//    @JoinColumn(name = "id_permission")
//	private List<Permission> idPermission;
    
}
