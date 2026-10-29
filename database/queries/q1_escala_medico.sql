SELECT m.nome AS Medico,
       e.nome AS Especialidade,
       a.dia_semana AS Dia_Semana,
       t.nome AS Turno,
       t.hora_inicio AS Hora_Inicio,
       t.hora_fim AS Hora_Fim,
       p.nome AS Predio,
       d.nome AS Departamento
FROM alocacao a
JOIN medico m
  ON a.id_medico = m.id_medico
JOIN especialidade e
  ON m.id_especialidade = e.id_especialidade
JOIN turno t
  ON a.id_turno = t.id_turno
JOIN departamento d
  ON a.id_departamento = d.id_departamento
JOIN predio p
  ON d.id_predio = p.id_predio
WHERE m.id_medico = 1
ORDER BY a.dia_semana ASC,
         t.hora_inicio ASC;
