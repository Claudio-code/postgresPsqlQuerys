select * from funcionario where primeiro_nome = 'Paulo' and nome_meio = 'a' and ultimo_nome = 'Lima';

select f.primeiro_nome, d.nome_departamento from funcionario as f, departamento as d where f.num_depto = d.num_depto;
-- exiba o nome dos funcionarios q tem o num do departamento q corresponde 

select d.num_depto, d.nome_departamento, l."local" from departamento as d, localizacoes_departamento as l where d.num_depto = l.num_depto;
-- localizar nome de departamentos e seus locais

select f.primeiro_nome, f.ultimo_nome, d.nome_departamento, s.primeiro_nome as gerente from funcionario as f, departamento as d, funcionario as s where f.primeiro_nome ='Paulo' and f.num_depto = d.num_depto and d.cpf_gerente = s.cpf;
-- faz a juncao da tab funcionario e da tab gerente | mostrando o nome dos gerentes se o funcionario esta ativo e se ele é gerente 

 select * from funcionario, departamento;
 -- crusa a tab de funcionario com tab departamento o nde todos os funcionrios tem funcionario 

select * from funcionario where endereco like 'Rua_S%';
-- organizar a tab som pesquisa onde a cada char digitado ele organisa a table

select * from  funcionario as f where f.cpf like '__________2';
-- lista fun com o ultimo digito 2 no cpf

select * from primeiro_nome, salario * 1.1 as "Salario + 10%" from funcionario;

select dt_nascimento, dt_nascimento + 1 as dt_nasc_id, dt_nascimento + interval '1 day 01:00:00' dt_nasc_id_1h from funcionario where cpf = '98765432112';

select * from funcionario as f where f.salario between 2000 and 3000 and dt_nascimento between '1990-01-01' and '2000-01-01';
-- acha os funcionarios com salario entre 2000 e 3000 q naceram nesse intervalo de dt

select primeiro_nome || ' ' || coalesce(nome_meio, '') || ' ' || ultimo_nome from funcionario;
--juntando nomes 