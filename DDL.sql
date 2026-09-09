-- Criação do Banco de Dados
CREATE DATABASE comabem;
USE comabem;

-- Criação da Tabela de Restaurantes
CREATE TABLE tb_restaurantes (
    id_restaurante INT AUTO_INCREMENT,
    nm_restaurante VARCHAR(70) NOT NULL,
    geo_restaurante VARCHAR(200),
    nm_prato VARCHAR(50),
    ft_prato VARCHAR(200),
    avaliacao_media_restaurante INT(1),
    PRIMARY KEY (id_restaurante)
);

-- Criação da Tabela de Avaliações
CREATE TABLE tb_avaliacao (
    id_avaliacao INT AUTO_INCREMENT,
    id_restaurante_fk INT,
    nm_restaurante VARCHAR(70),
    nm_prato VARCHAR(50),
    ft_prato VARCHAR(200),
    rec_restaurante VARCHAR(500),
    rank_restaurante INT(1),
    PRIMARY KEY (id_avaliacao),
    FOREIGN KEY (id_restaurante_fk) REFERENCES tb_restaurantes(id_restaurante) ON DELETE CASCADE
);
