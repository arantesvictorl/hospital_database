--Quatro consultas envolvendo os operadores como IN, SOME, ANY, ALL, EXISTS e UNIQUE

--Retornar todos os pacientes que estão sendo atendidos por médicos em departamentos de urgência.
SELECT nomepaciente
FROM paciente
WHERE crm_medico IN (
    SELECT crm
    FROM medico
    WHERE nome_departamento IN (
        SELECT departamento_urgencia
        FROM urgencia
    )
);

-- Retornar todos os medicamentos que são distribuídos por pelo menos um distribuidor.
SELECT nomemedicamento
FROM medicamento
WHERE EXISTS (
    SELECT 1
    FROM distribuir
    WHERE nome_medicamento = medicamento.nomemedicamento
);

-- Retornar todos os médicos que têm um salário maior do que o salário mínimo de qualquer atendente.
SELECT nomemedico
FROM medico
WHERE salario > ANY (
    SELECT salario
    FROM atendente
);

-- médicos cujos salários são maiores que pelo menos um dos salários de atendentes:
SELECT nomemedico
FROM medico
WHERE salario > SOME (
    SELECT salario
    FROM atendente
);


