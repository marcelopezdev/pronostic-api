package py.com.marcelopezdev.pronosticapi.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Getter
public enum Estado {
    ACTIVO("ACTIVO"),
    INACTIVO("INACTIVO");

    private String valor;
}
