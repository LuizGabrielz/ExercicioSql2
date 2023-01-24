CREATE TABLE cliente (
    id INT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(60) NOT NULL,
    telefone CHAR(12) NOT NULL,
	CONSTRAINT pk_cliente_id PRIMARY KEY (id)
);  

CREATE TABLE funcionario (
    id INT  GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(60) NOT NULL,
    data_contratado DATE NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
	CONSTRAINT pk_funcionario_id PRIMARY KEY (id)
);

CREATE TABLE endereco (
    id INT  GENERATED ALWAYS AS IDENTITY,
    rua VARCHAR(120) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    complemento VARCHAR(120),
    cep CHAR(8) NOT NULL,
    cidade VARCHAR(60) NOT NULL, 
    estado CHAR(2) NOT NULL,
	id_cliente INT NOT NULL,
	CONSTRAINT pk_endereco_id PRIMARY KEY (id),
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id)
);
 

CREATE TABLE categoria (
    id INT  GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(60) NOT NULL,
	CONSTRAINT pk_categoria_id PRIMARY KEY (id) 
);

CREATE TABLE produto (
    id INT  GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(60) NOT NULL,
    descricao VARCHAR(400) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
	id_categoria INT NOT NULL,
	CONSTRAINT pk_produto_id PRIMARY KEY (id),
	CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id)
);

CREATE TABLE venda (
    id INT  GENERATED ALWAYS AS IDENTITY,
    data_venda DATE NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
	id_funcionario INT NOT NULL,
	id_produto INT NOT NULL,
	CONSTRAINT pk_venda_id PRIMARY KEY (id),
	CONSTRAINT fk_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id),
	CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES produto (id)
);

CREATE TABLE pedido (
    id INT  GENERATED ALWAYS AS IDENTITY,
    data_pedido DATE NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
	id_cliente INT NOT NULL,
	id_produto INT NOT NULL,
	CONSTRAINT pk_pedido_id PRIMARY KEY (id),
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id),
	CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES produto (id)
);  
