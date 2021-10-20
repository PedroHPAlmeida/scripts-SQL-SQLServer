--SPACE
select 'Pedro' + SPACE(25);
select 'Pedro' + SPACE(25) + 'x';

declare @vNome varchar(50);
	set @vNome = 'Pedro Henrique';
select @vNome + SPACE(50 - len(@vNome));

select a.nome + space(60 - len(a.nome) - 1) + a.sexo, len(a.nome +  space(60 - len(a.nome) - 1) + a.sexo)
	from Alunos a;

--STRING_AGG (concatena os valores de expressoes de cadeia de caracteres e 
--coloca os valores do separador entre eles. O separador nao e adicionado ao final
--da cadeia de caracteres. Obs.: Os valores Nulls nao sao exibidos)

select STRING_AGG(convert(nvarchar(max), sexo), ',') as registro
	from Alunos;

select STRING_AGG(convert(nvarchar(max), ISNULl(sexo, 'N')), '-') as registro
	from Alunos;

select DATEPART(year, data_nascimento) as ano,
       STRING_AGG(convert(nvarchar(max), isnull(sexo, '0')), '-') as registro 
	from Alunos
	group by DATEPARt(year, data_nascimento)
	order by 1;

--within
select datepart(year, data_nascimento) as ano,
       string_agg(convert(nvarchar(max), isnull(sexo, '0')), '-')
			within group(order by datepart(year, data_nascimento) asc) as registro
	from Alunos
	group by datepart(year, data_nascimento);

--STUFF	
select STUFF('abcdefghi', 3, 5,'12345');

declare @vProcura varchar(50);
declare @vSubstit varchar(30);
	set @vProcura = 'Eu, xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, autorizo...';
	set @vSubstit = 'Pedro Henrique'

select stuff(@vProcura, 5, 30, @vSubstit + space(30 - len(@vSubstit))) as termo;
select stuff(@vProcura, 5, 30, trim(@vSubstit + space(30 - len(@vSubstit)))) as termo;