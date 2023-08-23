--duas consultas realizando duas operações diferentes sobre conjuntos (união,interseção ou diferença);
--Nome de todos os médicos + nome de todos atendentes
SELECT nomemedico FROM medico
UNION
SELECT nomeatendente FROM atendente;

--Nome dos departamentos dos médicos que tem interseção com os apartamentos dos atendentes
SELECT nomedepartamento FROM atendente
INTERSECT
SELECT nomedepartamento FROM medico;


