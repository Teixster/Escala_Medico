CREATE TABLE turno (
  id_turno INTEGER PRIMARY KEY,
  nome TEXT NOT NULL UNIQUE,
  hora_inicio TEXT NOT NULL,
  hora_fim TEXT NOT NULL,
  carga_horaria INTEGER NOT NULL
);
