USE sistema_vendas;

-- 1. Produtos com suas categorias
SELECT
    p.id_produto,
    p.nome AS produto,
    p.preco,
    p.estoque,
    c.nome AS categoria
FROM produtos p
INNER JOIN categorias c ON c.id_categoria = p.id_categoria
ORDER BY p.nome;

-- 2. Produtos com preço entre R$ 100 e R$ 600
SELECT *
FROM produtos
WHERE preco BETWEEN 100 AND 600
ORDER BY preco;

-- 3. Clientes de cidades de São Paulo
SELECT nome, email, cidade
FROM clientes
WHERE estado = 'SP'
ORDER BY nome;

-- 4. Busca de produtos por nome
SELECT id_produto, nome, preco
FROM produtos
WHERE nome LIKE '%Mouse%';

-- 5. Vendas com cliente e funcionário
SELECT
    v.id_venda,
    v.data_venda,
    c.nome AS cliente,
    f.nome AS funcionario,
    v.status
FROM vendas v
INNER JOIN clientes c ON c.id_cliente = v.id_cliente
INNER JOIN funcionarios f ON f.id_funcionario = v.id_funcionario
ORDER BY v.data_venda;

-- 6. Itens detalhados de uma venda
SELECT
    iv.id_venda,
    p.nome AS produto,
    iv.quantidade,
    iv.preco_unitario,
    iv.quantidade * iv.preco_unitario AS subtotal
FROM itens_venda iv
INNER JOIN produtos p ON p.id_produto = iv.id_produto
WHERE iv.id_venda = 1;
