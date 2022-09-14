CREATE DATABASE OFICINA;

USE OFICINA;

CREATE TABLE Cliente (
	idCliente INT auto_increment,
    CPF CHAR(11) UNIQUE,
    CNPJ CHAR(11) UNIQUE,
	Nome VARCHAR(50) NOT NULL,
	Telefone CHAR(11) NOT NULL,
	Email VARCHAR(100),
	CONSTRAINT pk_Client_id PRIMARY KEY (idCliente)
);

CREATE TABLE Servico(
		idServico INT primary key auto_increment,
        idSCliente int,
        TipoServiço ENUM('Concerto','Revisão'),
        Placa VARCHAR(8),
        Cor varchar(10),
        TipoCarro ENUM('Hatch','Sedan','SUV','Picape'),
        CONSTRAINT fk_Servico_Cliente_id FOREIGN KEY (idSCliente) REFERENCES Cliente(idCliente)
);
        
CREATE TABLE OrdemdeServico(
	codigo INT auto_increment,
	idCliente INT NOT NULL,
	DataEmissao DATETIME NOT NULL,
	DataParaConclusao DATETIME,
	Valor DECIMAL(18,2),
	DataAutorizacao DATETIME,
	Obs TEXT,
	CONSTRAINT pk_OrdemServico_Codigo PRIMARY KEY (codigo),
	CONSTRAINT fk_OrdemServico_Cliente_id FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
    );

CREATE TABLE TabelaPeca (
	idPeca INT auto_increment,
	Identificacao VARCHAR(45) NOT NULL,
	ValorReferencia DECIMAL(18,2) NOT NULL,
	CONSTRAINT unique_Peca_Identificacao UNIQUE (Identificacao),
	CONSTRAINT pk_Peca_id PRIMARY KEY (idPeca) 
); 

CREATE TABLE Equipe (
	idEquipe INT auto_increment, 
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Equipe_Identificacao UNIQUE (Identificacao),
	CONSTRAINT pk_Equipe_id PRIMARY KEY (idEquipe)
);
   
  CREATE TABLE Mecanico (
	idMecanico INT auto_increment,
	Especialidade ENUM('Trocar Pneu','Pintar','Instalar som','Mecanica Hidráulico'),
	idEquipeMen INT NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	CEP VARCHAR(10) NOT NULL,
	Logradouro VARCHAR(150) NOT NULL,
	Numero VARCHAR(10) NOT NULL,
	Complemento VARCHAR(10),
	CONSTRAINT pk_Mecanico_id PRIMARY KEY (idMecanico),
	CONSTRAINT fk_Mecanico_idEquipe_Equipe_id FOREIGN KEY (idEquipeMen) REFERENCES Equipe(idEquipe)      
);

CREATE TABLE servicoMecanico(
servicoidservico int,
mecanicoidservico int,
CONSTRAINT fk_servicoidservico_id FOREIGN KEY (servicoidservico) REFERENCES Servico(idServico),
CONSTRAINT fk_mecanicoidservico_id FOREIGN KEY (mecanicoidservico) REFERENCES Mecanico(idMecanico)
);  
  
 CREATE TABLE servicoOrdemdeServico(
 servicoidOdeServico int,
 idOrdemdeServico int,
CONSTRAINT fk_servicoidServicoOrdem_id FOREIGN KEY (servicoidOdeServico) REFERENCES Servico(idServico),
CONSTRAINT fk_idOrdemdeServico_id FOREIGN KEY (idOrdemdeServico) REFERENCES OrdemdeServico(codigo)        
);

CREATE TABLE TipodePeca(
idOrdeServiçoidOrdem int,
idTabelaPecasidPecas int,
CONSTRAINT fk_idOrdeServiçoidOrdem_id FOREIGN KEY (idOrdeServiçoidOrdem) REFERENCES OrdemdeServico(codigo),
CONSTRAINT fk_idTabelaPecasidPecas_id FOREIGN KEY (idTabelaPecasidPecas) REFERENCES TabelaPeca(idPeca)
);



