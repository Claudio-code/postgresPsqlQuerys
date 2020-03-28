select * from funcionario;

select d.nome_departamento, count(*) 
from funcionario f 
left join departamento d 
on (f.num_depto=d.num_depto)
group by d.nome_departamento;-- conta os funcionarios de uma empresa por departamento
-------------------------
select d.nome_departamento, count(*) as total_func 
from funcionario f 
left join departamento d 
on (f.num_depto=d.num_depto)
group by d.nome_departamento -- a msm coisa da linha de cima so q por ordem
order by d.nome_departamento; 

select p.nome_projeto,
sum(horas) as tot_horas
from trabalha_em t
left join projeto p
on (p.num_projeto=t.num_projeto)
group by p.nome_projeto-- organiza por nome de prjeto
having sum(horas) > 30.5;-- clausua q agrega condicoes a operacao
