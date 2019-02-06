<?php 
require_once('header.php');

$temporada = $_SESSION["temp_atual"];
$rodada = $_SESSION["rod_atual"];

$flag_temp_aberta = $_SESSION["temporada"] == 1;
$flag_merc_aberto = $_SESSION["mercado"] == 1;

$qrypontuacao = $conn->query("SELECT t.id AS id, t.nome_presidente AS presidente, t.nome_time AS time, t.escudo_time AS escudo, 
									 COALESCE(tt.pontuacao, 0) AS pontuacao
	                            FROM tbl_times_temporadas tt
	                      INNER JOIN tbl_times t ON t.id = tt.id_times
	                           WHERE tt.id_anos = " . $_SESSION["temporada_atual"] . "
	                             AND tt.id_rodadas = " . (empty($_SESSION["rodada"]) ? "1" : $_SESSION["rodada"]) . "
	                             AND t.ativo = 1
				            ORDER BY t.nome_time ASC") or trigger_error($conn->error);
?> <main class="maintable"><div class="container"><div class="jumbotron" style="padding: 0px;"><div class="container" style="margin-left: 0px;"><h2 class="display-5">Lançamento de pontuação da rodada</h2><hr class="my-4"><h4 class="display-5">Temporada: <?php echo $temporada; ?></h4><h4 class="display-5">Rodada: <?php echo $rodada; ?> º</h4><p class="lead">A temporada está <b><?php echo ($flag_temp_aberta ? "aberta " : "fechada ") ?></b>e o mercado está <b><?php echo ($flag_merc_aberto ? "aberto" : "fechado") ?></b>.</p></div></div><div class="row"><div class="col-12"><form id="form-pontuacoes" action="acts/acts.pontuacoes.php" method="POST"><table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><thead><tr><th class="center">&nbsp;</th><th class="text-column">Time</th><th class="text-column">Presidente</th><th class="center">Pontuação</th></tr></thead> <?php 
							if(intval($_SESSION["api_ligada"]) != 1) {
					        	if($flag_temp_aberta) {
						        	if($qrypontuacao && $qrypontuacao->num_rows > 0) {
						        		echo "<tfoot>
												<tr>
													<th colspan='4'>
														<div class='row'>
															<div class='offset-md-6 offset-lg-9 offset-xl-9 col-sm-12 col-md-6 col-lg-3 col-xl-3'>
																<button type='button' class='btn btn-success form-control btn-salvar-pontuacoes' " . ($flag_merc_aberto ? "disabled" : "") . ">
																	<i class='fa fa-save'></i> Salvar pontuações
																</button>	
															</div>
														</div>
													</th>
												</tr>
											   </tfoot>";
						        	}
				   				}
			   				}
							?> <tbody> <?php 
							if(intval($_SESSION["api_ligada"]) != 1) {
					        	if($flag_temp_aberta) {
						        	if($qrypontuacao && $qrypontuacao->num_rows > 0) {
						        		echo "<tr>
												<th colspan='4'>
													<div class='row'>
														<div class='offset-md-6 offset-lg-9 offset-xl-9 col-sm-12 col-md-6 col-lg-3 col-xl-3'>
															<button type='button' class='btn btn-success form-control btn-salvar-pontuacoes' " . ($flag_merc_aberto ? "disabled" : "") . ">
																<i class='fa fa-save'></i> Salvar pontuações
															</button>	
														</div>
													</div>
												</th>
											</tr>";
							    
							        	while($time = $qrypontuacao->fetch_object()) {
							                $fake_id = $time->id * $_SESSION["fake_id"];

							                $escudo = "../img/escudos/no-escudo.png";
							                if(file_exists("../img/escudos/$time->escudo"))
							                	$escudo = "../img/escudos/$time->escudo";
							                
							                $value = "";
							                if(isset($time->pontuacao) && !empty($time->pontuacao) && floatval($time->pontuacao) > 0)
							                	$value = "value='" . number_format($time->pontuacao, 2) . "'";

							        		echo "<tr>
											        <td class='center'><img src='$escudo' class='img-fluid'></td>
									                <td>$time->time</td>
									                <td>$time->presidente</td>
									                <td class='center'>
									                	<div class='row'>
															<div class='col-sm-12 col-md-12 col-lg-5 col-xl-5'>
																<select class='form-control' id='operador[$fake_id]' name='operador[$fake_id]' " . ($flag_merc_aberto ? "disabled" : "") . ">
																	<option value='+' " . ($time->pontuacao >= 0 ? "selected" : "") . ">+</option>
																	<option value='-' " . ($time->pontuacao < 0 ? "selected" : "") . ">-</option>
																</select>
															</div>
															<div class='col-sm-12 col-md-12 col-lg-7 col-xl-7'>
						  										<input type='text' class='form-control' id='pontuacao[$fake_id]' name='pontuacao[$fake_id]' placeholder='0,00' data-mask='##0,00' " . $value . " data-mask-selectonfocus='true' data-mask-clearifnotmatch='true' data-mask-reverse='true' " . ($flag_merc_aberto ? "disabled" : "") . " maxlength='6' />
															</div>
					  									</div>
									                </td></tr>";
										}
						        	}
						        	else {
						        		echo "<tr>
								                <td colspan='4' class='center'>Não há dados a serem exibidos para a listagem.</td>
							                </tr>";
						        	}
					        	}
					        	else {
					        		echo "<tr>
							                <td colspan='4' class='center'>A temporada $temporada está fechada. Aguarde a abertura da mesma para lançar as pontuações das rodadas.</td>
						                </tr>";
					        	}
				        	}
				        	else {
				        		echo "<tr>
						                <td colspan='4' class='center'>A chave da API está ligada, assim não é possível lançar a pontuação da rodada por essa tela. O sistema irá carregar os dados automaticamente.</td>
					                </tr>";
				        	}
							?> </tbody></table></form></div></div></div></main> <?php require_once('footer.php'); ?>