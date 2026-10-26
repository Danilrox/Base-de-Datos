CREATE TABLE provincia (
    codigo VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR(5) NOT NULL
);

CREATE TABLE paquete (
    codigo VARCHAR(5) PRIMARY KEY,
    descripcion TEXT NOT NULL,
    direccion_destino TEXT NOT NULL,
    destinatario VARCHAR(30) NOT NULL,
    id_provincia VARCHAR(5) NOT NULL,
    id_camionero VARCHAR(10) NOT NULL,
    FOREIGN KEY(id_provincia) REFERENCES provincia(codigo),
    FOREIGN KEY(id_camionero) REFERENCES camioner(cedula)
);

CREATE TABLE camionero (
    cedula varchar(10) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    direcccion TEXT NOT NULL,
    salario FLOAT NOT NULL,
    poblacion VARCHAR(30) NOT NULL,
)

CREATE TABLE conduce (
    cedula_camionero VARCHAR(10) NOT NULL,
    matricula_vehiculo VARCHAR(8) NOT NULL,
    PRIMARY KEY(cedula_camionero, matricula_vehiculo),
    FOREIGN KEY(cedula_camionero) REFERENCES camionero(cedula),
    FOREIGN KEY(matricula_vehiculo) REFERENCES camion(matricula)
);

CREATE TABLE camion (
    matricula VARCHAR(8) PRIMARY KEY,
    modelo VARCHAR(30) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    potencia FLOAT NOT NULL
);