CREATE TABLE genero(
    id VARCHAR(5) PRIMARY KEY
);

CREATE TABLE disco(
    id VARCHAR(5) PRIMARY KEY,
    precio FLOAT  NOT NULL,
    titulo VARCHAR(30) NOT NULL,
    id_genero VARCHAR(5) NOT NULL, 
    id_cantante VARCHAR(5) NOT NULL,
    FOREIGN KEY(id_genero) REFERENCES genero(id),
    FOREIGN KEY(id_cantante) REFERENCES genero(id)
);

CREATE TABLE cantante(
    id VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    pais VARCHAR(30) NOT NULL
);

CREATE TABLE contiene(
    id_disco VARCHAR(5) NOT NULL,
    id_cancion VARCHAR(5)  NOT NULL,
    posicin INT NOT NULL,
    PRIMARY KEY(id_disco, id_cancion),
    FOREIGN KEY(id_disco) REFERENCES disco(id),
    FOREIGN KEY(id_cancion) REFERENCES cancion(id_cancion)
);

CREATE TABLE cancion(
    id_cancion VARCHAR(5) PRIMARY KEY,
    tiutlo VARCHAR(30) NOT NULL
);