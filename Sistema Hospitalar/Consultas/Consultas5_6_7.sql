-- 5. duas consultas escalares;
-- 6. uma consulta envolvendo a operação de junção definida na cláusula FROM;
-- 7. duas consultas envolvendo outer joins;

-- Essa consulta irá contar o número de pacientes atendidos por cada médico, exibindo o nome do médico, seu CRM e o total de pacientes atendidos.
SELECT
    m.nomemedico,
    m.crm,
    COUNT(p.cpfpaciente) AS total_pacientes_atendidos
FROM
    medico m
LEFT JOIN
    paciente p ON m.crm = p.crm_medico
GROUP BY
    m.nomemedico, m.crm
ORDER BY
    total_pacientes_atendidos DESC;
-- Essa consulta irá calcular o salário médio dos médicos em cada departamento.
SELECT
    d.nomedepartamento,
    AVG(m.salario) AS salario_medio
FROM
    departamento d
INNER JOIN
    medico m ON d.nomedepartamento = m.nome_departamento
GROUP BY
    d.nomedepartamento;
