-- Cria a base de dados.
DROP DATABASE IF EXISTS streaming_db;

CREATE DATABASE streaming_db;
USE streaming_db;

-- Cria a tabela de planos.
CREATE TABLE planos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL UNIQUE,
valor_mensal DECIMAL(10,2) NOT NULL,
qualidade VARCHAR(10) NOT NULL,
telas INT NOT NULL
);

-- Cria a tabela de assinantes.
CREATE TABLE assinantes (
id INT AUTO_INCREMENT PRIMARY KEY,
id_plano INT NOT NULL,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
data_assinatura DATE NOT NULL,
horas_assistidas INT,

-- Chave estrangeira que conecta os assinantes aos planos.
FOREIGN KEY (id_plano) REFERENCES planos(id)
);