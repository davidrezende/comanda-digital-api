package br.com.comandadigital.model;

import io.swagger.annotations.ApiModelProperty;
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
@Table(name = "tb_permission")
public class Permission implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 2966895294948892097L;

    @ApiModelProperty(value = "Código da permissão")
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long idPermission;

    @ApiModelProperty(value = "Descrição da permissão")
    @NotBlank(message = "Descricao de permissão nao informada")
    @Column(nullable = false)
    private String description;

}
