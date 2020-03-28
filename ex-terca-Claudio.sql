select distinct salario from funcionario as f;
-- listando salarios distintos

select all salario from funcionario as f;
-- seleciona todos os salarios

select f.primeiro_nome, f.ultimo_nome, f.cpf,
'Gerente' as tipo from departamento as d, funcionario as f where d.cpf_gerente = f.cpf -- seleciona os gerentes das tabelas
union-- unindo tabelas
select distinct f.primeiro_nome, f.ultimo_nome, f.cpf, 'Funcionario' as tipo 
from trabalha_em as t, funcionario as f where t.cpf_funcionario= f.cpf;
-- seleciona os funcionarios 

select f.primeiro_nome, f.cpf from funcionario as f 
except --
select f.primeiro_nome, f.cpf from departamento as d, funcionario as f where d.cpf_gerente = f.cpf;
-- tira todos os gerentes da tabela

select * from funcionario as f order by f.primeiro_nome;-- ordena em a tab em ordem crecente

select * from funcionario as f order by f.salario desc;-- ordena a tabela por salario em ordem descrecente

select * from funcionario as f order by f.primeiro_nome;-- ordenar por nome


select * from funcionario as f order by f.salario desc;-- ordenar por salario 
select * from funcionario where cpf_supervisor is null;-- funcionario q nao tem suporvisori


--- ex 1
select cpf, dt_nascimento, endereco from funcionario where cpf = '98765432112' ;

--- ex 2

select * from funcionario as f where f.salario > 1800;

-- ex 3 
select primeiro_nome, nome_meio, cpf, salario from funcionario as f where f.ultimo_nome = 'Ferreira' and f.sexo = 'M';

-- ex 4
select primeiro_nome, nome_meio, ultimo_nome, cpf, dt_nascimento, endereco, sexo from funcionario as f where f.dt_nascimento >= '1999-01-01'  and f.dt_nascimento >= '1989-01-01'; 

-- ex 5
select primeiro_nome, nome_meio, ultimo_nome, cpf, dt_nascimento, endereco, sexo from funcionario as f where
salario > 1800 and sexo ='M' and ativo = 1 and f.dt_nascimento >= '1989-01-01' and f.dt_nascimento >= '1984-01-01';

-- ex 6 
select d.* from dependente as d join funcionario as f on (f.cpf=d.cpf_funcionario) where d.cpf_funcionario = '98765432112';

-- ex 7
select primeiro_nome, nome_meio, ultimo_nome from funcionario as f join projeto as p on (f.num_depto=p.num_depto) where p.nome_projeto='ProdutoX';

-- ex 8

select primeiro_nome, nome_meio, ultimo_nome, (f.salario * 1.3 + 500)bonus
from funcionario as f 
join departamento as d on (f.num_depto=d.num_depto) 
where d.nome_departamento='TI';

-- ex 9
select primeiro_nome || ' ' || coalesce(nome_meio, '') || ' ' || ultimo_nome, (endereco like 'Avenida_%')moram
from funcionario;

-- ex 10 

select distinct primeiro_nome, nome_meio,ultimo_nome, cpf 
from funcionario as f 
join trabalha_em as t on (f.cpf=t.cpf_funcionario);

-- ex 11
select primeiro_nome, nome_meio, ultimo_nome, cpf 
from funcionario as f left join trabalha_em as t on (f.cpf=t.cpf_funcionario) where f.cpf_supervisor is not null;

-- ex 12

select (current_date - dt_nascimento)dias_vividos, primeiro_nome from funcionario; 


-- ex 13 

select distinct primeiro_nome from funcionario as f left join trabalha_em as t on (f.cpf=t.cpf_funcionario)
left join departamento as d on (f.num_depto=d.num_depto);