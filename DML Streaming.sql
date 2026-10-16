USE streaming_db;


INSERT INTO planos (nome, valor_mensal, qualidade, telas) VALUES
('Básico', 25.90, 'HD', 1),
('Padrão', 39.90, 'Full HD', 2),
('Premium', 55.90, '4K', 4);


INSERT INTO assinantes (id_plano, nome, email, data_assinatura, horas_assistidas) VALUES 
(1, 'Ana Souza', 'ana.souza@email.com', '2026-01-05', 32),
(3, 'Bruno Lima', 'bruno.lima@email.com', '2026-01-12', 85),
(2, 'Carla Mendes', 'carla.mendes@email.com', '2026-01-20', 47),
(1, 'Diego Alves', 'diego.alves@email.com', '2026-02-03', 18),
(2, 'Eduarda Rocha', 'eduarda.rocha@email.com', '2026-02-15', 56),
(3, 'Fábio Nunes', 'fabio.nunes@email.com', '2026-02-28', 120),
(1, 'Gabriela Pires', 'gabriela.pires@email.com', '2026-03-10', 25),
(2, 'Henrique Dias', 'henrique.dias@email.com', '2026-03-22', 39),
(3, 'Isabela Costa', 'isabela.costa@email.com', '2026-04-05', 94),
(1, 'João Ferreira', 'joao.ferreira@email.com', '2026-04-18', 41),
(2, 'Larissa Martins', 'larissa.martins@email.com', '2026-05-02', 63),
(3, 'Marcos Ribeiro', 'marcos.ribeiro@email.com', '2026-05-16', 77);