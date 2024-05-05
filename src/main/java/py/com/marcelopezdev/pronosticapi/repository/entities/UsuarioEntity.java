package py.com.marcelopezdev.pronosticapi.repository.entities;

import jakarta.persistence.*;
import lombok.Data;
import py.com.marcelopezdev.pronosticapi.model.Estado;

import java.time.LocalDateTime;
import java.util.UUID;
/**
 * CREATE TABLE usuarios (
*     id_usuario VARCHAR(200) PRIMARY KEY,
*     nombre_usuario VARCHAR(200),
*     password VARCHAR(500),
*     estado VARCHAR(50),
*     fecha_creacion TIMESTAMP default CURRENT_DATE,
*     fecha_ultima_actualizacion TIMESTAMP
 * );
 */

@Data
@Entity
@Table(name = "USUARIOS")
public class UsuarioEntity {

    @Id
    @Column(name = "id_usuario")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "nombre_usuario", unique = true)
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "estado")
    private Estado estado;

    @Column(name = "fecha_creacion")
    private LocalDateTime fechaCreacion;

    @Column(name = "fecha_ultima_actualizacion")
    private LocalDateTime fechaModificacion;
}
