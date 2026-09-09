-- ==================================================================
-- INSERÇÃO DE DADOS (INSERT)
-- ==================================================================

-- Inserindo um restaurante de exemplo
INSERT INTO tb_restaurantes (nm_restaurante, geo_restaurante, nm_prato, ft_prato, avaliacao_media_restaurante)
VALUES ('Cantina Nonna Maria', '-23.5505,-46.6333', 'Lasanha à Bolonhesa', 'url_foto_lasanha.jpg', 5);

-- Inserindo uma avaliação atrelada ao restaurante acima (id_restaurante_fk = 1)
INSERT INTO tb_avaliacao (id_restaurante_fk, nm_restaurante, nm_prato, ft_prato, rec_restaurante, rank_restaurante)
VALUES (1, 'Cantina Nonna Maria', 'Lasanha à Bolonhesa', 'url_foto_lasanha.jpg', 'Excelente atendimento e massa artesanal perfeita.', 5);


-- ==================================================================
-- CONSULTA DE DADOS (SELECT)
-- ==================================================================

-- Consulta simples de todos os restaurantes
SELECT * FROM tb_restaurantes;

-- Consulta cruzando as duas tabelas (INNER JOIN) para ver as avaliações completas
SELECT 
    r.nm_restaurante, 
    r.nm_prato, 
    a.rec_restaurante, 
    a.rank_restaurante
FROM tb_avaliacao a
INNER JOIN tb_restaurantes r ON a.id_restaurante_fk = r.id_restaurante;


-- ==================================================================
-- ALTERAÇÃO DE DADOS (UPDATE)
-- ==================================================================

-- Atualizando a nota média de um restaurante específico
UPDATE tb_restaurantes 
SET avaliacao_media_restaurante = 4 
WHERE id_restaurante = 1;


-- ==================================================================
-- EXCLUSÃO DE DADOS (DELETE)
-- ==================================================================

-- Excluindo uma avaliação específica
DELETE FROM tb_avaliacao 
WHERE id_avaliacao = 1;
