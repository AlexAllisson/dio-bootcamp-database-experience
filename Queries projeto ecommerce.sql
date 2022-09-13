-- Recuperações simples com SELECT Statement
select * from Request;

-- Filtros com WHERE Statement
select * from Request where idRequest='5';

-- Crie expressões para gerar atributos derivados
select (sum(avaluation)+sum(pValue)) as Valuetotal from product;

-- Defina ordenações dos dados com ORDER BY
select idProduct, pValue from product order by pValue desc;

-- Condições de filtros aos grupos – HAVING Statement
select Category, sum(pValue) from product group by pValue having count(pValue)<100;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select Category, avaluation, pValue,idProduct
    from product 
    inner join storageLocation 
    on idProduct = idLstorage;
    
 -- PERGUNTAS
-- 1) Quantos pedidos foram feitos por cada cliente?
select Count(idRquestClient), Fname
    from Request
    inner join Clients
    on  idClient = idRquestClient
    group by idClient, Fname;
    
-- 2) Algum vendedor também é fornecedor?
select CNPJ from supplier  where CNPJ in (select CNPJ from seller);

 -- 3) Relação de produtos fornecedores e estoques;
select socialName, idProduct, quantity
    from product 
    inner join productSupplier on idPsProduct = idProduct
    inner join supplier on idSupplier = idSupplier
    inner join storageLocation on idLstorage = idProduct;
    
 -- 4) Relação de nomes dos fornecedores e nomes dos produtos;
 select socialName as supplier, Pname as product
    from product
    inner join  productSupplier on idPsProduct = idProduct
    inner join supplier on  idSupplier = idProduct;
    