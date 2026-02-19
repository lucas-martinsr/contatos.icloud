-- Criando insghts:

USE contatosvm;

SELECT SUBSTRING(telefone, 1, 2) AS DDD, COUNT(*) AS quantidade
FROM contatos
GROUP BY DDD
ORDER BY quantidade DESC;

ALTER TABLE contatos
ADD COLUMN cidade VARCHAR(255);

UPDATE contatos
SET cidade = CASE SUBSTRING(telefone,1,2)
WHEN '11' THEN 'São Paulo - SP'
WHEN '12' THEN 'Vale do Paraíba - SP'
WHEN '13' THEN 'Baixada Santista - SP'
WHEN '14' THEN 'Bauru/Marília - SP'
WHEN '15' THEN 'Sorocaba - SP'
WHEN '16' THEN 'Ribeirão Preto - SP'
WHEN '17' THEN 'São José do Rio Preto - SP'
WHEN '18' THEN 'Presidente Prudente/Araçatuba - SP'
WHEN '19' THEN 'Campinas - SP'
WHEN '21' THEN 'Rio de Janeiro - RJ'
WHEN '22' THEN 'Campos dos Goytacazes - RJ'
WHEN '24' THEN 'Volta Redonda/Petrópolis - RJ'
WHEN '27' THEN 'Vitória - ES'
WHEN '28' THEN 'Cachoeiro de Itapemirim - ES'
WHEN '31' THEN 'Belo Horizonte - MG'
WHEN '32' THEN 'Juiz de Fora - MG'
WHEN '34' THEN 'Uberlândia - MG'
WHEN '35' THEN 'Sul de Minas - MG'
WHEN '38' THEN 'Montes Claros - MG'
WHEN '41' THEN 'Curitiba - PR'
WHEN '42' THEN 'Ponta Grossa/Guarapuava - PR'
WHEN '43' THEN 'Londrina - PR'
WHEN '44' THEN 'Maringá - PR'
WHEN '45' THEN 'Foz do Iguaçu/Cascavel - PR'
WHEN '47' THEN 'Joinville/Blumenau - SC'
WHEN '48' THEN 'Florianópolis - SC'
WHEN '49' THEN 'Chapecó/Lages - SC'
WHEN '51' THEN 'Porto Alegre - RS'
WHEN '54' THEN 'Caxias do Sul - RS'
WHEN '55' THEN 'Santa Maria - RS'
WHEN '61' THEN 'Brasília - DF'
WHEN '62' THEN 'Goiânia - GO'
WHEN '63' THEN 'Tocantins - TO'
WHEN '64' THEN 'Rio Verde/Itumbiara - GO'
WHEN '65' THEN 'Cuiabá - MT'
WHEN '66' THEN 'Rondonópolis/Sinop - MT'
WHEN '67' THEN 'Campo Grande - MS'
WHEN '69' THEN 'Rondônia - RO'
WHEN '71' THEN 'Salvador - BA'
WHEN '73' THEN 'Ilhéus/Itabuna - BA'
WHEN '75' THEN 'Feira de Santana - BA'
WHEN '77' THEN 'Vitória da Conquista/Barreiras - BA'
WHEN '79' THEN 'Aracaju - SE'
WHEN '81' THEN 'Recife - PE'
WHEN '82' THEN 'Maceió - AL'
WHEN '83' THEN 'João Pessoa - PB'
WHEN '84' THEN 'Natal - RN'
WHEN '85' THEN 'Fortaleza - CE'
WHEN '86' THEN 'Teresina - PI'
WHEN '87' THEN 'Petrolina/Garanhuns - PE'
WHEN '88' THEN 'Juazeiro do Norte/Sobral - CE'
WHEN '89' THEN 'Sul do Piauí - PI'
WHEN '91' THEN 'Belém - PA'
WHEN '92' THEN 'Manaus - AM'
WHEN '94' THEN 'Marabá/Sul do Pará - PA'
WHEN '95' THEN 'Boa Vista - RR'
WHEN '97' THEN 'Interior do Amazonas - AM'
WHEN '98' THEN 'São Luís - MA'
WHEN '99' THEN 'Imperatriz - MA'
ELSE 'DDD não identificado'
END;

SELECT SUBSTRING(telefone, 1, 2) AS DDD, COUNT(*) AS quantidade, cidade
FROM contatos
GROUP BY DDD, cidade
ORDER BY quantidade DESC;