-- Tabla de usuarios
CREATE TABLE usuarios (
                          id_usuario VARCHAR(200) PRIMARY KEY,
                          nombre_usuario VARCHAR(200) UNIQUE ,
                          password VARCHAR(500),
                          estado VARCHAR(50),
                          fecha_creacion TIMESTAMP default CURRENT_DATE,
                          fecha_ultima_actualizacion TIMESTAMP
);

-- Tabla de paises
CREATE TABLE paises (
                        id_pais VARCHAR(200) PRIMARY KEY,
                        nombre VARCHAR(100),
                        url_imagen VARCHAR(500),
                        grupo VARCHAR(50),
                        fecha_creacion TIMESTAMP default CURRENT_DATE,
                        fecha_ultima_actualizacion TIMESTAMP
);

-- Tabla de campeones
CREATE TABLE campeones (
                           id_campeon VARCHAR(200) PRIMARY KEY,
                           id_pais VARCHAR(200) REFERENCES paises(id_pais),
                           id_usuario VARCHAR(200) REFERENCES usuarios(id_usuario),
                           comentarios TEXT,
                           fecha_creacion TIMESTAMP default CURRENT_DATE,
                           fecha_ultima_actualizacion TIMESTAMP
);

-- Tabla de fases
CREATE TABLE fases (
                       id_fase VARCHAR(100) PRIMARY KEY,
                       codigo VARCHAR(50),
                       nombre VARCHAR(200),
                       fecha_inicio TIMESTAMP,
                       fecha_fin TIMESTAMP,
                       estado VARCHAR(50),
                       cantidad_equipos_seleccionables BIGINT,
                       peso_por_equipo BIGINT,
                       orden BIGINT,
                       fecha_creacion TIMESTAMP default CURRENT_DATE,
                       fecha_ultima_actualizacion TIMESTAMP
);

-- Tabla de resultados reales
CREATE TABLE resultados_reales (
                                   id_resultado_real VARCHAR(100),
                                   id_fase VARCHAR(100) REFERENCES fases(id_fase),
                                   id_pais VARCHAR(200) REFERENCES paises(id_pais),
                                   fecha_creacion TIMESTAMP default CURRENT_DATE,
                                   fecha_ultima_actualizacion TIMESTAMP
);

-- Tabla de resultados por usuario cabecera
CREATE TABLE resultados_por_usuario_cab (
                                            id_resultados_por_usuario_cab VARCHAR(100) PRIMARY KEY,
                                            id_usuario VARCHAR(200) REFERENCES usuarios(id_usuario),
                                            id_fase VARCHAR(100) REFERENCES fases(id_fase),
                                            fecha_creacion TIMESTAMP default CURRENT_DATE,
                                            fecha_ultima_actualizacion TIMESTAMP
);

-- Tabla de resultados por usuario detalle
CREATE TABLE resultados_por_usuario_det (
                                            id_resultado_por_usuario_det VARCHAR(100) PRIMARY KEY,
                                            id_resultados_por_usuario_cab VARCHAR(100) REFERENCES resultados_por_usuario_cab(id_resultados_por_usuario_cab),
                                            id_pais VARCHAR(200) REFERENCES paises(id_pais),
                                            fecha_creacion TIMESTAMP default CURRENT_DATE,
                                            fecha_ultima_actualizacion TIMESTAMP
);

-- Tabla de puntuación global
CREATE TABLE puntuacion_global (
                                   id_puntuacion VARCHAR(100) PRIMARY KEY,
                                   puntos_generados BIGINT,
                                   id_usuario VARCHAR(200) REFERENCES usuarios(id_usuario),
                                   id_fase VARCHAR(100) REFERENCES fases(id_fase),
                                   fecha_proceso TIMESTAMP,
                                   fecha_creacion TIMESTAMP default CURRENT_DATE,
                                   fecha_ultima_actualizacion TIMESTAMP
);

insert into paises(id_pais, nombre, url_imagen, grupo, fecha_creacion, fecha_ultima_actualizacion) VALUES ()