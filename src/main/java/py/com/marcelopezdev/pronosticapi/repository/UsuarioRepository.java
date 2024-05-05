package py.com.marcelopezdev.pronosticapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import py.com.marcelopezdev.pronosticapi.repository.entities.UsuarioEntity;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(path = "usuarios")
public interface UsuarioRepository extends JpaRepository<UsuarioEntity, UUID> {

    List<UsuarioEntity> findByUsername(@Param("username") String username);
}
