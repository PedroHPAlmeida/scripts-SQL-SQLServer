--Opera��es Matem�ticas
--Soma
select 1 + 2 as Resultado;
select 458.99 + 899 + 7.77 Resultado;

--Subtra��o
select 233 - 78.99 Resultado;
select 233 - (78.99 + 333) Resultado;

--Divis�o
select 50 / 2 as Resultado;
select 49 / 2 as Resultado;
select 49.0 / 2 as Resultado;
select 49.99 / 2 as Resultado;

--Multiplica��o
select 50 * 2 as Resultado;
select 50.88 * 3 as Resultado;

--ATEN��O - isso s� vale para o Oracle
--select 50 * 2 from dual;

--Potencia��o
select SQUARE(2) as Resultado; --Retorna o quadrado de um n�mero
select POWER(3, 3) as Resultado;
select POWER(2, 8) as Resultado;

--Raiz quadrada
select SQRT(16) as Resultado;
select SQRT(7) as Resultado;

--Porcentagem
select 100 * 1.1 as Resultado;
select 100 + (100 * 0.1) as Resultado;
select 100 * 0.9 as Resultado;
select 100 * 0.1 as Resultado;

--ABS valor absoluto - sem sinal
select ABS(-100) as Resultado;
select ABS(100-999) as Resultado;

--PI
select PI() as Valor_PI;

--Data atual
select GETDATE() as Resultado;

--Signal
select SIGN(-10) as Resultado; --retorna -1 para valores negativos
select SIGN(10) as Resultado; --retorna 1 para valores positivos
select SIGN(null) as Resultado; --retorna null para null
select SIGN(0) as Resultado; --retorna 0 para o 0

--Fun��o de soma
select SUM(1.500 + 7777) as Resultado; --nesse caso n�o h� necessidade da fun��o SUM
--Agrega��o