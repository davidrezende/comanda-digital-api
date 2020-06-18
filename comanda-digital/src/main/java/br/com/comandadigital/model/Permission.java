package br.com.comandadigital.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_permission")
public class Permission implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 2966895294948892097L;

	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long idPermission;
    @NotBlank
    @Column(nullable = false)
    private String description;
    
}
