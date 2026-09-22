# Banco de Dados — Sistema de Vendas

Projeto de banco de dados relacional desenvolvido em **MySQL** para representar a estrutura de um sistema de vendas.

A proposta é criar uma base organizada que possa futuramente ser integrada a uma aplicação em **Python**, uma API e uma interface web.

## 🎯 Objetivos

- Modelar clientes, funcionários, produtos e vendas.
- Aplicar relacionamentos com **PKs e FKs**.
- Trabalhar com consultas SQL, JOINs e agregações.
- Criar dados de teste para simular um cenário real.
- Gerar consultas e relatórios úteis para análise de vendas.
- Manter uma estrutura que possa evoluir para um sistema maior.

## 🗂️ Estrutura

```text
database-sistema-vendas/
├── database/
│   ├── 01_schema.sql
│   ├── 02_seed.sql
│   └── 03_views.sql
├── queries/
│   ├── 01_consultas_basicas.sql
│   └── 02_relatorios.sql
├── docs/
│   └── modelo-relacional.md
└── README.md
```

## 🛠️ Tecnologias

- MySQL 8+
- SQL
- Modelagem relacional
- Git/GitHub

## ▶️ Como executar

Execute os arquivos nesta ordem:

1. `database/01_schema.sql`
2. `database/02_seed.sql`
3. `database/03_views.sql`
4. As consultas da pasta `queries/`

O projeto foi pensado para fins de estudo, portfólio e evolução futura.

## 🚀 Próximos passos

- Integração com Python.
- Criação de uma API.
- Autenticação de usuários.
- Dashboard de vendas.
- Integração com frontend.
- Evolução para um sistema completo de gestão de vendas.

## 👨‍💻 Autor

**Miguel Ávila de Almeida**
