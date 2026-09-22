USE sistema_vendas;

CREATE OR REPLACE VIEW vw_resumo_vendas AS
SELECT
    v.id_venda,
    v.data_venda,
    c.nome AS cliente,
    f.nome AS funcionario,
    v.status,
    ROUND(SUM(iv.quantidade * iv.preco_unitario), 2) AS total_venda
FROM vendas v
INNER JOIN clientes c ON c.id_cliente = v.id_cliente
INNER JOIN funcionarios f ON f.id_funcionario = v.id_funcionario
INNER JOIN itens_venda iv ON iv.id_venda = v.id_venda
GROUP BY
    v.id_venda,
    v.data_venda,
    c.nome,
    f.nome,
    v.status;
