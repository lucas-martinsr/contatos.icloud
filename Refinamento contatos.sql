-- Tabela limpa (apenas contatos celular e com nome)

CREATE TABLE contatos_celular AS
SELECT *
FROM contatos
WHERE tipo_telefone = 'CELULAR'
  AND nome IS NOT NULL
  AND TRIM(nome) <> '';