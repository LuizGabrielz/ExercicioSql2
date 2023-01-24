INSERT INTO cliente (id, nome, telefone) OVERRIDING SYSTEM VALUE 
VALUES 
(1, 'Gabriel', '777-777'),
(2, 'Jorge', '888-888'),
(3, 'Matheus', '999-999'),
(4, 'Rafael', '555-555'),
(5, 'Andreza', '444-444');

INSERT INTO funcionario (id, nome, data_contratado, salario) OVERRIDING SYSTEM VALUE 
VALUES 
(1, 'Ianko', '2023-01-06', 500),
(2, 'Caio', '2023-05-14', 600),
(3, 'Lucas', '2023-07-14', 800),
(4, 'Rafael', '2023-06-18', 900),
(5, 'Hugo', '2023-05-08', 500);

INSERT INTO endereco (id, rua, complemento, numero, cep, cidade, estado, id_cliente) OVERRIDING SYSTEM VALUE 
VALUES
(1, 'Sergio', 'Casa', '123456789', '12345678', 'jp', 'pb', 1),
(2, 'rua vermelha', 'esquina', '987456321','15978462', 'franca', 'sp', 2),
(3, 'rua guerra', 'apto20', '1235698748', '15978462', 'patos', 'pb', 3),
(4, 'rua smn', 'apt5', '123654789', '15964782', 'joao pessoa', 'pb', 4),
(5, 'rua pc', 'casa', '123698745', '16478952', 'florianopolis', 'sc', 5);

INSERT INTO categoria (id, nome) OVERRIDING SYSTEM VALUE 
VALUES  
(1, 'Tenis'),
(2, 'Camisa'),
(3, 'Pulseira'),
(4, 'Calça'),
(5, 'celular');

INSERT INTO produto (id, nome, descricao, preco, id_categoria) OVERRIDING SYSTEM VALUE 
VALUES 
(1, 'Calça ck', 'Calça larga', 200, 1),
(2, 'Camisa pl', 'Camisa preta', 300, 2),
(3, 'Tenis', 'tenis branco', 400, 3),
(4, 'Oculos', 'Oculos Escuro', 500, 4),
(5, 'Boné', 'Aba Reta', 600, 5);

INSERT INTO venda (id, data_venda, preco, id_funcionario, id_produto) OVERRIDING SYSTEM VALUE 
VALUES 
(1, '2023-05-14', 500, 1, 1),
(2, '2022-04-15', 800, 2, 2),
(3, '2019-05-09', 200, 3, 3),
(4, '2021-08-10', 300, 4, 4),
(5, '2022-09-10', 500, 5, 5);

INSERT INTO pedido (id, data_pedido, quantidade, preco, id_cliente, id_produto) OVERRIDING SYSTEM VALUE 
VALUES 
(1, '2023-12-05', 20, 50, 1, 2),
(2, '2023-09-04', 30, 20, 2, 3),
(3, '2023-07-05', 10, 80, 3, 5),
(4, '2023-08-06', 80, 50.0, 4, 1);





