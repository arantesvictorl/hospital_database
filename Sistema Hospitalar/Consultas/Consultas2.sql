--duas consultas aninhadas pela cláusula FROM;

--nome do paciente e o nome do medico no qual esse médico ganha mais de 8000
SELECT nomepaciente, nomemedico
FROM paciente p
JOIN medico m ON p.crm_medico = m.crm
WHERE crm_medico IN (SELECT crm FROM medico WHERE salario > 8000);

--nome do paciente e o crm do médico que é do departamento A
SELECT nomepaciente, crm_medico
FROM paciente
WHERE crm_medico IN (SELECT m.crm FROM medico m JOIN departamento d ON m.nome_departamento = d.nomedepartamento WHERE d.nomedepartamento = 'Departamento A');
