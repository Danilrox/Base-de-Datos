CREATE TABLE cliente (
    codigo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    direcccion text NOT NULL,
    telefono VARCHAR(10) NOT NULL,
);

CREATE TABLE compra (
    codigo_cliente VARCHAR(10) NOT NULL,
    codigo_proveedor VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY(codigo_cliente, codigo_proveedor),
    FOREIGN KEY(codigo_cliente) REFERENCES cliente(codigo),
    FOREIGN KEY(codigo_proveedor) REFERENCES proveedor(codigo),
);

CREATE TABLE proveedor (
    codigo VARCHAR(10) PRIMARY KEY,
    precio FLOAT NOT NULL,
    descripcion text NOT NULL,
    existencias INT NOT NULL,
);

CREATE TABLE suministra (
    codigo_proveedor VARCHAR(10) NOT NULL,
    codigo_producto VARCHAR(10) NOT NULL,
    PRIMARY KEY(codigo_proveedor, codigo_producto),
    FOREIGN KEY(codigo_proveedor) REFERENCES proveedor(codigo),
    FOREIGN KEY(codigo_producto) REFERENCES producto(codigo),
);

CREATE TABLE producto (
    codigo VARCHAR(10) PRIMARY KEY,
    nombres VARCHAR(30) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    direccion text NOT NULL,
    provincia VARCHAR(20)NOT NULL,
    telefono VARCHAR(10) NOT NULL,
);