CREATE TABLE manager (
    identificador VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
);

CREATE TABLE artista (
    NIF VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    manager VARCHAR(10) NOT NULL,
    FOREIGN KEY(manager) REFERENCES manager(identificador),
);

CREATE TABLE participa (
    id_artista VARCHAR(10) NOT NULL,
    id_evento VARCHAR(10) NOT NULL,
    PRIMARY KEY(id_artista, id_evento),
    FOREIGN KEY(id_artista) REFERENCES artista(NIF),
    FOREIGN KEY(id_evento) REFERENCES evento(identificador),
);

CREATE TABLE evento_de_promocion (
    identificador VARCHAR(10) PRIMARY KEY,
    fecha_celebracion DATE NOT NULL,
    numero_asistentes INT NOT NULL,
)