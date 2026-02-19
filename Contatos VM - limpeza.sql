-- Fazendo a limpeza dos dados:

SELECT * FROM contatosvm.contatos;	

UPDATE contatos
SET telefone = CONCAT(
    SUBSTRING(telefone,1,2), 
    '9',                       
    SUBSTRING(telefone,3)      
)
WHERE LENGTH(telefone) = 10
  AND SUBSTRING(telefone,3,1) IN ('8','9');

ALTER TABLE contatos
ADD tipo_telefone VARCHAR(10);

UPDATE contatos
SET tipo_telefone = 'CELULAR'
WHERE LENGTH(telefone) = 11
  AND SUBSTRING(telefone, 3, 1) = '9';
  
UPDATE contatos
SET tipo_telefone = 'FIXO'
WHERE LENGTH(telefone) = 10
  AND SUBSTRING(telefone, 3, 1) IN ('2','3','4','5');
  
UPDATE contatos
SET telefone = REGEXP_REPLACE(telefone, '[^0-9]', '')
WHERE telefone IS NOT NULL;

SELECT telefone, COUNT(*) AS quantidade
FROM contatos
GROUP BY telefone
HAVING quantidade > 1;

SELECT c.*
FROM contatos c
JOIN (
    SELECT telefone
    FROM contatos
    GROUP BY telefone
    HAVING COUNT(*) > 1
) dup ON c.telefone = dup.telefone
ORDER BY c.telefone;

DELETE c1
FROM contatos c1
JOIN contatos c2
  ON c1.telefone = c2.telefone
 AND c1.id > c2.id;
 
 UPDATE contatos
SET tipo_telefone = 'INCOMPLETO'
WHERE tipo_telefone IS NULL;