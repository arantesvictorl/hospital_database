-- 8. duas consultas envolvendo agrupamentos e agregações;
-- 9. uma consulta envolvendo a cláusula HAVING;

-- This query retrieves the total number of patients per doctor, along with the average salary of doctors in each department.
SELECT
    m.nomemedico AS Doctor_Name,
    d.nomedepartamento AS Department_Name,
    COUNT(p.cpfpaciente) AS Total_Patients,
    AVG(m.salario) AS Average_Salary
FROM medico m
INNER JOIN paciente p ON m.crm = p.crm_medico
INNER JOIN departamento d ON m.nome_departamento = d.nomedepartamento
GROUP BY m.nomemedico, d.nomedepartamento
ORDER BY Department_Name, Total_Patients DESC;

-- This query retrieves departments with the average doctor salary higher than a specified threshold (e.g., 8000).
SELECT
    d.nomedepartamento AS Department_Name,
    AVG(m.salario) AS Average_Salary
FROM medico m
INNER JOIN departamento d ON m.nome_departamento = d.nomedepartamento
GROUP BY d.nomedepartamento
HAVING AVG(m.salario) > 8000
ORDER BY Average_Salary DESC;
