select primeiro_nome from funcionario as f
left join departamento as d on (f.num_depto=d.num_depto)
where d.nome_departamento = 'Matriz';

select * from departamento;

insert into departamento(cpf_gerente,nome_departamento, num_depto)
values('12345678912', 'zona', 8);


delete from departamento as d where d.nome_departamento='zona';

select * from projeto;
select * from trabalha_em;

select primeiro_nome, nome_meio from funcionario as f 
where exists(select cpf from trabalha_em as t where t.cpf_funcionario=f.cpf);
