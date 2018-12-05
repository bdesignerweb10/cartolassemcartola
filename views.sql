CREATE OR REPLACE VIEW vw_destaques_rodada AS
    SELECT r.id_anos AS temporada, r.id_rodadas AS rodada, ro.descricao AS desc_rodada, COALESCE(r.posicao_liga, 0) AS posicao, t.id AS id_time, t.escudo_time AS escudo, t.nome_time AS time, r.pontuacao AS pontuacao
      FROM tbl_times_temporadas r 
INNER JOIN tbl_times t    ON t.id  = r.id_times
INNER JOIN tbl_rodadas ro ON ro.id = r.id_rodadas
  ORDER BY r.id_anos ASC, r.id_rodadas DESC, r.pontuacao DESC;

CREATE OR REPLACE VIEW vw_desempenho_geral AS 
    SELECT t.id AS id_time, t.nome_time AS time, t.escudo_time AS escudo, t.slug_cartola AS slug_cartola, tt.id_anos AS temporada, ROUND(SUM(tt.pontuacao), 2) AS total_pontos
      FROM tbl_times t
INNER JOIN tbl_times_temporadas tt ON tt.id_times = t.id
  GROUP BY t.nome_time, t.escudo_time, tt.id_anos
  ORDER BY ROUND(SUM(tt.pontuacao), 2) DESC;

CREATE OR REPLACE VIEW vw_mata_mata_andamento AS 
    SELECT mmc.id_anos AS temporada, MAX(mmc.id_rodadas) AS rodada, mm.descricao AS mata_mata, MIN(mmc.nivel) AS nivel,
      CASE MIN(mmc.nivel) WHEN 1 THEN 'Final'
               WHEN 2 THEN 'Semi-final'
               WHEN 4 THEN 'Quartas de final'
               WHEN 8 THEN 'Oitavas de final'
               WHEN 16 THEN 'Primeira Fase'
      END AS fase,
      CASE MIN(mmc.nivel) WHEN 1 THEN 'bg-danger'
               WHEN 2 THEN 'bg-warning'
               WHEN 4 THEN 'bg-warning'
               WHEN 8 THEN 'bg-success'
               WHEN 16 THEN 'bg-info'
      END AS cor_fase
      FROM tbl_mata_mata_confrontos mmc
INNER JOIN tbl_mata_mata mm ON mm.id = mmc.id_mata_mata
     GROUP BY mmc.id_anos, mm.descricao
  ORDER BY mmc.id_rodadas ASC;

CREATE OR REPLACE VIEW vw_mata_mata_confrontos AS 
    SELECT mmc.id_anos AS temporada, mmc.id_rodadas AS rodada, mm.id AS id, mm.descricao AS mata_mata, mmc.nivel AS nivel, 
      CASE mmc.nivel WHEN 1 THEN 'Final'
      				 WHEN 2 THEN 'Semi-final'
      				 WHEN 4 THEN 'Quartas de final'
      				 WHEN 8 THEN 'Oitavas de final'
      				 WHEN 16 THEN 'Primeira Fase'
      END AS fase, mmc.chave AS chave, t1.nome_time AS time_1, t1.escudo_time AS escudo_time_1, pont1.pontuacao AS pontuacao_time_1,
      t2.nome_time AS time_2, t2.escudo_time AS escudo_time_2, pont2.pontuacao AS pontuacao_time_2
      FROM tbl_mata_mata_confrontos mmc
INNER JOIN tbl_mata_mata mm ON mm.id = mmc.id_mata_mata
INNER JOIN tbl_times t1 ON t1.id = mmc.id_time_1
INNER JOIN tbl_times t2 ON t2.id = mmc.id_time_2
INNER JOIN tbl_times_temporadas pont1 ON pont1.id_times   = mmc.id_time_1
									 AND pont1.id_anos 	  = mmc.id_anos
									 AND pont1.id_rodadas = mmc.id_rodadas
INNER JOIN tbl_times_temporadas pont2 ON pont2.id_times   = mmc.id_time_2
									 AND pont2.id_anos 	  = mmc.id_anos
									 AND pont2.id_rodadas = mmc.id_rodadas
  ORDER BY mmc.nivel DESC;

CREATE OR REPLACE VIEW vw_eventos AS 
   SELECT e.id AS id, e.titulo AS titulo, UNIX_TIMESTAMP(e.data) AS data, e.local AS local, e.descricao AS descricao, EXTRACT(YEAR FROM e.data) AS ano, COUNT(ep.id_times) AS participantes
     FROM tbl_eventos e
LEFT JOIN tbl_eventos_presenca ep ON ep.id_eventos = e.id
 GROUP BY e.id, e.titulo, e.data, EXTRACT(YEAR FROM e.data)
 ORDER BY e.data DESC, e.id ASC;

CREATE OR REPLACE VIEW vw_escudos_temporada AS 
    SELECT i.id_anos AS temporada, t.id AS id, t.nome_time AS time, t.escudo_time AS escudo 
      FROM tbl_times t
INNER JOIN tbl_inscricao i ON i.id_times = t.id
INNER JOIN tbl_times_temporadas tt ON tt.id_times   = t.id
     WHERE t.slug_cartola IS NOT NULL
  GROUP BY i.id_anos, t.id, t.nome_time, t.escudo_time
    HAVING SUM(tt.pontuacao) > 0
  ORDER BY t.nome_time;