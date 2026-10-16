-- exercicio 3
-- 1
select count(*) as 'Total de Assinantes' from assinantes;
-- 2
select round(avg(horas_assistidas), 2) as 'Media de Horas', min(horas_assistidas) as 'Minimo de horas',
max(horas_assistidas) as 'Maximo de horas' from assinantes;
-- 3
select count(horas_assistidas) as 'Quantidade de assinantes maior que 50h/mes'
from assinantes
where horas_assistidas >= 50; 
-- 4
select sum(horas_assistidas) as 'Horas assistidas por plano (1, 2, 3)'
from assinantes
group by id_plano;

-- exercicio 4
-- 1
select A.nome as 'Nome', A.email as 'Email', P.nome as 'Planos'
from assinantes A join planos P
ON A.id_plano = P.id
where P.nome = 'Premium';

-- 2
select A.nome as 'Nome', P.nome as 'Planos', P.valor_mensal as 'Valor Mensal'
from assinantes A join planos P
ON A.id_plano = P.id
where P.telas > 1;

-- 3
select sum(P.valor_mensal) AS 'Receita Mensal Total'
from assinantes A join planos P 
on A.id_plano = P.id;

-- 4
select P.nome as 'Planos', round(avg(horas_assistidas), 2) as 'Media de horas assistida por plano'
from assinantes A join planos P 
on A.id_plano = P.id
where A.data_assinatura > '2026-02-01'
group by P.nome;
