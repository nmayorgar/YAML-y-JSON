CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL 
);

CREATE TABLE IF NOT EXISTS productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuarios),
    total DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS orden_pedidos (
    id_orden_pedido INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
    cantidad INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS pagos (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (id_orden_pedido) REFERENCES orden_pedido(id_orden_pedido),
    cantidad DECIMAL(10,2) NOT NULL
);