--inserindo Sala (15 no total)
INSERT INTO sala (numerosala, tamanho) VALUES
(101, 20),
(102, 15),
(103, 25),
(104, 30),
(105, 18),
(106, 22),
(107, 12),
(108, 10),
(109, 16),
(110, 28),
(111, 14),
(112, 21),
(113, 32),
(114, 17),
(115, 26);

--inserindo Departamento (5 no total)
INSERT INTO departamento (nomedepartamento, telefonedepartamento, enderecodepartamento) VALUES
('Departamento A', '123456789', '123 Main Street'),
('Departamento B', '987654321', '456 Elm Avenue'),
('Departamento C', '555555555', '789 Oak Lane'),
('Departamento D', '111111111', '321 Pine Road'),
('Departamento E', '999999999', '654 Maple Drive');

--inserindo Medico (8 no total)
INSERT INTO medico (crm, nomemedico, genero, salario, numero_sala, nome_departamento) VALUES
(123456, 'Dr. Smith', 'M', 8000.00, 101, 'Departamento A'),
(234567, 'Dr. Johnson', 'M', 7500.00, 102, 'Departamento B'),
(345678, 'Dr. Williams', 'M', 8500.00, 103, 'Departamento C'),
(456789, 'Dr. Brown', 'M', 9000.00, 104, 'Departamento D'),
(567890, 'Dr. Davis', 'M', 7000.00, 105, 'Departamento E'),
(678901, 'Dr. Martinez', 'F', 8200.00, 106, 'Departamento A'),
(789012, 'Dr. Anderson', 'M', 7800.00, 107, 'Departamento B'),
(890123, 'Dr. Taylor', 'F', 8500.00, 108, 'Departamento C');

--inserindo Atendente (5 no total)
INSERT INTO atendente (cpfatendente, nomeatendente, telefoneatendente, nome_departamento, salario) VALUES
(1234567, 'John Doe', '123456789', 'Departamento A', 2000.00),
(2345678, 'Jane Smith', '987654321', 'Departamento B', 2500.00),
(3456789, 'Michael Johnson', '555555555', 'Departamento C', 3000.00),
(4567890, 'Emily Williams', '111111111', 'Departamento D', 3500.00),
(5678901, 'William Brown', '999999999', 'Departamento E', 4000.00);

--inserindo Paciente (20 no total)
INSERT INTO paciente (cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES
(20001, 'John Doe', '123456789', 123456),
(20002, 'Jane Smith', '987654321', 234567),
(20003, 'Michael Johnson', '555555555', 345678),
(20004, 'Emily Williams', '111111111', 456789),
(20005, 'William Brown', '999999999', 567890),
(20006, 'Sophia Davis', '123456780', 678901),
(20007, 'Liam Martinez', '987654322', 789012),
(20008, 'Olivia Anderson', '555555556', 890123),
(20009, 'Noah Taylor', '111111112', 123456),
(20010, 'Ava Wilson', '999999990', 234567),
(20011, 'James Jackson', '123456781', 345678),
(20012, 'Isabella White', '987654323', 456789),
(20013, 'Benjamin Harris', '555555557', 567890),
(20014, 'Mia Miller', '111111113', 678901),
(20015, 'Ethan Moore', '999999991', 789012),
(20016, 'Charlotte Lee', '123456782', 890123),
(20017, 'Alexander Turner', '987654324', 123456),
(20018, 'Amelia Hall', '555555558', 234567),
(20019, 'Henry Adams', '111111114', 345678),
(20020, 'Luna Bennett', '999999992', 456789);

--inserindo Equipamento (10 no total)
INSERT INTO equipamento (codigo, medico_crm) VALUES
(1001, 123456),
(1002, 234567),
(1003, 345678),
(1004, 456789),
(1005, 567890),
(1006, 678901),
(1007, 789012),
(1008, 890123),
(1009, 123456),
(1010, 234567);

--inserindo Funcao (10 no total)
INSERT INTO funcao (aplicacao, codigo_equipamento, descricao) VALUES
('Monitoring', 1001, 'Function for monitoring equipment operation'),
('Diagnostic', 1002, 'Function for diagnostic imaging'),
('Therapy', 1003, 'Function for therapeutic applications'),
('Logging', 1004, 'Function for data logging'),
('Remote Control', 1005, 'Function for remote control'),
('Testing', 1006, 'Function for equipment testing'),
('Maintenance', 1007, 'Function for equipment maintenance'),
('Calibration', 1008, 'Function for equipment calibration'),
('Research', 1009, 'Function for research purposes'),
('Data Analysis', 1010, 'Function for data analysis');

--inserindo Urgencia (2 no total)
INSERT INTO urgencia (departamento_urgencia) VALUES
('Departamento A'),
('Departamento B');

--inserindo Especializada (3 no total)
INSERT INTO especializada (departamento_especializada) VALUES
('Departamento C'),
('Departamento D'),
('Departamento E');

--inserindo Tipo de Especializacao (3 no total)
INSERT INTO tipo_de_especializacao (departamento_especializacao, tipos_de_especializacao) VALUES
('Departamento C', 'Cardiologia'),
('Departamento D', 'Neurologia'),
('Departamento E', 'Urologia');

--inserindo Inspetor (3 no total)
INSERT INTO inspetor (cpfinspetor, nomeinspetor) VALUES
(1234567, 'John Doe'),
(2345678, 'Jane Smith'),
(3456789, 'Michael Johnson');

--inserindo Medicamento (5 no total)
INSERT INTO medicamento (nomemedicamento, bula) VALUES
('Aspirina', 'Bula da Aspirina'),
('Paracetamol', 'Bula do Paracetamol'),
('Ibuprofeno', 'Bula do Ibuprofeno'),
('Dipirona', 'Bula da Dipirona'),
('Omeprazol', 'Bula do Omeprazol');

--inserindo Esp Inspetcao Insp (3 no total)
INSERT INTO esp_inspecao_insp (cpf_inspetor, nome_especializada, data_inspecao) VALUES
(1234567, 'Departamento C', '2020-01-01'),
(2345678, 'Departamento D', '2020-01-02'),
(3456789, 'Departamento E', '2020-01-03');

--inserindo Distribuidor (3 no total)
INSERT INTO distribuidor (cnpj, nome_empresa) VALUES
(12345678, 'Distribuidora A'),
(23456789, 'Distribuidora B'),
(34567890, 'Distribuidora C');

--inserindo Distribuir (5 no total)
INSERT INTO distribuir (departamento_nome, nome_medicamento, cnpj_distribuidor) VALUES
('Departamento A', 'Aspirina', 12345678),
('Departamento B', 'Paracetamol', 23456789),
('Departamento A', 'Ibuprofeno', 34567890),
('Departamento A', 'Dipirona', 12345678),
('Departamento B', 'Omeprazol', 23456789);



