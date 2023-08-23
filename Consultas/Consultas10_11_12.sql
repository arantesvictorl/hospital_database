-- 10. duas operações de inserção, sendo que pelo menos uma deverá envolver mais de uma
-- tabela, isto é, tabelas envolvidas em restrições de integridade;
-- 11. duas operações de deleção, sendo que pelo menos uma deverá envolver mais de uma
-- tabela, isto é, tabelas envolvidas em restrições de integridade;
-- 12. duas operações de modificação, sendo que pelo menos uma deverá envolver mais de
-- uma tabela, isto é, tabelas envolvidas em restrições de integridade;

-- Inserir um novo departamento:
INSERT INTO "departamento" ("nomedepartamento", "telefonedepartamento", "enderecodepartamento")
VALUES ('Departamento F', '12345678', '123 Main St');

-- Inserir um novo médico juntamente com um equipamento associado:
INSERT INTO "medico" ("crm", "nomemedico", "genero", "salario", "numero_sala", "nome_departamento")
VALUES (12377, 'Dr. Smith', 'M', 8000.00, 115, 'Departamento F');

INSERT INTO "equipamento" ("codigo", "medico_crm")
VALUES (1089, 12377);

-- Deletar um paciente e suas referências:
DELETE FROM "paciente"
WHERE "cpfpaciente" = 20005;

-- Também precisa remover referências a esse paciente em outras tabelas
DELETE FROM "distribuir"
WHERE "departamento_nome" IN (
    SELECT "departamento_urgencia"
    FROM "urgencia"
    WHERE "departamento_urgencia" = 'Departamento E'
);

DELETE FROM "distribuir"
WHERE "departamento_nome" IN (
    SELECT "departamento_especializada"
    FROM "especializada"
    WHERE "departamento_especializada" = 'Departamento E'
);

-- Deletar uma atendente
DELETE FROM "atendente"
WHERE "cpfatendente" = 1234567;


--Modificar o salário e o número da sala de um médico
UPDATE "medico"
SET "salario" = 9000.00, "numero_sala" = 112
WHERE "crm" = 345678;

-- Modificar o nome de um medicamento
UPDATE "medicamento"
SET "nomemedicamento" = 'Medicamento X'
WHERE "nomemedicamento" = 'Paracetamol';


UPDATE "distribuir"
SET "nome_medicamento" = 'Medicamento X'
WHERE "nome_medicamento" = 'Paracetamol';
