CREATE TABLE clientes (
	id			INT IDENTITY,
	nome		VARCHAR(100),
	cadastro	SMALLDATETIME,
	renda		MONEY,
	sexo		CHAR(1),
	cpf			VARCHAR(11),
	rg			VARCHAR(11),
	endereco	VARCHAR(10),
	cidade		VARCHAR(50),
	uf			CHAR(2),
	tipo_id		INT,
	CONSTRAINT pkCliente PRIMARY KEY (id)
);

CREATE TABLE funcionarios (
	id			INT IDENTITY,
	nome		VARCHAR(100),
	cadastro	SMALLDATETIME,
	sexo		CHAR(1),
	salario		MONEY,
	endereco	VARCHAR(100),
	CONSTRAINT pkFuncionario PRIMARY KEY (id)
);

CREATE TABLE pedidos (
	id				INT IDENTITY,
	cliente_id		INT NOT NULL,
	funcionario_id	INT NOT NULL,
	data			SMALLDATETIME DEFAULT GETDATE(),
	valor			MONEY,
	CONSTRAINT pkPedido PRIMARY KEY (id),
	CONSTRAINT fkCliPed FOREIGN KEY (cliente_id)
		REFERENCES clientes(id),
	CONSTRAINT fkFunPed FOREIGN KEY (funcionario_id)
		REFERENCES funcionarios(id)
);

CREATE TABLE itens (
	id		INT IDENTITY,
	nome	VARCHAR(50),
	valor	MONEY,
	CONSTRAINT pkItens PRIMARY KEY (id)
);

CREATE TABLE itens_pedido (
	pedido	INT,
	item	INT,
	qtd		FLOAT,
	valor	MONEY,
	CONSTRAINT pkItensPedido PRIMARY KEY (pedido, item),
	CONSTRAINT fkItItp FOREIGN KEY (item)
		REFERENCES itens(id),
	CONSTRAINT fkPdItp FOREIGN KEY (pedido)
		REFERENCES pedidos (id)
);