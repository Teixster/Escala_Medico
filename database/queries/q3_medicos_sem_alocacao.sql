SELECT m.id_medico,
       m.nome AS Medico,
       m.crm AS CRM,
       e.nome AS Especialidade
FROM medico m
JOIN especialidade e
  ON m.id_especialidade = e.id_especialidade
LEFT JOIN alocacao a
  ON m.id_medico = a.id_medico
WHERE a.id_alocacao IS NULL
ORDER BY m.id_medico ASC;
