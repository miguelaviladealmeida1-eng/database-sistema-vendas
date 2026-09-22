USE sistema_vendas;

INSERT INTO categorias (nome) VALUES
('Eletrônicos'),
('Informática'),
('Acessórios'),
('Periféricos');

INSERT INTO clientes (nome, email, telefone, cidade, estado) VALUES
('Ana Souza', 'ana.souza@email.com', '11990000001', 'Embu das Artes', 'SP'),
('Carlos Oliveira', 'carlos.oliveira@email.com', '11990000002', 'São Paulo', 'SP'),
('Juliana Santos', 'juliana.santos@email.com', '11990000003', 'Taboão da Serra', 'SP'),
('Rafael Lima', 'rafael.lima@email.com', '11990000004', 'Osasco', 'SP'),
('Mariana Costa', 'mariana.costa@email.com', '11990000005', 'Itapecerica da Serra', 'SP');

INSERT INTO funcionarios (nome, cargo) VALUES
('Miguel Almeida', 'Vendedor'),
('Lucas Ferreira', 'Vendedor'),
('Beatriz Martins', 'Gerente');

INSERT INTO produtos (nome, preco, estoque, id_categoria) VALUES
('Notebook Lenovo', 3499.90, 8, 2),
('Mouse Logitech', 129.90, 25, 3),
('Teclado Mecânico', 249.90, 15, 4),
('Monitor 24 Polegadas', 899.90, 10, 2),
('Headset Gamer', 299.90, 18, 4),
('SSD 1TB', 549.90, 12, 2),
('Webcam Full HD', 199.90, 20, 3),
('Cabo HDMI', 39.90, 40, 3);

INSERT INTO vendas (data_venda, id_cliente, id_funcionario, status) VALUES
('2026-09-01 10:30:00', 1, 1, 'PAGA'),
('2026-09-02 14:15:00', 2, 2, 'PAGA'),
('2026-09-03 09:45:00', 3, 1, 'PAGA'),
('2026-09-04 16:20:00', 4, 3, 'PAGA'),
('2026-09-05 11:10:00', 5, 2, 'CANCELADA');

INSERT INTO itens_venda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 3499.90),
(1, 2, 2, 129.90),
(2, 4, 1, 899.90),
(2, 5, 1, 299.90),
(3, 6, 1, 549.90),
(3, 7, 2, 199.90),
(4, 3, 2, 249.90),
(4, 8, 3, 39.90),
(5, 2, 1, 129.90);
