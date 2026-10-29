SELECT m.nome AS Medico,
       e.nome AS Especialidade,
       p.nome AS Predio,
       d.nome AS Departamento,
       t.nome AS Turno
FROM alocacao a
JOIN medico m
  ON a.id_medico = m.id_medico
JOIN especialidade e
  ON m.id_especialidade = e.id_especialidade
JOIN departamento d
  ON a.id_departamento = d.id_departamento
JOIN predio p
  ON d.id_predio = p.id_predio
JOIN turno t
  ON a.id_turno = t.id_turno
WHERE p.id_predio = 2
  AND a.dia_semana = 3
  AND t.id_turno = 2
ORDER BY m.nome ASC;
