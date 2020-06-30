CREATE TABLE  CLIENTE (
CODIGOCLIENTE INT IDENTITY CONSTRAINT PK_CLIENTE PRIMARY KEY,
CPF VARCHAR (15) NOT NULL UNIQUE,
NOME VARCHAR (80) NOT NULL,
RG VARCHAR (10) NOT NULL,
TELEFONE VARCHAR (11) NOT NULL UNIQUE,
EMAIL VARCHAR (50) NOT NULL UNIQUE,
ENDERECO VARCHAR (250) NOT NULL,
DTNASCIMENTO DATE NOT NULL,
SEXO CHAR(1), 
BONIFICACAO BIT DEFAULT (0),
STATUS_CLIENTE BIT DEFAULT (1)
)
GO


CREATE TABLE SERVICOS (
CODIGOSERVICO INT IDENTITY CONSTRAINT PK_SERVICO PRIMARY KEY,
NOME VARCHAR(50) NOT NULL UNIQUE,
CUSTOCREDITO SMALLINT NOT NULL,
STATUS_SERVICOS BIT DEFAULT (1)
)
GO


CREATE TABLE EMPRESA (
CODIGOEMPRESA INT IDENTITY CONSTRAINT PK_EMPRESA PRIMARY KEY,
NOME VARCHAR(20) NOT NULL,
CNPJ VARCHAR (20) NOT NULL UNIQUE, 
TELEFONE VARCHAR(11) NOT NULL,
ENDERECO VARCHAR (250) NOT NULL,
STATUS_EMPRESA BIT DEFAULT (1)
)
GO 


CREATE TABLE PLANO (
CODIGOPLANO INT IDENTITY CONSTRAINT PK_PLANO PRIMARY KEY,
NOME VARCHAR (25) NOT NULL,
PRECO SMALLMONEY NOT NULL,
PACOTEINICIALCREDITO SMALLINT NOT NULL,
STATUS_PLANO BIT DEFAULT(1)
)
GO


CREATE TABLE CATEGORIAPET (
CODIGOCATEGORIA INT IDENTITY CONSTRAINT PK_CATEGORIAPET PRIMARY KEY,
TIPO VARCHAR (20)  NOT NULL UNIQUE
)
GO


CREATE TABLE RACA ( 
CODIGORACA INT IDENTITY CONSTRAINT PK_RACA PRIMARY KEY,
NOMERACA VARCHAR (40),
FKCATEGORIAPET INT CONSTRAINT FK_CATEGORIAPET_RACA FOREIGN KEY (FKCATEGORIAPET) REFERENCES CATEGORIAPET (CODIGOCATEGORIA)
)
GO


CREATE TABLE PET ( 
CODIGOPET INT IDENTITY CONSTRAINT PK_PET PRIMARY KEY, 
NOME VARCHAR (30) NOT NULL,
DTNASCIMENTO_PET DATE,
SEXO_PET CHAR(1),
STATUS_PET BIT DEFAULT(1),
FKCLIENTE INT CONSTRAINT FK_CLIENTE_PET FOREIGN KEY (FKCLIENTE) REFERENCES CLIENTE (CODIGOCLIENTE),
FKRACA INT CONSTRAINT FK_RACA FOREIGN KEY (FKRACA) REFERENCES RACA (CODIGORACA)
)
GO


CREATE TABLE EMPRESA_SERVICOS (
CODIGO INT IDENTITY CONSTRAINT PK_EMPRESA_SERVICOS PRIMARY KEY,
FKEMPRESA INT CONSTRAINT FK_EMPRESAS FOREIGN KEY (FKEMPRESA) REFERENCES EMPRESA (CODIGOEMPRESA),
FKSERVICOS INT CONSTRAINT FK_SERVICOS FOREIGN KEY (FKSERVICOS) REFERENCES SERVICOS (CODIGOSERVICO)
)
GO


CREATE TABLE CONTRATO(
CODIGOCONTRATO INT IDENTITY CONSTRAINT PK_CONTRATO PRIMARY KEY,
NUMERODOCONTRATO INT NOT NULL UNIQUE,
SALDOINICIAL SMALLINT NULL,
SALDOFINAL SMALLINT NULL, -- ADICIONAR TRIGGER PARA PREENCHER ESSA COLUNA
DATACOMPRACREDITO SMALLDATETIME NOT NULL,
DATAVENCIMENTOCREDITO SMALLDATETIME NOT NULL,
STATUS_CONTRATO BIT DEFAULT (1) NOT NULL,
FKCLIENTE INT CONSTRAINT FK_CLIENTE_CONTRATO FOREIGN KEY (FKCLIENTE) REFERENCES CLIENTE (CODIGOCLIENTE),
FKPLANO INT CONSTRAINT FK_PLANO_CONTRATO FOREIGN KEY (FKPLANO) REFERENCES PLANO (CODIGOPLANO)
)
GO


/*CREATE TABLE NOTAFISCAL (
CODIGONF INT IDENTITY CONSTRAINT PK_NOTAFISCAL PRIMARY KEY,
DATA DATETIME2 DEFAULT(SYSDATETIME()) NOT NULL,
FKCONTRATO INT CONSTRAINT FK_CONTRATO_NOTAFISCAL FOREIGN KEY (FKCONTRATO) REFERENCES CONTRATO (CODIGOCONTRATO) 
)
GO */



CREATE TABLE NOTAFISCAL (
CODIGONF INT IDENTITY CONSTRAINT PK_NOTAFISCAL PRIMARY KEY,
DATA DATETIME2 DEFAULT(SYSDATETIME()) NOT NULL,
FKCONTRATO INT CONSTRAINT FK_CONTRATO_NOTAFISCAL FOREIGN KEY (FKCONTRATO) REFERENCES CONTRATO (CODIGOCONTRATO), 
FKEMPRESA INT CONSTRAINT FK_EMPRESA_NOTAFISCAL FOREIGN KEY (FKEMPRESA) REFERENCES EMPRESA (CODIGOEMPRESA) 
)
GO

CREATE TABLE SERVICOS_CATEGORIA (
CODIGOSERCAT INT IDENTITY CONSTRAINT PK_SERVICOS_CATEGORIA PRIMARY KEY,
FKSERVICOS INT CONSTRAINT FK_SERVICOS_CATEGORIA FOREIGN KEY (FKSERVICOS) REFERENCES SERVICOS (CODIGOSERVICO),
FKCATEGORIAPET INT CONSTRAINT FK_CATEGORIAPET_SERCAT FOREIGN KEY (FKCATEGORIAPET) REFERENCES CATEGORIAPET (CODIGOCATEGORIA)
)
GO


CREATE TABLE SERVICOS_CATEGORIA_NF (
CODIGOSERCATNF INT IDENTITY CONSTRAINT PK_SERVICOS_CATEGORIA_NF PRIMARY KEY,
FKSERVICOSCATEGORIA INT CONSTRAINT FK_SERVICOSCATEGORIA_SERCATNF FOREIGN KEY (FKSERVICOSCATEGORIA) REFERENCES SERVICOS_CATEGORIA (CODIGOSERCAT),
FKCODIGONF INT CONSTRAINT FK_NOTAFISCAL_SERCATNF FOREIGN KEY (FKCODIGONF) REFERENCES NOTAFISCAL (CODIGONF)
)
GO