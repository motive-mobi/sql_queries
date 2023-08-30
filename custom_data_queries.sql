-- Quantos pedidos foram feitos por cada cliente?
select count(*) as total_orders, concat(c.Fname, ' ', c.Minit, ' ', c.Lname, ' ') as client, c.CPF as cpf from orders o join clients c on o.idOrderClient = c.idClient group by idClient;

-- Algum vendedor também é fornecedor?
select * from seller se join supplier su on se.CNPJ = su.CNPJ;

-- Relação de produtos fornecedores e estoques;
select p.Pname as product_name, p.category, quantity, location, su.SocialName as supplier_name, su.CNPJ as supplier_cnpj, su.contact as supplier_contact from product p join productSupplier ps on p.idProduct = ps.idPsProduct join
storageLocation sl on p.idProduct = sl.idLproduct join supplier su on ps.idPsSupplier = su.idSupplier;

-- Relação de nomes dos fornecedores e nomes dos produtos;
select concat(su.SocialName, ' ', su.CNPJ) as supplier_name, p.Pname as product_name from product p join productSupplier ps on p.idProduct = ps.idPsProduct join
supplier su on ps.idPsSupplier = su.idSupplier;