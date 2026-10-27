CREATE TABLE familiar_de_contacto(
    cedula VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    telefono VARCHAR(10) NOT NULL
);

CREATE TABLE propietario(
    cedula VARCHAR(10) PRIMARY KEY,
    nombres VARCHAR(40) NOT NULL,
    apellidos VARCHAR(40) NOT NULL,
    direccion text NOT NULL,
    cedula_contacto VARCHAR(10) NOT NULL,
    FOREIGN KEY(cedula_contacto) REFERENCES familiar_de_contacto(cedula)
);

CREATE TABLE telefono(
    cedula_propietario VARCHAR(10) PRIMARY KEY,
    num_telefono VARCHAR(10) NOT NULL,
    FOREIGN KEY(cedula_propietario) REFERENCES propietario(cedula)
);

CREATE TABLE mascota(
    identificador VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    tipo VARCHAR(30),
    fecha_nacimiento DATE NOT NULL,
    cedula_propietario VARCHAR(10) NOT NULL,
    FOREIGN KEY(cedula_propietario) REFERENCES propietario(cedula)
);

CREATE TABLE consulta(
    id_mascota VARCHAR(5) NOT NULL,
    id_veterianrio VARCHAR(5) NOT NULL,
    PRIMARY KEY(id_mascota, id_veterianrio),
    FOREIGN KEY(id_mascota) REFERENCES mascota(identificador),
    FOREIGN KEY(id_veterianrio) REFERENCES veterinario(codigo_personal)
);

CREATE TABLE personal(
    codigo VARCHAR(5) PRIMARY KEY,
    cedula VARCHAR(10) NOT NULL,
    nombre VARCHAR(40) NOT NULL
);

CREATE TABLE veterinario(
    codigo_personal VARCHAR(5) PRIMARY KEY,
    especialidad VARCHAR(40),
    fecha_alta DATE NOT NULL,
    FOREIGN KEY(codigo_personal) REFERENCES personal(codigo) 
);

CREATE TABLE auxiliar(
    codigo_personal VARCHAR PRIMARY KEY,
    base_cotizacion FLOAT NOT NULL,
    FOREIGN KEY(codigo_personal) REFERENCES personal(codigo)
);