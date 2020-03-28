create function inc(val integer) returns integer as $$-- o retorno da funcao sera integer
begin 
	return val + 1;-- vai retorna o produto 
end; $$
language plpgsql;

select inc(1);


create function tamDepart(depto int) returns varchar(22) as $$-- o retorno da funcao sera integer
declare total_func int;
begin 
	total_func := (select count(*) from funcionario where num_depto=depto);
	if dp < 3 then
	return 'pequeno';-- vai retorna o produto
	elseif dp between 3 and 5 then 
	return 'medio';
	else 
	return 'grande';
	end if;
end; 
$$ language plpgsql;

select tmDepart(1);