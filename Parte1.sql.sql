CREATE DATABASE e_commerce;

use e_commerce;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    email VARCHAR(100),
    celular VARCHAR(20),
    data_nascimento DATE
);

CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    descricao TEXT,
    quantidade_estoque INT
);

CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_compra DATE,
    valor_total DECIMAL(10, 2),
    data_estimada_entrega DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE ItemPedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    valor_unitario DECIMAL(10, 2),
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

