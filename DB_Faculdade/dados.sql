USE db_empresa;
-- Nossa Empresa

-- Presidente:
insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, departamento, cargo, salario) 
values (1, 'Thiago', 'Assis', '1999-03-23', '2011-04-15', 10, 'Fundador', '400000');

-- Diretores Gerais:
insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, departamento, cargo, salario) 
values (2, 'Isabela', 'Saraiva', '2000-02-16', '2011-05-16', 10, 'Fundador', '350000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, departamento, cargo, salario) 
values (3, 'Gabriel', 'Caldas', '1997-10-12', '2011-05-16', 1, 'Fundador', '350000');

-- Desenvolvedores:
insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (1234, 'Caue', 'Moura', '1987-11-11', '2010-04-18', 1, 'Desenvolvedor', 15,'75000');

insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (3456, 'Whindersson', 'Nunes', '1995-01-05', '2012-02-25', 1, 'Desenvolvedor', 15, '40000');

insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6789, 'Maicon', 'Kuster', '1998-05-10', '2017-06-15', 1, 'Desenvolvedor', 15, '40000');

insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (3459, 'Kéfera', 'Buchmann', '1993-01-25', '2010-02-05', 1, 'Desenvolvedor', 15, '40000');

-- Engenheiros: 
insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (1010, 'Júlio', 'Cocielo', '1993-05-25', '2015-01-10', 6, 'Engenheiro', 14, '125000');

insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (1011, 'João Carlos', 'Azevedo', '1995-07-20', '2013-12-24', 6, 'Engenheiro', 14, '125000');

insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (1012, 'João Pedro', 'Pinto', '1987-11-04', '2017-06-18', 6, 'Engenheiro', 14, '125000');

insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (1013, 'João Paulo', 'Fernandez', '1997-07-22', '2011-12-31', 6, 'Engenheiro', 14, '125000');

insert into tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (1014, 'Maju', 'Trindade', '1998-06-13', '2015-03-10', 6, 'Engenheiro', 14, '125000');

--  Analistas de sistema:
insert tb_funcionarios_empresa(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, 	departamento, salario) 
values (6456, 'Christian', 'Figueiredo', '1994-06-06', '2014-05-19', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6457, 'Pedro', 'Orochi', '1999-06-10', '2019-05-19', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6459, 'Lucas', 'Lira', '1994-04-18', '2014-05-06', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6460, 'Felipe', 'Castanhari', '1989-12-20', '2013-05-06', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6462, 'Júlio César', 'Neves', '1991-05-13', '2010-11-24', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6463, 'João Miguel', 'Cardoso', '1985-11-05', '2015-09-12', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6464, 'Joana Clara', 'Souza', '1955-07-18', '2014-02-16', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6466, 'Jordana', 'Oliveira', '1972-01-04', '2018-08-26', 40, 'Analista', 26, '50000');

insert tb_funcionarios_empresa (identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario) 
values (6468, 'João Davi', 'Ferreira', '1999-03-24', '2011-04-17', 40, 'Analista', 26, '50000');

-- empresas de fora
    insert into tb_outras_empresas(cod_empresa,nme_empresa,cnpj)
    values(4570,'PassooPano','0703782');
    
    replace into tb_outras_empresas(cod_empresa,nme_empresa,cnpj)
    values(4571,'CantinaDi','0403751');

-- Funcionarios de outra empresa:
-- Limpeza:     
    insert INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa)
	values (4526, 'João Victor', 'Lemos', '1971-07-28', '2011-03-19', 92, 'Limpeza', 84, '3000.00',4570);
    

	INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (4527, 'Victor', 'Moura', '1981-04-18', '2013-01-07', 92, 'Limpeza', 84, '3000.00',4570);
    
    
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (8528, 'Luiza', 'Fernandes', '1981-06-01', '2013-04-06', 92, 'Limpeza', 84, '3000.00',4570);
    
 -- Cantina:   
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (4828, 'Paulo', 'Mesquita', '1989-10-03', '2012-05-06', 72, 'Lanchonete', 94, '4000.00',4571);
    
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (4928, 'Willian', 'Martins', '1996-09-13', '2010-04-16', 72, 'Lanchonete', 94, '4000.00',4571);    

    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5028, 'Lucas', 'Caetano', '1996-07-26', '2010-07-11', 72, 'Lanchonete', 94, '4000.00',4571);

	INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5029, 'Matheus', 'Siqueira', '1995-08-01', '2011-12-17', 72, 'Lanchonete', 94, '4000.00',4571);
    
	INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5030, 'Thiago', 'Lemos', '2000-10-16', '2017-09-11', 72, 'Lanchonete', 94, '4223.00',4571);
    
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5031, 'Carlos', 'Borges', '1998-08-09', '2016-08-29', 72, 'Lanchonete', 94, '4400.00',4571);
    
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5032, 'Pietro', 'Ribeiro', '1999-03-22', '2018-08-21', 72, 'Lanchonete', 94, '4500.00',4571);
    
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5033, 'Travis', 'Silva', '1997-06-04', '2020-10-31', 72, 'Lanchonete', 94, '4200.00',4571);
    
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5034, 'Marcelo', 'Rodrigues', '2001-12-15', '2017-07-23', 72, 'Lanchonete', 94, '5000.00',4571);
    
    INSERT INTO tb_funcionarios_terceirizados(identidade, nome, sobrenome, dt_nascimento, dt_contratacao, cod_gerente, cargo, departamento, salario,fk_cod_empresa) 
	values (5835, 'Breno', 'Almeida', '1996-10-12', '2016-11-28', 72, 'Lanchonete', 94, '4300.00',4571);

