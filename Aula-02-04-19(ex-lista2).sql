-- ex 18 
select d.nome_dependente, count(d.cpf_funcionario=f.cpf)funcionario, f.primeiro_nome,f.cpf
from dependente d 
left join funcionario f 
on (f.cpf=d.cpf_funcionario)
group by d.nome_dependente, f.primeiro_nome,f.cpf;

-- ex 19