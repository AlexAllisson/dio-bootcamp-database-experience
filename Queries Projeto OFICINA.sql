-- Recuperações simples com SELECT Statement
select * from Cliente;

-- Filtros com WHERE Statement
select * from Cliente where Nome like 'R%';

-- Crie expressões para gerar atributos derivados
select (sum(Valor)+sum(Valor)) as TabelaPeca from OrdemdeServico;

-- Defina ordenações dos dados com ORDER BY
select Cor as Cores from Servico order by Cor desc;

-- Condições de filtros aos grupos – HAVING Statement
select Nome from Mecanico group by Especialidade having (Especialidade)='Mecanica Hidráulico';

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

select Nome, CPF,TipoCarro,TipoServiço
from Cliente
inner join Servico
on idCliente = idSCliente;

    
   