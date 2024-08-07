select cliente.nome as nomeCliente,cliente.email as emailCliente,cidade.nome as nomeCidade from cliente
inner join cidade
on cliente.idCidade = cidade.id;

select cliente.nome as nomeCliente,cliente.email as emailCliente,cidade.nome as nomeCidade,estado.nome as nomeEstado from cidade
inner join cliente
on cliente.idCidade = cidade.id
inner join estado
on cliente.idEstado = estado.id where estado.id = 1;

select cliente.nome as nomeCliente,cliente.email as emailCliente,cidade.nome as nomeCidade,estado.nome as nomeEstado from estado
inner join cliente
on cliente.idEstado = estado.id
inner join cidade
on cliente.idCidade = cidade.id where cliente.nome like '%o%';  -- and estado.id = 3 teste
      

select produto.nome as nomeProduto,marca.nome as nomeMarca,produto.preco from produto
inner join marca
on produto.idMarca = marca.idMarca where produto.preco between 1000 and 3000;

select produto.nome as nomeProduto,marca.nome as nomeMarca,categoria.nome from marca
inner join produto
on  marca.idMarca = produto.idMarca
inner join categoria
on produto.idCategoria = categoria.idCategoria where produto.nome like '%e%';




select * from categoria;
select * from produto;
select * from cidade;
select * from estado;
select * from cliente;
select * from marca;

