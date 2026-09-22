USE sistema_vendas;

-- 1. Total vendido por venda, ignorando vendas canceladas
SELECT
    v.id_venda,
    c.nome AS cliente,
    ROUND(SUM(iv.quantidade * iv.preco_unitario), 2) AS total
FROM vendas v
INNER JOIN clientes c ON c.id_cliente = v.id_cliente
INNER JOIN itens_venda iv ON iv.id_venda = v.id_venda
WHERE v.status = 'PAGA'
GROUP BY v.id_venda, c.nome
ORDER BY total DESC;

-- 2. Faturamento total das vendas pagas
SELECT
    ROUND(SUM(iv.quantidade * iv.preco_unitario), 2) AS faturamento
FROM vendas v
INNER JOIN itens_venda iv ON iv.id_venda = v.id_venda
WHERE v.status = 'PAGA';

-- 3. Produtos mais vendidos
SELECT
    p.nome AS produto,
    SUM(iv.quantidade) AS quantidade_vendida
FROM itens_venda iv
INNER JOIN produtos p ON p.id_produto = iv.id_produto
INNER JOIN vendas v ON v.id_venda = iv.id_venda
WHERE v.status = 'PAGA'
GROUP BY p.id_produto, p.nome
ORDER BY quantidade_vendida DESC;

-- 4. Clientes que possuem compras pagas
SELECT
    c.nome AS cliente,
    COUNT(v.id_venda) AS quantidade_compras
FROM clientes c
INNER JOIN vendas v ON v.id_cliente = c.id_cliente
WHERE v.status = 'PAGA'
GROUP BY c.id_cliente, c.nome
HAVING COUNT(v.id_venda) >= 1
ORDER BY quantidade_compras DESC;

-- 5. Produtos com estoque baixo
SELECT nome, estoque
FROM produtos
WHERE estoque <= 10
ORDER BY estoque;

-- 6. Faturamento por categoria
SELECT
    c.nome AS categoria,
    ROUND(SUM(iv.quantidade * iv.preco_unitario), 2) AS faturamento
FROM categorias c
INNER JOIN produtos p ON p.id_categoria = c.id_categoria
INNER JOIN itens_venda iv ON iv.id_produto = p.id_produto
INNER JOIN vendas v ON v.id_venda = iv.id_venda
WHERE v.status = 'PAGA'
GROUP BY c.id_categoria, c.nome
ORDER BY faturamento DESC;

-- 7. Consulta usando a VIEW criada no projeto
SELECT *
FROM vw_resumo_vendas
WHERE status = 'PAGA'
ORDER BY total_venda DESC;
