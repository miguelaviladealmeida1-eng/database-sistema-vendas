# Modelo Relacional

## Entidades principais

### categorias
Armazena as categorias dos produtos.

### produtos
Armazena os produtos disponíveis para venda e possui uma FK para `categorias`.

### clientes
Armazena os dados dos clientes.

### funcionarios
Representa os funcionários responsáveis pelas vendas.

### vendas
Registra cada venda e relaciona um cliente a um funcionário.

### itens_venda
Representa os produtos presentes em cada venda.

## Relacionamentos

- Uma categoria possui vários produtos.
- Um cliente pode possuir várias vendas.
- Um funcionário pode registrar várias vendas.
- Uma venda possui vários itens.
- Um produto pode aparecer em vários itens de venda.

A tabela `itens_venda` funciona como entidade associativa entre `vendas` e `produtos`, permitindo representar uma relação de muitos-para-muitos.

## Fluxo

```text
CATEGORIAS 1 ─── N PRODUTOS
CLIENTES   1 ─── N VENDAS N ─── 1 FUNCIONARIOS
VENDAS     1 ─── N ITENS_VENDA N ─── 1 PRODUTOS
```

## Conceitos demonstrados

- Primary Key
- Foreign Key
- NOT NULL
- UNIQUE
- CHECK
- ENUM
- Índices
- INNER JOIN
- WHERE
- LIKE
- BETWEEN
- GROUP BY
- HAVING
- SUM
- COUNT
- VIEW
