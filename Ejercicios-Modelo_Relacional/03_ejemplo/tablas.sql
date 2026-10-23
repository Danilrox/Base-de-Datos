CREATE TABLE empleado (
    codigo VARCHAR(15) PRIMARY KEY,
    cedula VARCHAR(10) UNIQUE NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    estado VARCHAR(10) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    direccion text NOT NULL,
);

create TABLE usuario(
    codigo_empleado VARCHAR(15) PRIMARY KEY,
    login_ VARCHAR(15) NOT NULL,
    clave VARCHAR(10) NOT NULL,
    FOREIGN KEY(codigo_empleado) REFERENCES empleado(codigo),
);

CREATE TABLE factura(
    numero VARCHAR(5) PRIMARY KEY,
    codigo_usuario VARCHAR(15) NOT NULL,
    fecha DATE NOT NULL,
    total_factura FLOAT NOT NULL,
    estado VARCHAR(15) NOT NULL,
    cantidad INT NOT NULL,
    cedula_cliente VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY(codigo_usuario) REFERENCES usuario(codigo_empleado),
    FOREIGN KEY(cedula_cliente) REFERENCES cliente(cedula),
);

CREATE TABLE articulo(
    referencia VARCHAR(10) PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL,
    precio float NOT NULL,
    cantidad INT NOT NULL,
)

CREATE TABLE cliente (
    cedula VARCHAR(10) UNIQUE PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    direccion text NOT NULL,
    telefono VARCHAR(10) NOT NULL,
);

CREATE TABLE participacion_factura(
    referencia_articulo VARCHAR(10) NOT NULL,
    num_factura VARCHAR(15) NOT NULL,
    PRIMARY KEY(referencia_articulo, num_factura),
    FOREIGN KEY(referencia_articulo) REFERENCES articulo(referencia),
    FOREIGN KEY(num_factura) REFERENCES factura(numero),
);