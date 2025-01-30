CREATE DATABASE oficina;
USE oficina;

CREATE TABLE clientes (
    idCliente INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100),
    telefone VARCHAR(15),
    PRIMARY KEY (idCliente)
);

CREATE TABLE veiculos (
    idVeiculo INT AUTO_INCREMENT,
    idCliente INT,
    placa VARCHAR(10) NOT NULL,
    marca VARCHAR(20),
    modelo VARCHAR(30),
    ano INT,
    PRIMARY KEY (idVeiculo),
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente)
);

CREATE TABLE mecanicos (
    idMecanico INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100),
    telefone VARCHAR(15),
    especialidade VARCHAR(50),
    PRIMARY KEY (idMecanico)
);

CREATE TABLE equipes (
    idEquipe INT AUTO_INCREMENT,
    idMecanico INT,
    PRIMARY KEY (idEquipe, idMecanico),
    FOREIGN KEY (idMecanico) REFERENCES mecanicos(idMecanico)
);

CREATE TABLE ordens_servico (
    idOS INT AUTO_INCREMENT,
    idVeiculo INT,
    idEquipe INT,
    data_emissao DATE,
    valor DECIMAL(10, 2),
    status ENUM('Pendente', 'Em Andamento', 'Concluída', 'Cancelada'),
    data_conclusao DATE,
    PRIMARY KEY (idOS),
    FOREIGN KEY (idVeiculo) REFERENCES veiculos(idVeiculo),
    FOREIGN KEY (idEquipe) REFERENCES equipes(idEquipe)
);

CREATE TABLE referencia_mao_obra (
    idReferencia INT AUTO_INCREMENT,
    descricao VARCHAR(100),
    valor DECIMAL(10, 2),
    PRIMARY KEY (idReferencia)
);


CREATE TABLE pecas (
    idPeca INT AUTO_INCREMENT,
    descricao VARCHAR(100),
    valor DECIMAL(10, 2),
    PRIMARY KEY (idPeca)
);

CREATE TABLE itens_os_servicos (
    idItem INT AUTO_INCREMENT,
    idOS INT,
    idReferencia INT,
    quantidade INT,
    valor DECIMAL(10, 2),
    PRIMARY KEY (idItem),
    FOREIGN KEY (idOS) REFERENCES ordens_servico(idOS),
    FOREIGN KEY (idReferencia) REFERENCES referencia_mao_obra(idReferencia)
);

CREATE TABLE itens_os_pecas (
    idItem INT AUTO_INCREMENT,
    idOS INT,
    idPeca INT,
    quantidade INT,
    valor DECIMAL(10, 2),
    PRIMARY KEY (idItem),
    FOREIGN KEY (idOS) REFERENCES ordens_servico(idOS),
    FOREIGN KEY (idPeca) REFERENCES pecas(idPeca)
);
