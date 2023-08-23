-- duas consultas aninhadas correlacionadas;

-- Find doctors who work in a department that has a certain type of specialization.
SELECT m.nomemedico
FROM medico m
WHERE EXISTS (
    SELECT 1
    FROM tipo_de_especializacao te
    WHERE te.departamento_especializacao = m.nome_departamento
    AND te.tipos_de_especializacao = 'Urologia'
);

-- Find departments where the average salary of doctors is higher than the average salary of atendentes.
SELECT d.nomedepartamento
FROM departamento d
WHERE (
    SELECT AVG(m.salario)
    FROM medico m
    WHERE m.nome_departamento = d.nomedepartamento
) > (
    SELECT AVG(a.salario)
    FROM atendente a
    WHERE a.nome_departamento = d.nomedepartamento
);
