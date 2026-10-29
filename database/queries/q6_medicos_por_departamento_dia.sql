SELECT d.nome AS Departamento,
       a.dia_semana AS Dia_Semana,
       COUNT(DISTINCT a.id_medico) AS Qtde_Medicos
FROM alocacao a
JOIN departamento d
  ON a.id_departamento = d.id_departamento
GROUP BY d.nome,
         a.dia_semana
ORDER BY d.nome ASC,
         a.dia_semana ASC;
