-- 1. Perfil Administrador (Acesso total ao banco de dados)
CREATE USER 'admin_comabem'@'localhost' IDENTIFIED BY 'SenhaAdmin123!';
GRANT ALL PRIVILEGES ON comabem.* TO 'admin_comabem'@'localhost';

-- 2. Perfil Operador/Atendente (Pode apenas consultar e inserir dados, sem permissão para deletar)
CREATE USER 'operador_comabem'@'localhost' IDENTIFIED BY 'SenhaOp456!';
GRANT SELECT, INSERT, UPDATE ON comabem.* TO 'operador_comabem'@'localhost';

-- Aplicar e atualizar as permissões configuradas
FLUSH PRIVILEGES;
