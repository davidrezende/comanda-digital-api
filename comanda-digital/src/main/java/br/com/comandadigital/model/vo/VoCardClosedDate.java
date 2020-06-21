package br.com.comandadigital.model.vo;

import lombok.*;

import java.util.Date;

@Data
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class VoCardClosedDate {
    private long idUser;
    private Date firstDate;
    private Date secondDate;
}
