-- Criando insghts:

USE contatosvm;

SELECT 
    SUM(CASE WHEN tipo_telefone = 'CELULAR' THEN 1 ELSE 0 END) AS CELULAR,
    SUM(CASE WHEN tipo_telefone = 'FIXO' THEN 1 ELSE 0 END) AS FIXO,
    SUM(CASE WHEN tipo_telefone = 'INCOMPLETO' THEN 1 ELSE 0 END) AS INCOMPLETO,
    COUNT(*) AS total
FROM contatos;