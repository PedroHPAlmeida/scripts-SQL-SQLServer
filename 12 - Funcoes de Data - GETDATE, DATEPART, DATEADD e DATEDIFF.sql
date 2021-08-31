--Tipos de Data e Hora no T-SQL

--Datetime - a partir de 01/01/1753 - Armazena até centésimos de segundos
--SmallDateTime - a partir de 01/01/1900 - Armazena até segundos

--GetDate
select GETDATE();

select convert(char, getdate(), 103); --Formato dd/mm/aaaa
select convert(char, getdate(), 102); --Formato aaaa.mm.dd
select convert(char, getdate(), 1); --Formato mm/dd/aa -Consultar formatos em Tabela ANSI SQL

select day(getdate()) as Dia;
select month(getdate()) as Mes;
select year(getdate()) as Ano;
select year('09/02/2001') as Ano;

--DatePart
select DATEPART(year, getdate()) as Ano;
select DATEPART(month, getdate()) as Mes;
select DATEPART(day, getdate()) as Dia;

select DATEPART(year, '09/02/2001');

select DATEPART(year, data_nascimento) as Ano from Alunos;
select distinct DATEPART(year, data_nascimento) as Ano from Alunos;
select distinct DATEPART(year, data_nascimento) as Ano from Alunos order by 1;

--DateAdd
select DATEADD(year, -2, getdate()); --subtrai 2 anos da data atual
select CONVERT(date, dateadd(year, -2, getdate())); --convertendo para data o resultado da instrução acima

select DATEADD(month, 3, getdate()); --soma 3 meses a data atual
select CONVERT(date, DATEADD(month, 3, getdate()));

select DATEADD(day, 28, getdate()); --soma 28 dias a data atual
select CONVERT(date, DATEADD(day, 28, getdate()));

select DATEADD(hour, 3, GETDATE()); --soma 3 horas a data atual
select CONVERT(smalldatetime, DATEADD(hour, 3, GETDATE()));

select CONVERT(datetime, DATEADD(hour, 3, GETDATE())) as DateT,
       CONVERT(smalldatetime, DATEADD(hour, 3, GETDATE())) as SmalD; 

--DateDiff ---Diereça entre 2 datas
select DATEDIFF(year, getdate(), dateadd(year, 2, GETDATE())) as Anos;
select DATEDIFF(month, getdate(), dateadd(year, 2, getdate()))as Meses;
select DATEDIFF(day, getdate(), dateadd(year, 3, getdate())) as Dias;

select DATEDIFF(hour, '09/02/2001', getdate()) as Horas_Vida;
select DATEDIFF(minute, '09/02/2001', getdate()) as Minutos_Vida;
select DATEDIFF(second, '09/02/2001', getdate()) as Segundos_Vida;