-- Grupo: Isabela Saraiva, Gabriel Marinho e Thiago Assis

use db_empresa;

-- 3.1 Operador null
-- 1) Selecione o nome e o sobrenome dos funcionários da empresa que possuem gerente.
select nome as 'Nome', sobrenome as 'Sobrenome', cargo as 'cargo' from tb_funcionarios_empresa
where cod_gerente is not null;

-- 3.1 Operador in
-- 2) Selecione o nome e o cargo dos funcionários da empresa dos departamento 14 e 15 
-- que ganham mais que R$ 300000 em um periodo de 5 meses
select nome as 'nome',cargo as 'cargo', salario as 'salário', departamento as 'Departamento' from tb_funcionarios_empresa
where departamento in (14,15) and salario * 5 >= 300000;

-- 3.1 Operador between
-- 3) Selecione os funcionários de nomes 'J' a 'Z'. Classifique os junto com o cargo. 
-- Utilize o operador BETWEEN
select nome as 'Nome', cargo as 'cargo' from tb_funcionarios_empresa
where nome between 'J' and 'Z' order by nome;

-- 3) Selecione o funcionário e sua data de contratação. Classifique por data de contratação em ordem crescente. 
-- Utilize o operador BETWEEN
select nome as 'Nome', dt_contratacao as 'Data' from tb_funcionarios_empresa
where dt_contratacao between '2010-02-05' and '2019-12-31' order by dt_contratacao asc;

-- 3.1 Operador like
-- 4) Faça uma lista mostrando todos os funcionários com o nome "João" da empresa, junto com seus respectivos salários, de modo a mostrar seu nome composto
	select nome as 'nome', sobrenome as 'sobrenome', salario as 'salário' from tb_funcionarios_empresa
	 where nome like '%joão%' and salario > 12000;


-- 3.1 Operador de concatenação
-- 5) Faça um lista que organize todos que fazem parte da empresa da seguinte forma, o sobrenome do funcionario primeiro, ao lado seu nome depois o cargo
select concat('Funcionario: ', sobrenome,' ',upper(substring(nome,1,1)), 
lower(substring(nome,2)),' / ', upper(substring(cargo,1,1)), lower(substring(cargo,2))) as 'Lista' from tb_funcionarios_empresa;



-- 3.2 Expressões regulares
-- 1.1) Selecione funcionários que tenham a letra C em seu nome e que nasceram no ano de 1987.
select * from tb_funcionarios_empresa 
where regexp_like(nome, '(C)') and dt_nascimento between '1987-01-01' and '1987-12-31';     

-- 1.2) Selecione o nome do funcionário, a data de contratação e o sobrenome do funcionário que tenham
-- em seu nome as letras 'A' e 'O' em qualquer posição do seu sobrenome. A letra 'A' deve vir antes da letra 'O'
select nome,sobrenome ,dt_contratacao from tb_funcionarios_empresa
where regexp_like(nome, '^.*a.*o.$'); 

-- 3.2 Funções String
-- 1.1) Mostre o nome dos funcionários com a sua quantidade de letras e coloque em ordem alfabética.
select nome, length(nome) as 'quantidade de letras' from tb_funcionarios_empresa
order by nome;

-- 1.2) Liste os sobrenomes dos funcionários em ordem alfabética com os 5 primeiros caracteres do cargo deles separados por " / ".
select concat(sobrenome, '/ ', substring(cargo, 1, 5)) as 'Sobrenome/Cargo'  from tb_funcionarios_empresa
order by sobrenome;

-- 3.2 Funções de data
-- 1.1) Mostre quem são os funcionarios que fazem aniversario esse mês
select nome as 'nome',sobrenome as 'sobrenome', dt_nascimento as 'data'
from tb_funcionarios_empresa
where month(dt_nascimento) = month(curdate());

-- 1.2)Construa um relatório de todos os funcionários terceirizados que fazem aniversário no segundo semestre do ano e seus respectivos cargos 
select nome as 'nome', dt_nascimento as ' data de nascimento', cargo as 'cargo' from tb_funcionarios_terceirizados
where month(dt_nascimento) in (7,8,9,10,11) 
order by month(dt_nascimento), day(dt_nascimento);



-- 3.2) Cáculo com data
-- 1.1) Crie um relatório com o nome dos funcionários, a data de contratação de cada um e a data correspondente a três meses antes do funcionário ser contratado
select nome as 'Nome', sobrenome as 'sobrenome',subdate(dt_contratacao, interval 3 month) as 'data de contratação'
from tb_funcionarios_empresa;

-- 1.2) Calcule o tempo em dias que cada funcionários está na empresa
select nome as 'Nome', dt_contratacao as 'Data', timestampdiff(day, dt_contratacao, curdate()) as 'Dias na empresa'
from tb_funcionarios_empresa;

-- 3.2 Funções de agregação 
-- 1.1 Mostre quem é o funcionário terceirizado mais velho.
select nome as 'Funcionário mais velho', min(dt_nascimento) from  tb_funcionarios_terceirizados;

-- 1.2 Calcule a média salarial dos funcionários terceirizados.
SELECT avg(salario) as 'média salarial dos tereceirizados' FROM tb_funcionarios_terceirizados;

-- 1.3) Mostre a quantidade de funcionários terceirizads que recebem de 4000 em diante
select count(*) as 'quantidade de funcionários acima de 4000' from tb_funcionarios_terceirizados 
where salario >= '4000';

-- 3.2 Cláusula Having
-- 1.1 Mostre o cargo e o salário dos funcionários da empresa, porém somente daqueles que recebem menos que 80000
select cargo as 'cargo', salario as 'salario'
 FROM tb_funcionarios_empresa
GROUP BY cargo
HAVING salario < 80000;

-- 1.2 Utilizando a Cláusula Having liste todos os funcionários que nasceram entre 1999 e 2001.
select  nome as 'nome', sobrenome as 'sobrenome' , dt_nascimento as 'data de nascimento'
FROM tb_funcionarios_empresa
group by  dt_nascimento
HAVING  dt_nascimento BETWEEN '1999-01-01' AND '2001-01-01'
order by dt_nascimento;

-- 3.2 Inner Join

-- 1.1) Liste os funcionarios os terceirizados junto com a respectiva empresa contrante
select nome as 'nome do funcionário',
nme_empresa as 'nome da empresa terceirizada'
from tb_funcionarios_terceirizados inner join tb_outras_empresas
on fk_cod_empresa = cod_empresa;

-- 1.2) Liste os funcionarios terceirizados junto com a empresa e o CNPJ vinculados aos mesmos
select nome as 'nome do funcionario',
cargo as 'cargo',
nme_empresa as 'Empresa Contratante',
cnpj as 'CNPJ da empresa'
from tb_funcionarios_terceirizados inner join tb_outras_empresas 
on fk_cod_empresa = cod_empresa
order by nome;

