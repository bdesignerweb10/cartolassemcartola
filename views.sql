CREATE OR REPLACE VIEW vw_destaques_rodada AS
    SELECT r.id_anos AS temporada, r.id_rodadas AS rodada, ro.descricao AS desc_rodada, r.posicao_liga AS posicao, t.escudo_time AS escudo, t.nome_time AS time, r.pontuacao AS pontuacao
      FROM tbl_times_temporadas r 
INNER JOIN tbl_times t    ON t.id  = r.id_times
INNER JOIN tbl_rodadas ro ON ro.id = r.id_rodadas
     WHERE t.ativo = 1
  ORDER BY r.id_anos ASC, r.id_rodadas ASC, r.posicao_liga ASC;

CREATE OR REPLACE VIEW vw_desempenho_geral AS 
    SELECT t.id AS id_time, t.nome_time AS time, t.escudo_time AS escudo, tt.id_anos AS temporada, ROUND(SUM(tt.pontuacao), 2) AS total_pontos
      FROM tbl_times t
INNER JOIN tbl_times_temporadas tt ON tt.id_times = t.id
     WHERE t.ativo = 1
  GROUP BY t.nome_time, t.escudo_time, tt.id_anos
  ORDER BY ROUND(SUM(tt.pontuacao), 2) DESC;

CREATE OR REPLACE VIEW vw_mata_mata_andamento AS 
    SELECT mmc.id_anos AS temporada, mmc.id_rodadas AS rodada, mm.descricao AS mata_mata, 
      CASE mmc.nivel WHEN 1 THEN 'Final'
      				 WHEN 2 THEN 'Semi-final'
      				 WHEN 4 THEN 'Quartas de final'
      				 WHEN 8 THEN 'Oitavas de final'
      				 WHEN 16 THEN 'Décima-sextas de final'
      END AS fase,
      CASE mmc.nivel WHEN 1 THEN 'bg-danger'
      				 WHEN 2 THEN 'bg-warning'
      				 WHEN 4 THEN 'bg-warning'
      				 WHEN 8 THEN 'bg-success'
      				 WHEN 16 THEN 'bg-success'
      END AS cor_fase
      FROM tbl_mata_mata_confrontos mmc
INNER JOIN tbl_mata_mata mm ON mm.id = mmc.id_mata_mata
     WHERE mmc.chave = 1
  ORDER BY mmc.id_rodadas ASC;