SELECT m.id_medico,
       m.nome AS Medico,
       r.descricao AS Regime,
       r.carga_horaria_semanal AS Carga_Maxima,
       SUM(t.carga_horaria) AS Horas_Alocadas
FROM medico m
JOIN regime_trabalho r
  ON m.id_regime = r.id_regime
JOIN alocacao a
  ON m.id_medico = a.id_medico
JOIN turno t
  ON a.id_turno = t.id_turno
GROUP BY m.id_medico,
         m.nome,
         r.descricao,
         r.carga_horaria_semanal
ORDER BY Horas_Alocadas DESC,
         m.nome ASC;
