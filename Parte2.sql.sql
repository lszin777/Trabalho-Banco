INSERT INTO Cliente (nome, endereco, email, celular, data_nascimento)
VALUES
    ('João Silva', 'Rua A, 123', 'joao@example.com', '9999-8888', '1990-05-15'),
    ('Maria Oliveira', 'Av. B, 456', 'maria@example.com', '9876-5432', '1985-08-20'),
    ('Pedro Santos', 'Travessa C, 789', 'pedro@example.com', '9876-1234', '1988-11-10'),
    ('Ana Souza', 'Rua D, 321', 'ana@example.com', '9999-5678', '1995-03-25'),
    ('Luiza Costa', 'Av. E, 654', 'luiza@example.com', '9876-9876', '1979-09-30'),
    ('Carlos Oliveira', 'Rua F, 987', 'carlos@example.com', '9999-4321', '1983-12-05'),
    ('Fernanda Lima', 'Av. G, 147', 'fernanda@example.com', '9876-8765', '1992-07-18'),
    ('Rafaela Pereira', 'Rua H, 258', 'rafaela@example.com', '9999-1234', '1980-04-12'),
    ('Mariana Rocha', 'Av. I, 369', 'mariana@example.com', '9876-2345', '1975-01-28'),
    ('Paulo Martins', 'Rua J, 852', 'paulo@example.com', '9999-8765', '1987-06-30');
   select * from Cliente;
INSERT INTO Produto (nome, preco, descricao, quantidade_estoque)
VALUES
    ('Camiseta', 29.99, 'Camiseta branca tamanho M', 50),
    ('Calça Jeans', 59.99, 'Calça jeans azul tamanho 42', 30),
    ('Tênis', 79.99, 'Tênis preto número 40', 20),
    ('Mochila', 39.99, 'Mochila escolar preta', 40),
    ('Boné', 14.99, 'Boné de baseball preto', 60),
    ('Óculos de Sol', 24.99, 'Óculos de sol estilo wayfarer', 25),
    ('Relógio', 49.99, 'Relógio analógico prateado', 15),
    ('Bolsa', 34.99, 'Bolsa feminina marrom', 35),
    ('Chapéu', 19.99, 'Chapéu de palha estilo panamá', 45),
    ('Shorts', 24.99, 'Shorts estampado tamanho G', 30);
	select * from Produto;
INSERT INTO Pedido (id_cliente, data_compra, data_estimada_entrega, valor_total)
VALUES
    (1, '2024-03-26', '2024-04-02', 0),
    (2, '2024-03-26', '2024-04-03', 0),
    (3, '2024-03-25', '2024-04-01', 0),
    (4, '2024-03-25', '2024-04-02', 0),
    (5, '2024-03-24', '2024-03-31', 0),
    (6, '2024-03-26', '2024-04-02', 0),
    (7, '2024-03-27', '2024-04-03', 0),
    (8, '2024-03-25', '2024-04-01', 0),
    (9, '2024-03-25', '2024-04-02', 0),
    (10, '2024-03-24', '2024-03-31', 0);
	select * from Pedido;
INSERT INTO ItemPedido (id_pedido, id_produto, quantidade, valor_unitario, valor_total)
VALUES
    (1, 1, 2, 29.99, 59.98),
    (1, 3, 1, 79.99, 79.99),

    (2, 2, 1, 59.99, 59.99),
    (2, 5, 1, 14.99, 14.99),

    (3, 1, 1, 29.99, 29.99),
    (3, 4, 1, 39.99, 39.99),
    (3, 6, 1, 24.99, 24.99),

    (4, 3, 2, 79.99, 159.98),

    (5, 5, 1, 14.99, 14.99),
    (5, 7, 1, 49.99, 49.99),
    (5, 8, 1, 34.99, 34.99),

    (6, 1, 3, 29.99, 89.97),
    (6, 2, 1, 59.99, 59.99),

    (7, 4, 2, 39.99, 79.98),
    (7, 6, 1, 24.99, 24.99),

    (8, 3, 1, 79.99, 79.99),

    (9, 8, 1, 34.99, 34.99),
    (9, 9, 1, 19.99, 19.99),

    (10, 1, 2, 29.99, 59.98),
    (10, 2, 1, 59.99, 59.99);
	select * from ItemPedido;
    
    
UPDATE Cliente
SET celular = '9999-0000'
WHERE id_cliente IN (1, 3, 5, 7);

UPDATE Produto
SET preco = 1.1
WHERE id_produto IN (2, 4, 6, 8);

SET foreign_key_checks = 0;

DELETE FROM Cliente
WHERE id_cliente IN (2, 4);

DELETE FROM Produto
WHERE id_produto in(9, 10);

SET foreign_key_checks = 0;