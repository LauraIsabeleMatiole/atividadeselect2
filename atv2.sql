-- 1
select sigla_depto, qtdfuncionariosdepto from departamento
where qtdfuncionariosdepto>=15;
-- --------------------------------------------------------

-- 2
select nome_funcionario from funcionario
where salario>4000;
-- --------------------------------------------------------

-- 3
select avg(salario) as salario_medio from funcionario;
-- --------------------------------------------------------

-- 4
select round(avg(salario),2) as salario_medio from funcionario;
-- --------------------------------------------------------

-- 5
select nome_funcionario from funcionario
where nome_funcionario = "Gomes";
-- --------------------------------------------------------

-- 6
select nome_funcionario, salario*12 as salario_anual from funcionario;
-- --------------------------------------------------------

-- 7
select * from funcionario;
select nome_funcionario from funcionario 
where salario in (select max(salario) from funcionario);
-- --------------------------------------------------------

-- 8
select * from funcionario order by salario desc limit 2;
-- --------------------------------------------------------

-- 9 
select nome_funcionario, cargo, data_admicao from funcionario order by data_admicao asc;
-- --------------------------------------------------------

-- 10
select cargo, sigla_depto, salario from funcionario
where salario>=5000;
-- --------------------------------------------------------

-- 11
select sigla_depto, cargo, salario from funcionario 
where salario > (select avg(salario) from funcionario);

-- --------------------------------------------------------

-- 12
select sigla_depto, nome_funcionario from funcionario
where nome_funcionario like "%Costa";
-- --------------------------------------------------------

-- 13
select sigla_depto from funcionario  
where salario > (select avg(salario) from funcionario) 
group by sigla_depto;

-- --------------------------------------------------------
