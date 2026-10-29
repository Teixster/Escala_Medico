CREATE TABLE departamento (
  id_departamento INTEGER PRIMARY KEY,
  nome TEXT NOT NULL UNIQUE,
  andar INTEGER NOT NULL,
  id_predio INTEGER NOT NULL,
  FOREIGN KEY (id_predio) REFERENCES predio(id_predio)
);
