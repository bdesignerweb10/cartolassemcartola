#2015#
#2015#
#2015#
#2015#
#2015#
#2015#
#2015#
#2015#
#2015#
#2015#
INSERT INTO tbl_anos (descricao) VALUES ('2015');

INSERT INTO tbl_temporadas (id_anos, id_rodadas) 
SELECT (SELECT MAX(id) FROM tbl_anos), id FROM tbl_rodadas;

-- ######################
-- Barcefortes FC 		-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (10, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 1, 37.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 2, 53.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 3, 33.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 4, 29.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 5, 29.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 6, 54.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 7, 43.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 8, 21.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 9, 8.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 10, 94.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 11, 55.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 12, 88.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 13, 67.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 14, 45.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 15, 90.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 16, 38.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 17, 47.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 18, 44.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 19, 56.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 20, 96.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 21, 54.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 22, 54.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 23, 55.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 24, 41.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 25, 64.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 26, 24.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 27, 69.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 28, 58.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 29, 36.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 30, 57.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 31, 61.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 32, 50.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 33, 49.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 34, 34.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 35, 29.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 36, 31.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 37, 72.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 38, 60.84 , NULL, 1, NOW());

-- ######################
-- Palestrino 84 FC 	-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (6, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 1, 34.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 2, 41.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 3, 45.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 4, 13.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 5, 42.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 6, 31.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 7, 58.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 8, 24.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 9, 32.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 10, 66.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 11, 64.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 12, 79.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 13, 78.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 14, 46.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 15, 54.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 16, 27.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 17, 50.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 18, 22.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 19, 32.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 20, 70.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 21, 61.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 22, 46.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 23, 26.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 24, 60.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 25, 60.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 26, 36.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 27, 76.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 28, 47.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 29, 23.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 30, 65.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 31, 58.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 32, 54.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 33, 44.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 34, 37.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 35, 38.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 36, 21.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 37, 58.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 38, 61.66 , NULL, 1, NOW());

-- ######################
-- Grão - FC 			-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Tottengrão Football Club', 'tottengraofootballclub.png', 'Thiago Grão', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 34.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 37.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 70.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 31.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 61.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 40.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 32.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 23.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 53.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 81.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 67.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 68.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 63.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 52.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 52.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 40.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 73.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 36.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 46.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 91.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 46.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 86.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 23.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 48.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 68.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 23.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 38.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 31.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 29.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 76.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 59.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 44.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 29.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 29.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 28.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 24.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 36.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 65.18 , NULL, 1, NOW());

-- ######################
-- Massa SCCP 			-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Massa SCCP', 'massasccp.png', 'Felipe Massa', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 45.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 75.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 52.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 66.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 79.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 17.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 38.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 11.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 52.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 57.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 56.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 90.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 63.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 49.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 86.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 23.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 62.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 35.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 44.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 87.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 64.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 85.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 28.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 53.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 74.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 37.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 78.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 66.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 44.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 65.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 61.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 45.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 55.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 61.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 27.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 41.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 79.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 71.54 , NULL, 1, NOW());

-- ######################
-- Hasdrubal FC 		-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (1, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 1, 34.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 2, 50.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 3, 54.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 4, 47.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 5, 58.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 6, 27.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 7, 24.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 8, 19.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 9, 17.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 10, 54.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 11, 37.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 12, 58.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 13, 94.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 14, 35.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 15, 53.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 16, 42.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 17, 32.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 18, 31.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 19, 47.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 20, 85.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 21, 81.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 22, 66.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 23, 19.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 24, 55.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 25, 53.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 26, 50.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 27, 73.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 28, 23.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 29, 33.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 30, 70.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 31, 83.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 32, 44.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 33, 42.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 34, 26.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 35, 40.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 36, 38.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 37, 65.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 38, 53.76 , NULL, 1, NOW());

-- ######################
-- E.C Estrela 			-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('E.C Estrela', 'ecestrela.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 33.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 53.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 8.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 35.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 52.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 52.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 55.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 31.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 38.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 86.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 38.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 65.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 51.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 48.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 70.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 57.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 37.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 22.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 48.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 60.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 61.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 36.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 40.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 55.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 42.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 30.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 59.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 38.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 28.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 74.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 45.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 47.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 50.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 16.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 35.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 39.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 54.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 33.14 , NULL, 1, NOW());

-- ######################
-- FAC SB				-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('FAC SB', 'facsb.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 21.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 55.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 51.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 20.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 60.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 28.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 31.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 23.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 3.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 41.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 64.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 57.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 70.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 40.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 49.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 49.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 56.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 38.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 29.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 60.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 57.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 62.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 44.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 38.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 65.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 41.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 21.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 49.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 51.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 55.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 42.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 86.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 52.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 41.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 18.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 38.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 49.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 37.48 , NULL, 1, NOW());

-- ######################
-- Ferdes FC 			-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (11, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 1, 47.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 2, 49.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 3, 10.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 4, 29.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 5, 63.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 6, 38.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 7, 34.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 8, 16.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 9, 40.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 10, 64.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 11, 31.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 12, 73.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 13, 53.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 14, 42.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 15, 64.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 16, 25.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 17, 62.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 18, 18.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 19, 34.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 20, 46.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 21, 63.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 22, 51.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 23, 6.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 24, 48.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 25, 76.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 26, 47.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 27, 18.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 28, 25.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 29, 46.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 30, 35.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 31, 60.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 32, 24.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 33, 24.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 34, 41.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 35, 37.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 36, 27.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 37, 33.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 38, 20.28 , NULL, 1, NOW());

-- ######################
-- S.F Zangief 			-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (3, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 1, 48.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 2, 49.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 3, 42.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 4, 38.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 5, 76.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 6, 34.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 7, 51.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 8, 18.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 9, 21.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 10, 59.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 11, 53.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 12, 58.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 13, 36.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 14, 51.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 15, 39.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 16, 32.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 17, 58.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 18, 32.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 19, 57.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 20, 64.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 21, 53.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 22, 46.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 23, 26.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 24, 63.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 25, 54.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 26, 31.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 27, 69.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 28, 58.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 29, 40.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 30, 61.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 31, 73.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 32, 27.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 33, 37.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 34, 10.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 35, 29.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 36, 45.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 37, 38.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 38, 63.88 , NULL, 1, NOW());

-- ######################
-- Phantox X FC 		-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (32, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 1, 35.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 2, 49.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 3, 64.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 4, 34.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 5, 63.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 6, 35.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 7, 41.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 8, 13.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 9, 69.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 10, 35.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 11, 53.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 12, 41.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 13, 73.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 14, 39.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 15, 102.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 16, 11.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 17, 69.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 18, 44.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 19, 21.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 20, 70.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 21, 59.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 22, 67.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 23, 44.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 24, 56.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 25, 65.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 26, 40.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 27, 31.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 28, 47.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 29, 34.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 30, 49.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 31, 43.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 32, 69.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 33, 53.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 34, 44.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 35, 45.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 36, 43.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 37, 44.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 38, 44.06 , NULL, 1, NOW());

-- ######################
-- São Picolin 			-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (8, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 1, 27.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 2, 74.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 3, 31.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 4, 54.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 5, 63.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 6, 52.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 7, 37.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 8, 0.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 9, 58.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 10, 59.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 11, 34.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 12, 64.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 13, 38.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 14, 60.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 15, 49.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 16, 34.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 17, 59.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 18, 28.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 19, 27.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 20, 44.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 21, 46.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 22, 87.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 23, 11.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 24, 38.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 25, 67.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 26, 41.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 27, 56.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 28, 83.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 29, 40.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 30, 69.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 31, 43.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 32, 42.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 33, 29.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 34, 24.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 35, 41.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 36, 34.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 37, 71.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 38, 45.23 , NULL, 1, NOW());

-- ######################
-- RafaelMaca FC 		-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (13, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 1, 33.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 2, 24.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 3, 26.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 4, 35.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 5, 66.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 6, 38.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 7, 72.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 8, 24.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 9, 61.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 10, 44.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 11, 41.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 12, 64.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 13, 39.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 14, 35.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 15, 62.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 16, 49.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 17, 58.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 18, 21.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 19, 50.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 20, 77.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 21, 88.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 22, 77.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 23, 25.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 24, 68.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 25, 85.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 26, 29.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 27, 59.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 28, 49.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 29, 5.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 30, 47.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 31, 69.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 32, 60.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 33, 45.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 34, 56.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 35, 51.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 36, 45.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 37, 97.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 38, 58.64 , NULL, 1, NOW());

-- ######################
-- Rebimboca Fut Club 	-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Rebimboca FC', 'rebimbocafc.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 49.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 72.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 67.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 40.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 69.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 21.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 33.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 11.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 50.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 49.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 26.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 56.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 58.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 53.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 84.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 28.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 73.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 29.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 58.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 111.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 54.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 75.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 40.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 59.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 75.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 54.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 66.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 77.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 34.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 49.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 63.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 48.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 38.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 52.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 34.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 56.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 68.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 47.04 , NULL, 1, NOW());

-- ######################
-- Danilão F.C.  		-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (12, (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 1, 1.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 2, 30.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 3, 9.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 4, 23.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 5, 42.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 6, 33.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 7, 41.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 8, 51.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 9, 34.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 10, 49.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 11, 27.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 12, 40.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 13, 26.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 14, 4.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 15, 63.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 16, 51.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 17, 30.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 18, 54.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 19, 50.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 20, 37.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 21, 52.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 22, 73.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 23, 42.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 24, 67.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 25, 35.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 26, 72.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 27, 30.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 28, 53.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 29, 53.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 30, 47.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 31, 51.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 32, 47.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 33, 25.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 34, 50.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 35, 19.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 36, 30.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 37, 23.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 38, 30.73 , NULL, 1, NOW());

#2016#
#2016#
#2016#
#2016#
#2016#
#2016#
#2016#
#2016#
#2016#
#2016#
#2016#
INSERT INTO tbl_anos (descricao) VALUES ('2016');

INSERT INTO tbl_temporadas (id_anos, id_rodadas) 
SELECT (SELECT MAX(id) FROM tbl_anos), id FROM tbl_rodadas;

-- ######################
-- Joãoventus de Picolin 	- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (8, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 1, 66.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 2, 36.54, NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 3, 53.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 4, 36.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 5, 53.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 6, 67.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 7, 69.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 8, 78.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 9, 46.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 10, 42.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 11, 34.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 12, 100.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 13, 41.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 14, 47.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 15, 45.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 16, 20.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 17, 86.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 18, 38.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 19, 50.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 20, 38.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 21, 48.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 22, 14.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 23, 43.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 24, 48.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 25, 28.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 26, 45.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 27, 23.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 28, 65.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 29, 36.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 30, 22.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 31, 65.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 32, 44.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 33, 49.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 34, 58.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 35, 50.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 36, 68.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 37, 40.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 38, 60.00 , NULL, 1, NOW());

-- ######################
-- Hasdrubal FC 			- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (1, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 1, 66.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 2, 30.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 3, 55.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 4, 25.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 5, 62.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 6, 42.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 7, 46.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 8, 57.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 9, 47.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 10, 52.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 11, 28.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 12, 87.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 13, 43.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 14, 38.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 15, 40.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 16, 35.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 17, 53.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 18, 49.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 19, 18.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 20, 49.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 21, 50.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 22, 21.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 23, 56.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 24, 43.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 25, 46.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 26, 48.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 27, 37.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 28, 56.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 29, 56.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 30, 49.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 31, 50.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 32, 33.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 33, 33.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 34, 39.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 35, 45.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 36, 88.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 37, 56.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 38, 63.64 , NULL, 1, NOW());

-- ######################
-- Tottengrão Football Club - 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (37, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 1, 43.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 2, 51.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 3, 54.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 4, 33.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 5, 56.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 6, 61.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 7, 71.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 8, 73.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 9, 64.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 10, 51.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 11, 55.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 12, 86.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 13, 54.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 14, 39.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 15, 59.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 16, 27.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 17, 78.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 18, 48.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 19, 62.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 20, 40.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 21, 49.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 22, 21.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 23, 56.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 24, 41.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 25, 32.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 26, 51.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 27, 39.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 28, 63.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 29, 50.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 30, 47.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 31, 38.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 32, 72.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 33, 50.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 34, 50.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 35, 33.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 36, 59.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 37, 50.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 38, 62.79 , NULL, 1, NOW());

-- ######################
-- Palestrino 84 F.C 		- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (6, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 1, 58.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 2, 61.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 3, 53.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 4, 60.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 5, 58.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 6, 37.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 7, 78.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 8, 57.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 9, 80.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 10, 52.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 11, 53.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 12, 81.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 13, 52.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 14, 53.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 15, 35.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 16, 30.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 17, 89.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 18, 54.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 19, 55.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 20, 30.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 21, 62.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 22, 15.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 23, 45.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 24, 23.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 25, 33.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 26, 57.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 27, 24.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 28, 67.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 29, 36.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 30, 67.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 31, 47.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 32, 46.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 33, 40.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 34, 16.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 35, 57.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 36, 73.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 37, 67.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 38, 76.59 , NULL, 1, NOW());

-- ######################
-- Ferdesbar FC 			- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (11, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 1, 37.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 2, 39.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 3, 69.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 4, 45.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 5, 35.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 6, 56.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 7, 12.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 8, 60.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 9, 38.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 10, 69.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 11, 38.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 12, 77.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 13, 59.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 14, 61.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 15, 77.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 16, 29.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 17, 38.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 18, 62.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 19, 54.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 20, 29.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 21, 49.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 22, 42.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 23, 50.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 24, 60.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 25, 42.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 26, 62.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 27, 42.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 28, 35.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 29, 38.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 30, 54.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 31, 37.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 32, 61.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 33, 54.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 34, 86.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 35, 53.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 36, 67.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 37, 61.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 38, 45.09 , NULL, 1, NOW());

-- ######################
-- RafaelMaca FC 			- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (13, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 1, 64.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 2, 35.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 3, 53.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 4, 30.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 5, 38.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 6, 57.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 7, 42.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 8, 69.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 9, 80.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 10, 40.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 11, 72.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 12, 85.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 13, 38.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 14, 45.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 15, 65.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 16, 54.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 17, 64.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 18, 57.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 19, 39.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 20, 33.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 21, 39.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 22, 28.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 23, 52.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 24, 47.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 25, 32.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 26, 50.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 27, 43.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 28, 71.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 29, 57.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 30, 67.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 31, 23.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 32, 63.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 33, 39.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 34, 51.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 35, 59.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 36, 93.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 37, 33.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 38, 76.20 , NULL, 1, NOW());

-- ######################
-- S.F. Zangief 			- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (3, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 1, 36.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 2, 35.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 3, 51.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 4, 33.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 5, 57.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 6, 52.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 7, 64.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 8, 45.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 9, 59.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 10, 62.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 11, 81.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 12, 80.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 13, 44.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 14, 50.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 15, 39.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 16, 38.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 17, 59.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 18, 75.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 19, 52.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 20, 40.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 21, 56.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 22, 33.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 23, 53.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 24, 51.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 25, 40.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 26, 50.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 27, 34.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 28, 45.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 29, 46.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 30, 52.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 31, 47.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 32, 73.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 33, 27.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 34, 49.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 35, 20.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 36, 97.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 37, 56.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 38, 80.99 , NULL, 1, NOW());

-- ######################
-- Massa SCCP 				- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (38, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 1, 69.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 2, 51.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 3, 66.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 4, 35.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 5, 37.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 6, 47.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 7, 59.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 8, 62.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 9, 65.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 10, 49.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 11, 55.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 12, 83.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 13, 62.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 14, 56.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 15, 53.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 16, 31.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 17, 83.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 18, 54.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 19, 43.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 20, 49.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 21, 49.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 22, 30.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 23, 39.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 24, 46.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 25, 20.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 26, 45.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 27, 39.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 28, 42.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 29, 42.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 30, 62.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 31, 41.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 32, 69.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 33, 44.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 34, 41.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 35, 43.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 36, 82.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 37, 55.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 38, 61.59 , NULL, 1, NOW());

-- ######################
-- Rebimboca FC 			- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (41, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 1, 70.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 2, 41.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 3, 49.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 4, 46.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 5, 37.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 6, 47.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 7, 50.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 8, 73.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 9, 54.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 10, 37.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 11, 12.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 12, 79.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 13, 37.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 14, 40.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 15, 31.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 16, 24.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 17, 93.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 18, 46.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 19, 37.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 20, 29.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 21, 39.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 22, 20.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 23, 52.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 24, 38.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 25, 18.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 26, 39.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 27, 19.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 28, 49.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 29, 59.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 30, 29.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 31, 60.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 32, 60.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 33, 33.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 34, 62.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 35, 17.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 36, 85.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 37, 55.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 38, 50.09 , NULL, 1, NOW());

-- ######################
-- Gaviões 1969 			- 
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Gaviões 1969', 'gavioes1969.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 0);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 49.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 26.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 24.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 56.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 35.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 48.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 75.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 77.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 56.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 56.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 60.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 91.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 55.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 51.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 24.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 37.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 85.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 73.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 25.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 48.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 57.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 34.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 36.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 37.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 22.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 45.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 45.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 60.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 45.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 49.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 45.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 41.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 28.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 13.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 26.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 84.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 12.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 55.29 , NULL, 1, NOW());

-- ######################
-- Phanton X FC 			-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (32, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 1, 42.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 2, 42.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 3, 51.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 4, 56.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 5, 26.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 6, 59.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 7, 66.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 8, 77.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 9, 38.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 10, 72.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 11, 70.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 12, 95.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 13, 49.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 14, 46.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 15, 18.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 16, 23.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 17, 51.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 18, 55.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 19, 16.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 20, 46.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 21, 66.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 22, 22.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 23, 37.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 24, 51.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 25, 30.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 26, 39.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 27, 32.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 28, 67.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 29, 44.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 30, 63.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 31, 57.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 32, 54.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 33, 47.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 34, 64.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 35, 30.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 36, 40.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 37, 22.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (32, (SELECT MAX(id) FROM tbl_anos), 38, 73.14 , NULL, 1, NOW());

-- ######################
-- E.C. UPU 				-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (4, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 1, 22.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 2, 22.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 3, 42.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 4, 18.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 5, 34.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 6, 49.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 7, 64.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 8, 58.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 9, 32.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 10, 52.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 11, 53.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 12, 50.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 13, 38.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 14, 28.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 15, 53.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 16, 31.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 17, 35.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 18, 49.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 19, 29.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 20, 67.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 21, 32.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 22, 36.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 23, 47.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 24, 53.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 25, 38.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 26, 60.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 27, 23.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 28, 37.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 29, 60.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 30, 38.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 31, 21.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 32, 55.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 33, 25.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 34, 27.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 35, 33.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 36, 59.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 37, 49.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 38, 15.05 , NULL, 1, NOW());

-- ######################
-- FutebolClube 			-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (9, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 1, 46.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 2, 23.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 3, 60.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 4, 50.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 5, 34.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 6, 56.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 7, 77.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 8, 90.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 9, 72.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 10, 52.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 11, 60.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 12, 72.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 13, 61.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 14, 62.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 15, 59.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 16, 36.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 17, 52.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 18, 50.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 19, 27.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 20, 48.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 21, 51.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 22, 32.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 23, 53.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 24, 39.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 25, 50.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 26, 42.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 27, 36.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 28, 76.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 29, 37.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 30, 56.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 31, 19.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 32, 68.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 33, 31.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 34, 77.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 35, 46.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 36, 78.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 37, 55.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 38, 56.99 , NULL, 1, NOW());

-- ######################
-- LanternaNegra 			-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (12, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 1, 12.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 2, 7.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 3, 54.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 4, 42.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 5, 41.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 6, 48.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 7, 75.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 8, 60.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 9, 35.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 10, 66.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 11, 28.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 12, 78.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 13, 42.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 14, 34.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 15, 24.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 16, 38.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 17, 56.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 18, 42.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 19, 16.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 20, 40.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 21, 21.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 22, 11.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 23, 27.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 24, 71.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 25, 63.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 26, 28.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 27, 47.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 28, 52.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 29, 53.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 30, 33.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 31, 24.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 32, 76.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 33, 67.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 34, 8.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 35, 37.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 36, 27.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 37, 40.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 38, 0.00 , NULL, 1, NOW());

-- ######################
-- Atlético de Magreed 		-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (5, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 1, 32.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 2, 37.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 3, 43.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 4, 51.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 5, 48.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 6, 34.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 7, 54.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 8, 39.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 9, 69.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 10, 63.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 11, 47.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 12, 74.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 13, 64.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 14, 39.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 15, 53.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 16, 42.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 17, 85.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 18, 47.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 19, 50.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 20, 43.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 21, 70.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 22, 30.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 23, 63.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 24, 64.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 25, 24.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 26, 52.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 27, 36.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 28, 46.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 29, 40.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 30, 44.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 31, 74.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 32, 69.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 33, 23.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 34, 50.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 35, 41.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 36, 100.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 37, 82.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 38, 100.29 , NULL, 1, NOW());

-- ######################
-- BierFortes EC. 			-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (10, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 1, 52.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 2, 25.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 3, 61.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 4, 62.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 5, 30.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 6, 36.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 7, 43.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 8, 95.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 9, 64.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 10, 51.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 11, 38.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 12, 74.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 13, 41.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 14, 54.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 15, 62.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 16, 41.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 17, 67.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 18, 79.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 19, 46.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 20, 34.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 21, 21.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 22, 49.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 23, 23.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 24, 45.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 25, 23.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 26, 35.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 27, 47.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 28, 71.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 29, 63.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 30, 62.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 31, 47.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 32, 76.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 33, 13.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 34, 69.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 35, 28.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 36, 88.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 37, 24.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 38, 79.54 , NULL, 1, NOW());

-- ######################
-- Radio Brasil sob 		-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (21, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 1, 41.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 2, 11.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 3, 47.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 4, 46.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 5, 56.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 6, 55.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 7, 78.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 8, 58.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 9, 64.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 10, 67.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 11, 69.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 12, 72.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 13, 45.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 14, 56.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 15, 44.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 16, 63.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 17, 58.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 18, 43.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 19, 36.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 20, 45.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 21, 54.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 22, 26.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 23, 47.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 24, 57.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 25, 34.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 26, 37.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 27, 41.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 28, 16.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 29, 46.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 30, 49.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 31, 34.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 32, 45.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 33, 46.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 34, 54.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 35, 22.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 36, 95.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 37, 58.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 38, 73.74 , NULL, 1, NOW());

-- ######################
-- Viziolli FC 				-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (17, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 1, 52.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 2, 33.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 3, 61.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 4, 53.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 5, 56.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 6, 19.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 7, 52.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 8, 57.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 9, 32.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 10, 47.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 11, 22.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 12, 80.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 13, 37.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 14, 34.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 15, -4.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 16, 51.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 17, 37.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 18, 24.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 19, 33.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 20, 57.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 21, 9.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 22, 45.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 23, 18.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 24, 38.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 25, 23.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 26, 20.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 27, 18.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 28, 12.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 29, 35.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 30, 73.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 31, 18.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 32, 20.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 33, 21.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 34, 53.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 35, 20.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 36, 31.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 37, 34.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 38, 14.40 , NULL, 1, NOW());

-- ######################
-- Torden FC 				-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Torden FC', 'tordenfc.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 32.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 39.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 50.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 18.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 34.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 28.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 41.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 77.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 44.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 45.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 35.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 36.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 21.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 53.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 39.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 64.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 56.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 30.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 22.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 49.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 35.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 29.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 22.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 50.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 27.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 46.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 23.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 41.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 26.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 36.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 29.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 30.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 17.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 32.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 9.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 54.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 36.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 33.80 , NULL, 1, NOW());

-- ######################
-- Boleanos FC 			 	-
-- ######################=
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (7, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 1, 40.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 2, 56.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 3, 31.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 4, 28.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 5, 45.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 6, 30.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 7, 55.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 8, 58.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 9, 58.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 10, 55.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 11, 41.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 12, 83.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 13, 53.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 14, 37.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 15, 38.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 16, 32.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 17, 49.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 18, 36.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 19, 8.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 20, 34.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 21, 54.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 22, 38.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 23, 67.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 24, 27.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 25, 15.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 26, 29.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 27, 58.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 28, 41.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 29, 40.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 30, 34.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 31, 38.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 32, 59.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 33, 39.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 34, 50.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 35, 15.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 36, 23.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 37, 31.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 38, 0.00 , NULL, 1, NOW());

-- ######################
-- CalvinNeythor FC 		-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('CalvinNeythor FC', 'calvinneythorfc.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 56.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 32.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 47.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 28.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 56.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 15.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 30.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 71.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 49.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 56.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 20.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 31.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 67.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 53.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 39.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 29.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 32.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 10.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 6.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 27.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 26.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 18.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 28.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 31.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 22.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 49.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 13.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 55.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 6.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 33.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 47.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 12.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 1.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 27.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 18.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 33.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 9.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 4.96 , NULL, 1, NOW());

#2017#
#2017#
#2017#
#2017#
#2017#
#2017#
#2017#
#2017#
#2017#
#2017#
INSERT INTO tbl_anos (descricao) VALUES ('2017');

INSERT INTO tbl_temporadas (id_anos, id_rodadas) 
SELECT (SELECT MAX(id) FROM tbl_anos), id FROM tbl_rodadas;

-- ######################
-- Hasdrubal FC 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (1, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 1, 74.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 2, 64.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 3, 74.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 4, 78.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 5, 64.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 6, 64.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 7, 48.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 8, 42.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 9, 75.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 10, 18.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 11, 85.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 12, 42.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 13, 53.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 14, 24.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 15, 112.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 16, 50.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 17, 42.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 18, 22.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 19, 45.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 20, 34.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 21, 19.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 22, 47.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 23, 36.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 24, 49.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 25, 58.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 26, 57.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 27, 42.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 28, 57.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 29, 92.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 30, 62.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 31, 44.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 32, 57.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 33, 64.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 34, 71.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 35, 96.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 36, 57.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 37, 22.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (1, (SELECT MAX(id) FROM tbl_anos), 38, 31.07 , NULL, 1, NOW());

-- ######################
-- Palestrino 84 F.C 					- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (6, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 1, 64.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 2, 23.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 3, 62.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 4, 75.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 5, 50.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 6, 111.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 7, 39.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 8, 53.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 9, 68.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 10, 45.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 11, 97.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 12, 35.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 13, 35.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 14, 39.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 15, 135.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 16, 70.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 17, 57.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 18, 46.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 19, 58.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 20, 37.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 21, 31.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 22, 42.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 23, 23.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 24, 59.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 25, 66.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 26, 45.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 27, 34.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 28, 56.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 29, 67.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 30, 35.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 31, 46.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 32, 103.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 33, 38.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 34, 21.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 35, 61.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 36, 59.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 37, 51.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (6, (SELECT MAX(id) FROM tbl_anos), 38, 88.38 , NULL, 1, NOW());

-- ######################
-- Boleanos FC 							- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (7, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 1, 64.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 2, 54.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 3, 45.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 4, 56.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 5, 62.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 6, 60.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 7, 33.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 8, 38.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 9, 49.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 10, 60.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 11, 61.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 12, 50.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 13, 45.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 14, 47.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 15, 73.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 16, 39.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 17, 41.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 18, 42.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 19, 49.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 20, 53.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 21, 21.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 22, 40.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 23, 45.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 24, 60.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 25, 31.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 26, 23.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 27, 3.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 28, 42.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 29, 20.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 30, 26.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 31, 42.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 32, 79.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 33, 37.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 34, 37.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 35, 44.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 36, 18.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 37, 39.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (7, (SELECT MAX(id) FROM tbl_anos), 38, 37.25 , NULL, 1, NOW());

-- ######################
-- Ferdesbar FC 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (11, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 1, 59.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 2, 44.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 3, 61.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 4, 47.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 5, 47.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 6, 56.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 7, 38.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 8, 43.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 9, 58.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 10, 30.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 11, 65.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 12, 45.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 13, 47.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 14, 52.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 15, 122.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 16, 57.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 17, 73.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 18, 48.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 19, 45.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 20, 47.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 21, 38.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 22, 69.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 23, 74.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 24, 44.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 25, 74.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 26, 51.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 27, 43.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 28, 47.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 29, 50.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 30, 56.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 31, 44.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 32, 49.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 33, 46.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 34, 47.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 35, 72.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 36, 59.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 37, 36.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (11, (SELECT MAX(id) FROM tbl_anos), 38, 23.40 , NULL, 1, NOW());

-- ######################
-- Atlético de Magreed 					- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (5, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 1, 55.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 2, 38.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 3, 55.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 4, 58.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 5, 80.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 6, 62.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 7, 35.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 8, 44.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 9, 79.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 10, 60.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 11, 79.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 12, 39.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 13, 30.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 14, 45.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 15, 95.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 16, 47.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 17, 62.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 18, 48.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 19, 31.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 20, 49.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 21, 37.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 22, 48.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 23, 30.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 24, 28.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 25, 37.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 26, 44.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 27, 24.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 28, 39.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 29, 48.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 30, 60.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 31, 42.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 32, 56.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 33, 16.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 34, 78.18 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 35, 69.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 36, 58.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 37, 30.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (5, (SELECT MAX(id) FROM tbl_anos), 38, 54.20 , NULL, 1, NOW());

-- ######################
-- Tottengrão Football Club 			- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (37, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 1, 54.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 2, 33.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 3, 44.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 4, 74.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 5, 65.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 6, 84.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 7, 51.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 8, 46.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 9, 60.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 10, 23.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 11, 76.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 12, 63.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 13, 67.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 14, 91.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 15, 96.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 16, 69.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 17, 48.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 18, 40.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 19, 35.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 20, 63.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 21, 33.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 22, 64.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 23, 20.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 24, 56.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 25, 57.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 26, 36.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 27, 24.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 28, 56.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 29, 75.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 30, 81.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 31, 53.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 32, 70.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 33, 20.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 34, 57.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 35, 82.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 36, 46.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 37, 27.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (37, (SELECT MAX(id) FROM tbl_anos), 38, 22.62 , NULL, 1, NOW());

-- ######################
-- Picolomotiv Moscow 					- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (8, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 1, 57.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 2, 62.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 3, 51.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 4, 56.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 5, 57.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 6, 28.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 7, 34.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 8, 36.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 9, 84.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 10, 40.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 11, 43.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 12, 33.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 13, 45.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 14, 58.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 15, 88.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 16, 54.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 17, 56.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 18, 31.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 19, 46.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 20, 53.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 21, 25.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 22, 29.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 23, 59.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 24, 59.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 25, 55.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 26, 50.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 27, 13.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 28, 49.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 29, 90.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 30, 68.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 31, 69.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 32, 46.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 33, 31.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 34, 69.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 35, 72.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 36, 51.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 37, 33.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (8, (SELECT MAX(id) FROM tbl_anos), 38, 43.40 , NULL, 1, NOW());

-- ######################
-- E.C. UPU 							- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (4, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 1, 90.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 2, 58.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 3, 68.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 4, 60.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 5, 41.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 6, 84.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 7, 66.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 8, 25.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 9, 78.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 10, 61.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 11, 91.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 12, 54.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 13, 38.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 14, 34.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 15, 57.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 16, 64.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 17, 38.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 18, 57.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 19, 51.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 20, 52.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 21, 34.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 22, 41.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 23, 39.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 24, 64.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 25, 58.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 26, 48.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 27, 39.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 28, 64.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 29, 60.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 30, 75.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 31, 47.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 32, 70.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 33, 33.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 34, 65.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 35, 87.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 36, 75.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 37, 30.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (4, (SELECT MAX(id) FROM tbl_anos), 38, 28.54 , NULL, 1, NOW());

-- ######################
-- RafaelMaca FC 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (13, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 1, 76.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 2, 44.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 3, 57.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 4, 50.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 5, 52.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 6, 101.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 7, 23.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 8, 50.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 9, 94.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 10, 48.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 11, 71.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 12, 69.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 13, 37.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 14, 41.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 15, 96.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 16, 49.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 17, 58.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 18, 45.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 19, 43.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 20, 42.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 21, 39.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 22, 47.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 23, 35.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 24, 67.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 25, 73.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 26, 28.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 27, 45.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 28, 65.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 29, 78.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 30, 56.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 31, 54.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 32, 54.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 33, 47.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 34, 29.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 35, 80.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 36, 69.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 37, 29.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (13, (SELECT MAX(id) FROM tbl_anos), 38, 37.25 , NULL, 1, NOW());

-- ######################
-- Massa SCCP 							- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (38, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 1, 32.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 2, 35.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 3, 54.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 4, 7.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 5, 66.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 6, 76.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 7, 33.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 8, 46.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 9, 34.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 10, 53.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 11, 66.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 12, 43.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 13, 50.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 14, 72.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 15, 119.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 16, 37.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 17, 52.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 18, 42.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 19, 41.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 20, 39.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 21, 40.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 22, 51.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 23, 39.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 24, 23.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 25, 31.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 26, 16.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 27, 60.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 28, 42.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 29, 65.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 30, 48.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 31, 16.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 32, 11.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 33, 27.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 34, 36.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 35, 15.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 36, 22.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 37, 8.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (38, (SELECT MAX(id) FROM tbl_anos), 38, 32.25 , NULL, 1, NOW());

-- ######################
-- Zica do Cone 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (23, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 1, 69.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 2, 53.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 3, 35.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 4, 59.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 5, 49.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 6, 67.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 7, 33.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 8, 37.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 9, 61.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 10, 40.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 11, 59.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 12, 40.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 13, 56.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 14, 58.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 15, 77.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 16, 86.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 17, 72.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 18, 36.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 19, 39.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 20, 48.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 21, 42.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 22, 24.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 23, 21.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 24, 39.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 25, 56.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 26, 32.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 27, 31.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 28, 53.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 29, 57.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 30, 45.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 31, 36.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 32, 62.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 33, 61.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 34, 45.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 35, 52.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 36, 33.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 37, 41.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (23, (SELECT MAX(id) FROM tbl_anos), 38, 45.65 , NULL, 1, NOW());

-- ######################
-- Galaticc F.C 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (20, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 1, 59.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 2, 57.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 3, 63.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 4, 58.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 5, 64.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 6, 90.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 7, 48.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 8, 43.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 9, 69.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 10, 34.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 11, 94.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 12, 57.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 13, 54.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 14, 43.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 15, 109.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 16, 69.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 17, 63.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 18, 34.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 19, 57.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 20, 64.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 21, 23.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 22, 43.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 23, 59.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 24, 59.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 25, 60.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 26, 50.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 27, 28.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 28, 64.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 29, 85.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 30, 66.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 31, 51.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 32, 69.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 33, 35.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 34, 66.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 35, 80.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 36, 70.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 37, 62.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (20, (SELECT MAX(id) FROM tbl_anos), 38, 53.00 , NULL, 1, NOW());

-- ######################
-- ForestGump FC 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (18, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 1, 82.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 2, 55.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 3, 91.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 4, 75.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 5, 60.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 6, 84.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 7, 32.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 8, 48.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 9, 103.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 10, 40.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 11, 82.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 12, 37.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 13, 39.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 14, 19.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 15, 105.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 16, 36.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 17, 42.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 18, 56.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 19, 56.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 20, 31.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 21, 31.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 22, 43.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 23, 37.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 24, 44.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 25, 62.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 26, 51.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 27, 36.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 28, 66.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 29, 74.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 30, 37.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 31, 31.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 32, 61.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 33, 53.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 34, 84.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 35, 55.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 36, 89.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 37, 15.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (18, (SELECT MAX(id) FROM tbl_anos), 38, 39.52 , NULL, 1, NOW());

-- ######################
-- Piracicabanus FC 					- 
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Piracicabanus FC', 'piracicabanusfc.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 56.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 43.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 67.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 27.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 60.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 32.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 46.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 37.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 54.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 48.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 77.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 55.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 35.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 41.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 42.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 56.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 43.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 18.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 21.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 33.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 12.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 25.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 29.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 32.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 48.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 45.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 28.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 50.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 32.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 66.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 42.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 59.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 44.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 12.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 40.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 22.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 21.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 38.44 , NULL, 1, NOW());

-- ######################
-- CalvinNeythor FC 					- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (44, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 1, 53.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 2, 43.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 3, 33.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 4, 53.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 5, 44.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 6, 31.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 7, 38.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 8, 40.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 9, 41.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 10, 31.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 11, 32.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 12, 20.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 13, 25.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 14, 38.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 15, 15.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 16, 13.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 17, 27.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 18, 40.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 19, 26.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 20, 17.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 21, 54.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 22, 19.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 23, 7.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 24, 65.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 25, 35.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 26, 36.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 27, 20.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 28, 35.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 29, 31.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 30, 19.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 31, 17.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 32, 35.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 33, 17.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 34, 25.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 35, 37.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 36, 29.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 37, 41.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (44, (SELECT MAX(id) FROM tbl_anos), 38, 40.67 , NULL, 1, NOW());

-- ######################
-- S.F. Zangief 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (3, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 1, 81.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 2, 35.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 3, 54.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 4, 61.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 5, 69.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 6, 79.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 7, 42.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 8, 64.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 9, 57.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 10, 47.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 11, 105.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 12, 26.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 13, 47.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 14, 45.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 15, 107.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 16, 73.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 17, 59.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 18, 42.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 19, 56.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 20, 51.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 21, 34.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 22, 45.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 23, 59.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 24, 58.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 25, 77.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 26, 47.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 27, 46.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 28, 77.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 29, 88.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 30, 56.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 31, 68.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 32, 81.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 33, 29.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 34, 64.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 35, 79.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 36, 64.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 37, 23.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (3, (SELECT MAX(id) FROM tbl_anos), 38, 55.08 , NULL, 1, NOW());

-- ######################
-- Nicks Sports Team 					- 
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Nicks Sports Team', 'nickssportsteam.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 72.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 25.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 55.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 44.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 74.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 101.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 42.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 47.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 82.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 38.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 54.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 27.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 26.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 43.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 116.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 42.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 44.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 34.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 40.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 47.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 46.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 41.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 53.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 35.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 60.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 48.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 21.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 64.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 54.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 71.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 50.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 58.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 56.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 35.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 11.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 65.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 27.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 30.64 , NULL, 1, NOW());

-- ######################
-- U.P.U Fclub 							- 
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('U.P.U Fclub', 'u.p.ufclub.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 35.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 34.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 44.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 78.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 67.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 66.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 50.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 51.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 51.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 19.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 89.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 45.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 33.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 65.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 110.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 58.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 58.48 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 33.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 43.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 54.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 42.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 32.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 66.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 52.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 74.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 47.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 6.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 68.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 61.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 78.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 48.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 56.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 10.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 84.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 95.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 64.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 33.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 43.72 , NULL, 1, NOW());

-- ######################
-- Radio Brasil S B O 					- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (21, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 1, 65.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 2, 80.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 3, 51.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 4, 42.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 5, 79.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 6, 83.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 7, 64.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 8, 51.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 9, 58.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 10, 34.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 11, 65.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 12, 38.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 13, 75.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 14, 23.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 15, 74.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 16, 52.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 17, 64.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 18, 30.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 19, 44.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 20, 34.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 21, 22.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 22, 38.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 23, 53.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 24, 67.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 25, 66.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 26, 49.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 27, 23.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 28, 76.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 29, 44.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 30, 89.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 31, 49.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 32, 56.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 33, 39.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 34, 28.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 35, 71.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 36, 82.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 37, 47.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (21, (SELECT MAX(id) FROM tbl_anos), 38, 9.14 , NULL, 1, NOW());

-- ######################
-- Loks United FC 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (29, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 1, 71.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 2, 48.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 3, 76.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 4, 72.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 5, 55.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 6, 91.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 7, 73.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 8, 57.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 9, 77.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 10, 39.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 11, 53.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 12, 37.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 13, 76.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 14, 30.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 15, 83.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 16, 82.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 17, 66.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 18, 51.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 19, 39.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 20, 19.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 21, 54.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 22, 50.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 23, 51.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 24, 61.38 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 25, 88.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 26, 47.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 27, 28.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 28, 65.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 29, 52.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 30, 78.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 31, 70.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 32, 77.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 33, 33.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 34, 61.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 35, 107.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 36, 66.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 37, 25.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (29, (SELECT MAX(id) FROM tbl_anos), 38, 47.30 , NULL, 1, NOW());

-- ######################
-- BierFortes EC 						-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (10, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 1, 84.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 2, 63.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 3, 54.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 4, 70.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 5, 77.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 6, 94.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 7, 26.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 8, 50.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 9, 76.68 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 10, 35.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 11, 87.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 12, 54.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 13, 37.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 14, 34.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 15, 107.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 16, 89.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 17, 74.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 18, 24.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 19, 59.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 20, 40.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 21, 49.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 22, 39.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 23, 68.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 24, 56.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 25, 76.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 26, 41.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 27, 44.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 28, 53.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 29, 94.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 30, 66.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 31, 49.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 32, 77.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 33, 41.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 34, 70.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 35, 84.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 36, 69.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 37, 39.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (10, (SELECT MAX(id) FROM tbl_anos), 38, 45.28 , NULL, 1, NOW());

-- ######################
-- Gaviões 1969 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (42, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 1, 67.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 2, 79.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 3, 69.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 4, 70.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 5, 48.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 6, 78.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 7, 41.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 8, 56.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 9, 82.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 10, 43.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 11, 69.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 12, 45.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 13, 38.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 14, 51.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 15, 125.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 16, 66.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 17, 56.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 18, 39.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 19, 59.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 20, 26.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 21, 32.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 22, 25.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 23, 56.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 24, 61.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 25, 81.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 26, 52.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 27, 60.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 28, 57.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 29, 69.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 30, 63.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 31, 61.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 32, 79.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 33, 65.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 34, 77.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 35, 76.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 36, 43.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 37, 19.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (42, (SELECT MAX(id) FROM tbl_anos), 38, 66.50 , NULL, 1, NOW());

-- ######################
-- FC Viziolli 							- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (17, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 1, 67.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 2, 60.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 3, 53.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 4, 52.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 5, 49.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 6, 39.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 7, 41.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 8, 45.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 9, 42.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 10, 39.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 11, 73.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 12, 42.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 13, 43.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 14, 41.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 15, 19.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 16, 56.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 17, 23.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 18, 53.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 19, 37.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 20, 44.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 21, 47.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 22, 26.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 23, 32.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 24, 25.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 25, 50.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 26, 8.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 27, 25.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 28, 32.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 29, 37.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 30, 32.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 31, 38.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 32, 25.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 33, 7.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 34, 18.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 35, 9.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 36, 24.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 37, 19.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (17, (SELECT MAX(id) FROM tbl_anos), 38, 8.40 , NULL, 1, NOW());

-- ######################
-- Dá Hadouken Goku 					- 
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Dá Hadouken Goku', 'dahadoukengoku.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 76.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 32.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 73.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 68.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 76.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 55.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 40.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 53.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 89.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 43.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 96.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 47.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 35.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 47.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 90.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 84.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 43.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 33.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 62.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 26.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 60.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 50.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 56.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 29.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 28.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 7.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 51.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 53.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 52.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 54.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 16.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 74.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 38.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 48.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 42.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 53.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 53.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 28.18 , NULL, 1, NOW());

-- ######################
-- Sport Club Corinthians Rio Clarense	- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (24, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 1, 67.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 2, 48.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 3, 57.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 4, 57.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 5, 55.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 6, 58.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 7, 51.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 8, 37.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 9, 86.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 10, 72.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 11, 87.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 12, 49.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 13, 58.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 14, 19.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 15, 72.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 16, 62.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 17, 61.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 18, 51.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 19, 56.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 20, 33.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 21, 23.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 22, 47.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 23, 27.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 24, 49.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 25, 44.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 26, 15.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 27, 34.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 28, 46.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 29, 64.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 30, 54.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 31, 35.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 32, 63.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 33, 59.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 34, 39.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 35, 33.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 36, 58.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 37, 28.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (24, (SELECT MAX(id) FROM tbl_anos), 38, 54.35 , NULL, 1, NOW());

-- ######################
-- FutebolClube 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (9, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 1, 60.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 2, 22.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 3, 39.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 4, 58.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 5, 57.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 6, 111.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 7, 16.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 8, 34.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 9, 97.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 10, 38.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 11, 81.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 12, 41.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 13, 75.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 14, 35.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 15, 126.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 16, 69.08 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 17, 41.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 18, 38.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 19, 51.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 20, 59.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 21, 47.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 22, 57.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 23, 62.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 24, 44.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 25, 75.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 26, 42.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 27, 29.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 28, 75.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 29, 96.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 30, 89.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 31, 54.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 32, 95.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 33, 42.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 34, 63.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 35, 53.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 36, 73.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 37, 18.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (9, (SELECT MAX(id) FROM tbl_anos), 38, 40.10 , NULL, 1, NOW());

-- ######################
-- Lanterna Negra 						- 14
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (12, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 1, 74.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 2, 33.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 3, 28.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 4, 59.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 5, 45.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 6, 34.90 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 7, 57.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 8, 37.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 9, 35.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 10, 42.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 11, 68.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 12, 44.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 13, 21.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 14, 25.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 15, 80.82 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 16, 76.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 17, 39.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 18, 43.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 19, 53.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 20, 44.84 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 21, 28.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 22, 35.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 23, 43.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 24, 48.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 25, 32.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 26, 48.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 27, 40.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 28, 31.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 29, 56.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 30, 34.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 31, 15.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 32, 30.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 33, 40.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 34, 46.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 35, 98.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 36, 33.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 37, 44.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (12, (SELECT MAX(id) FROM tbl_anos), 38, 56.27 , NULL, 1, NOW());

-- ######################
-- Tiwanaku FC 							- 
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Tiwanaku FC', 'tiwanakufc.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 73.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 52.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 53.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 43.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 58.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 56.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 52.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 60.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 35.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 52.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 67.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 22.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 37.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 30.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 49.87 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 18.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 49.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 34.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 52.73 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 39.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 55.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 50.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 72.63 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 53.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 74.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 39.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 46.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 43.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 36.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 79.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 40.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 67.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 26.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 24.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 38.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 38.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 34.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 36.34 , NULL, 1, NOW());

-- ######################
-- SubZeroWins FC 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (33, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 1, 33.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 2, 51.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 3, 42.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 4, 40.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 5, 36.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 6, 39.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 7, 29.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 8, 38.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 9, 61.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 10, 27.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 11, 30.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 12, 38.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 13, 49.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 14, 48.88 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 15, 31.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 16, 69.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 17, 38.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 18, 16.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 19, 49.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 20, 30.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 21, 45.32 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 22, 25.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 23, 28.66 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 24, 33.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 25, 29.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 26, 12.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 27, 43.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 28, 32.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 29, 24.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 30, 61.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 31, 34.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 32, 15.43 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 33, 39.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 34, 33.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 35, 35.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 36, 39.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 37, 61.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (33, (SELECT MAX(id) FROM tbl_anos), 38, 48.32 , NULL, 1, NOW());

-- ######################
-- Rebimboca FC 						- 
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (41, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 1, 49.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 2, 35.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 3, 84.59 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 4, 61.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 5, 69.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 6, 93.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 7, 39.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 8, 67.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 9, 80.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 10, 55.01 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 11, 55.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 12, 26.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 13, 45.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 14, 64.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 15, 84.75 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 16, 35.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 17, 32.06 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 18, 42.17 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 19, 45.30 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 20, 49.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 21, 35.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 22, 33.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 23, 39.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 24, 73.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 25, 73.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 26, 33.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 27, 19.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 28, 54.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 29, 50.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 30, 59.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 31, 60.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 32, 93.98 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 33, 34.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 34, 56.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 35, 69.99 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 36, 66.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 37, 11.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (41, (SELECT MAX(id) FROM tbl_anos), 38, 50.64 , NULL, 1, NOW());

-- ######################
-- Mecônio Sport Club 					-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (26, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 1, 51.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 2, 43.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 3, 53.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 4, 76.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 5, 40.97 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 6, 31.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 7, 24.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 8, 36.28 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 9, 61.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 10, 30.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 11, 31.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 12, 35.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 13, 58.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 14, 17.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 15, 21.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 16, 22.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 17, 38.81 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 18, 41.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 19, 61.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 20, 7.92 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 21, 29.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 22, 31.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 23, 16.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 24, 29.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 25, 34.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 26, 7.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 27, 37.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 28, 46.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 29, 46.31 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 30, 55.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 31, 22.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 32, 29.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 33, 33.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 34, 15.54 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 35, 48.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 36, 60.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 37, 53.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (26, (SELECT MAX(id) FROM tbl_anos), 38, 21.34 , NULL, 1, NOW());

-- ######################
-- Paitaki! 							-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Paitaki!', 'paitaki.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 53.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 39.49 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 46.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 30.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 57.10 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 74.14 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 42.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 23.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 87.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 40.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 44.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 37.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 36.34 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 38.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 75.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 47.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 50.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 26.37 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 46.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 15.93 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 40.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 39.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 32.85 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 72.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 55.50 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 33.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 41.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 40.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 54.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 64.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 55.94 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 64.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 62.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 48.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 39.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 54.19 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 48.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 39.75 , NULL, 1, NOW());

-- ######################
-- Cavalo q pula 						-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (2, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 1, 11.40 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 2, 36.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 3, 21.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 4, 45.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 5, 41.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 6, 58.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 7, 42.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 8, 40.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 9, 61.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 10, 16.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 11, 29.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 12, 41.56 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 13, 43.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 14, 31.78 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 15, 64.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 16, 25.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 17, 53.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 18, 61.74 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 19, 39.58 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 20, 63.83 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 21, 62.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 22, 26.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 23, 47.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 24, 62.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 25, 37.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 26, 40.26 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 27, 57.44 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 28, 30.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 29, 63.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 30, 84.11 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 31, 44.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 32, 77.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 33, 47.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 34, 42.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 35, 76.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 36, 60.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 37, 52.04 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (2, (SELECT MAX(id) FROM tbl_anos), 38, 20.57 , NULL, 1, NOW());

-- ######################
-- Chico Futebol artes 					-
-- ######################
INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES (14, (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 1, 51.00 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 2, 44.29 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 3, 70.41 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 4, 65.23 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 5, 66.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 6, 63.15 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 7, 31.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 8, 61.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 9, 62.09 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 10, 50.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 11, 94.69 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 12, 31.27 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 13, 28.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 14, 28.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 15, 110.72 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 16, 69.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 17, 57.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 18, 38.77 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 19, 52.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 20, 34.52 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 21, 42.12 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 22, 45.96 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 23, 16.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 24, 70.24 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 25, 62.47 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 26, 5.07 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 27, 40.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 28, 55.89 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 29, 33.65 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 30, 40.95 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 31, 24.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 32, 71.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 33, 58.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 34, 47.76 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 35, 46.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 36, 40.51 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 37, 34.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES (14, (SELECT MAX(id) FROM tbl_anos), 38, 45.02 , NULL, 1, NOW());

-- ######################
-- Mambembe AE 							-
-- ######################
INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
     VALUES ('Mambembe AE', 'mambembeae.png', '', '', '', 0); 
INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
	 VALUES ((SELECT MAX(id) FROM tbl_times), '', MD5('123'), 1, 3, 0);

INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
	 VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 1);
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 1, 57.53 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 2, 48.33 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 3, 58.39 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 4, 54.86 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 5, 47.91 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 6, 65.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 7, 47.21 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 8, 38.62 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 9, 58.13 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 10, 44.67 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 11, 59.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 12, 22.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 13, 35.05 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 14, 10.25 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 15, 71.42 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 16, 43.61 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 17, 44.79 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 18, 42.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 19, 34.70 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 20, 34.22 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 21, 47.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 22, 25.46 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 23, 33.64 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 24, 78.20 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 25, 71.60 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 26, 59.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 27, 23.03 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 28, 39.57 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 29, 42.35 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 30, 64.36 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 31, 56.80 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 32, 64.02 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 33, 45.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 34, 45.16 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 35, 50.71 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 36, 66.45 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 37, 37.55 , NULL, 1, NOW());
INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ((SELECT MAX(id) FROM tbl_times), (SELECT MAX(id) FROM tbl_anos), 38, 22.34 , NULL, 1, NOW());





UPDATE tbl_inscricao 		SET id_times = 32			WHERE id_times = 46;
UPDATE tbl_times_temporadas 	SET id_times = 32			WHERE id_times = 46;
DELETE FROM tbl_usuarios 	WHERE times_id = 46;
DELETE FROM tbl_times 		WHERE id = 46;

UPDATE tbl_inscricao 		SET id_times = 19			WHERE id_times = 42;
UPDATE tbl_times_temporadas 	SET id_times = 19			WHERE id_times = 42;
DELETE FROM tbl_usuarios 	WHERE times_id = 42;
DELETE FROM tbl_times 		WHERE id = 42;

UPDATE tbl_inscricao 		SET id_times = 21			WHERE id_times = 40;
UPDATE tbl_times_temporadas 	SET id_times = 21			WHERE id_times = 40;
DELETE FROM tbl_usuarios 	WHERE times_id = 40;
DELETE FROM tbl_times 		WHERE id = 40;

UPDATE tbl_inscricao 		SET id_times = 4			WHERE id_times = 39;
UPDATE tbl_times_temporadas 	SET id_times = 4			WHERE id_times = 39;
DELETE FROM tbl_usuarios 	WHERE times_id = 39;
DELETE FROM tbl_times 		WHERE id = 39;


UPDATE tbl_times SET ativo = 1 WHERE id IN (SELECT id_times FROM tbl_inscricao WHERE id_anos = 3);
UPDATE tbl_inscricao SET ativo = 1 WHERE id_anos = 3;










