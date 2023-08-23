-- Esta visualização combina informações das tabelas "medico" e "departamento" para fornecer informações detalhadas sobre cada médico, incluindo os detalhes de contato de seu departamento.
CREATE VIEW MedicoDetailsView AS
SELECT m.crm, m.nomemedico, m.genero, m.salario, m.numero_sala, m.nome_departamento,
       d.telefonedepartamento, d.enderecodepartamento
FROM medico m
JOIN departamento d ON m.nome_departamento = d.nomedepartamento;

-- Esta visualização combina as informações das tabelas "equipamento" e "função" para mostrar os equipamentos junto com suas funções associadas.
CREATE VIEW EquipmentWithFunctionView AS
SELECT e.codigo, e.medico_crm, f.aplicacao, f.descricao
FROM equipamento e
LEFT JOIN funcao f ON e.codigo = f.codigo_equipamento;

