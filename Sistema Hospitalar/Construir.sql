CREATE TABLE "sala" (
  "numerosala" INT PRIMARY KEY,
  "tamanho" INT DEFAULT 0
);

CREATE TABLE "departamento" (
  "nomedepartamento" VARCHAR(30) PRIMARY KEY,
  "telefonedepartamento" VARCHAR(9) NOT NULL,
  "enderecodepartamento" VARCHAR(50) NOT NULL
);

CREATE TABLE "medico" (
  "crm" INT PRIMARY KEY,
  "nomemedico" VARCHAR(30) NOT NULL,
  "genero" CHAR(1) NOT NULL,
  "salario" DECIMAL(8,2) NOT NULL,
  "numero_sala" INT UNIQUE,
  "nome_departamento" VARCHAR(30) NOT NULL
);

CREATE TABLE "atendente" (
  "cpfatendente" INT PRIMARY KEY,
  "nomeatendente" VARCHAR(30) NOT NULL,
  "telefoneatendente" VARCHAR(9) NOT NULL,
  "nome_departamento" VARCHAR(30) NOT NULL,
  "salario" DECIMAL(8,2) NOT NULL
);

CREATE TABLE "paciente" (
  "cpfpaciente" INT PRIMARY KEY,
  "nomepaciente" VARCHAR(30) NOT NULL,
  "telefonepaciente" VARCHAR(9) NOT NULL,
  "crm_medico" INT NOT NULL
);

CREATE TABLE "equipamento" (
  "codigo" INT PRIMARY KEY,
  "medico_crm" INT
);

CREATE TABLE "funcao" (
  "aplicacao" VARCHAR(100) NOT NULL,
  "codigo_equipamento" INT,
  "descricao" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("aplicacao", "codigo_equipamento")
);

CREATE TABLE "urgencia" (
  "departamento_urgencia" VARCHAR(30) PRIMARY KEY
);

CREATE TABLE "especializada" (
  "departamento_especializada" VARCHAR(30) PRIMARY KEY
);

CREATE TABLE "tipo_de_especializacao" (
  "departamento_especializacao" VARCHAR(30),
  "tipos_de_especializacao" VARCHAR(30),
  PRIMARY KEY ("departamento_especializacao", "tipos_de_especializacao")
);

CREATE TABLE "inspetor" (
  "cpfinspetor" INT PRIMARY KEY,
  "nomeinspetor" VARCHAR(30) NOT NULL
);

CREATE TABLE "medicamento" (
  "nomemedicamento" VARCHAR(30) PRIMARY KEY,
  "bula" VARCHAR(40) NOT NULL
);

CREATE TABLE "esp_inspecao_insp" (
  "cpf_inspetor" INT,
  "nome_especializada" VARCHAR(30),
  "data_inspecao" DATE,
  PRIMARY KEY ("cpf_inspetor", "nome_especializada", "data_inspecao")
);

CREATE TABLE "distribuidor" (
  "cnpj" INT PRIMARY KEY,
  "nome_empresa" VARCHAR(30) NOT NULL
);

CREATE TABLE "distribuir" (
  "departamento_nome" VARCHAR(30),
  "nome_medicamento" VARCHAR(30),
  "cnpj_distribuidor" INT,
  PRIMARY KEY ("departamento_nome", "nome_medicamento", "cnpj_distribuidor")
);

ALTER TABLE "medico" ADD FOREIGN KEY ("numero_sala") REFERENCES "sala" ("numerosala");

ALTER TABLE "medico" ADD FOREIGN KEY ("nome_departamento") REFERENCES "departamento" ("nomedepartamento");

ALTER TABLE "atendente" ADD FOREIGN KEY ("nome_departamento") REFERENCES "departamento" ("nomedepartamento");

ALTER TABLE "paciente" ADD FOREIGN KEY ("crm_medico") REFERENCES "medico" ("crm");

ALTER TABLE "equipamento" ADD FOREIGN KEY ("medico_crm") REFERENCES "medico" ("crm");

ALTER TABLE "funcao" ADD FOREIGN KEY ("codigo_equipamento") REFERENCES "equipamento" ("codigo");

ALTER TABLE "urgencia" ADD FOREIGN KEY ("departamento_urgencia") REFERENCES "departamento" ("nomedepartamento");

ALTER TABLE "especializada" ADD FOREIGN KEY ("departamento_especializada") REFERENCES "departamento" ("nomedepartamento");

ALTER TABLE "tipo_de_especializacao" ADD FOREIGN KEY ("departamento_especializacao") REFERENCES "especializada" ("departamento_especializada");

ALTER TABLE "esp_inspecao_insp" ADD FOREIGN KEY ("cpf_inspetor") REFERENCES "inspetor" ("cpfinspetor");

ALTER TABLE "esp_inspecao_insp" ADD FOREIGN KEY ("nome_especializada") REFERENCES "especializada" ("departamento_especializada");

ALTER TABLE "distribuir" ADD FOREIGN KEY ("departamento_nome") REFERENCES "urgencia" ("departamento_urgencia");

ALTER TABLE "distribuir" ADD FOREIGN KEY ("nome_medicamento") REFERENCES "medicamento" ("nomemedicamento");

ALTER TABLE "distribuir" ADD FOREIGN KEY ("cnpj_distribuidor") REFERENCES "distribuidor" ("cnpj");
