<?php 
require_once('header.php');
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] != "1" || $_SESSION["usu_id"] == "0") header('Location: ./');
$usuarioslist = $conn->query("SELECT u.id AS id, u.usuario AS usuario, t.nome_time AS time, u.nivel as nivel, u.senha_provisoria AS ativado, 
									 u.tentativas AS tentativas
        		 			    FROM tbl_usuarios u
  					       LEFT JOIN tbl_times t ON t.id = u.times_id
       					    ORDER BY u.id ASC") or trigger_error($conn->error);
?> <main class="maintable"><div class="container"><h3 class="headline">Gerenciamento de usuários</h3> <?php if($_SESSION["usu_nivel"] == 1) : ?> <div class="row" style="margin-bottom: 20px;"><div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8"><button type="button" class="btn btn-success btn-lg form-control" id="btn-add-usuarios"><i class="fa fa-plus"></i> Novo usuário administrador</button></div><!-- col-sm-8--></div><!-- row --> <?php endif; ?> <div class="row"><div class="col-12"><table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><thead><tr><th class="center">#</th><th>Usuário</th><th>Time</th><th class="center">Nivel</th><th class="center">Ativado</th><th class="center">Tentativas</th><th class="center">Opções</th></tr></thead><tbody> <?php 
			        	if($usuarioslist && $usuarioslist->num_rows > 0) {
				        	while($usuarios = $usuarioslist->fetch_object()) {
				                $fake_id = $usuarios->id * $_SESSION["fake_id"];

				                $nivel = "";
				                if($usuarios->nivel == 1) {
				                	$nivel = "Administrador";
				                }
				                else if($usuarios->nivel == 2) {
				                	$nivel = "Operador";
				                }
				                else {
				                	$nivel = "Comum";
				                }

				        		echo "<tr>
      									<th scope='row' class='center'>$usuarios->id</th>
						                <td>$usuarios->usuario</td>
						                <td>$usuarios->time</td>
						                <td class='center'>$nivel</td>
						                <td class='center'>" . ($usuarios->ativado == 0 ? "<i class='fa fa-check fa-2x add' alt='Usuário ativado' title='Usuário foi ativado'></i>" : "<i class='fa fa-times fa-2x del' alt='Usuário inativado' title='Usuário ainda não foi ativado'></i>") . "</td>
						                <td class='center'>$usuarios->tentativas</td>
						                <td class='center'>
											<a href='#' class='btn-edit-usuarios' data-id='$fake_id' alt='Editar' title='Editar dados de $usuarios->usuario'>
												<i class='fa fa-edit fa-2x edit'></i>
											</a>
											<a href='#' class='btn-resetar-senha' data-id='$fake_id' alt='Resetar senha' title='Resetar senha de $usuarios->usuario'>
												<i class='fa fa-eraser fa-2x add'></i>
											</a>";
								if($usuarios->usuario != 'admin' && $usuarios->nivel != 3) {
									echo "<a href='#' class='btn-del-usuarios' data-id='$fake_id' alt='Remover' title='Remover $usuarios->usuario'>
												<i class='fa fa-trash fa-2x del'></i>
											</a>";
								}
								else {
									echo "<i class='fa fa-trash fa-2x del-disabled'></i>";
								}
								echo "</td></tr>";
							}
			        	}
			        	else {
			        		echo "<tr>
					                <td colspan='7' class='center'>Não há dados a serem exibidos para a listagem.</td>
				                </tr>";
			        	}
						?> </tbody></table></div><!-- col-sm-8--></div><!-- row --></div><!-- col-sm-8--></main><main class="mainadd"><div class="container"><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12"><h3 class="headline" id="headline-add-usuarios"></h3></div><!-- col-sm-8--></div><!-- row --><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12 col-md-6 col-lg-2 col-xl-2"><button type="button" class="btn btn-link btn-lg form-control btn-voltar btn-voltar-usuarios"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;&nbsp;Voltar</button></div><!-- col-sm-8--></div><!-- row --><div class="row justify-content-md-center"><div id="box-ano" class="col-sm-12 col-md-9 col-lg-6 col-xl-6 form-box"><form id="form-usuarios-add" data-toggle="validator" action="acts/acts.usuarios.php" method="POST"><h3 class="headline headline-form-add"></h3><div class="row"><div class="col-12"><label for="usuario">Usuário admin</label> <input type="text" class="form-control form-control-lg" id="usuario" name="usuario" aria-describedby="usuario" placeholder="Informe o usuário admin..." data-error="Por favor, informe o usuário." maxlength="120" required><div class="help-block with-errors"></div></div></div><div class="row"><div class="col-12"><label for="senha">Senha</label> <input type="password" class="form-control form-control-lg" id="senha" name="senha" aria-describedby="senha" placeholder="Informe a senha..." data-error="Por favor, informe a senha." maxlength="120" required><div class="help-block with-errors"></div></div></div><button type="button" class="btn btn-success btn-lg form-control" id="btn-incluir-usuario"><i class="fa fa-save"></i> Salvar dados</button></form></div><!-- col-sm-8--></div></div></main><main class="mainform"><div class="container"><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12"><h3 class="headline" id="headline-edit-usuarios"></h3></div><!-- col-sm-8--></div><!-- row --><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12 col-md-6 col-lg-2 col-xl-2"><button type="button" class="btn btn-link btn-lg form-control btn-voltar btn-voltar-usuarios"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;&nbsp;Voltar</button></div><!-- col-sm-8--></div><!-- row --><div class="row justify-content-md-center"><div id="box-ano" class="col-sm-12 col-md-10 col-lg-9 col-xl-9 form-box"><form id="form-usuarios-edit" data-toggle="validator" action="acts/acts.usuarios.php" method="POST"><h3 class="headline headline-form-edit"></h3><div class="row"><div class="col-sm-4 col-md-4 col-lg-2 col-xl-2"><label for="id">ID</label> <input type="number" class="form-control form-control-lg" id="id" name="id" aria-describedby="id" maxlength="11" disabled="disabled"></div><div class="col-sm-8 col-md-8 col-lg-10 col-xl-10"><label for="time">Time</label><h3 id="time-usuario"></h3></div></div><div class="row"><div class="col-sm-12 col-md-6 col-lg-4 col-xl-4"><label for="user">Usuário</label> <input type="text" class="form-control form-control-lg" id="user" name="user" aria-describedby="user" placeholder="Informe o usuário..." data-error="Por favor, informe o usuário." maxlength="120" required><div class="help-block with-errors"></div></div><div class="col-sm-12 col-md-6 col-lg-4 col-xl-4"><label for="password">Senha</label> <input type="password" class="form-control form-control-lg" id="password" name="password" aria-describedby="password" placeholder="Informe a senha..." data-error="Por favor, informe a senha." maxlength="120" required><div class="help-block with-errors"></div></div><div class="col-sm-12 col-md-6 col-lg-4 col-xl-4"><label for="nivel">Nível</label> <select class="form-control form-control-lg" id="nivel" name="nivel" aria-describedby="nivel" placeholder="Selecione o nivel..." data-error="Por favor, selecione o nivel." required><option selected="selected">Selecione...</option><option value="1">Administrador</option><option value="2">Operador</option><option value="3">Comum</option></select><div class="help-block with-errors"></div></div></div><div class="row" style="margin-top: 50px;"><div class="col-sm-12 col-md-6 col-lg-6 col-xl-6"><button type="button" class="btn btn-success btn-lg form-control" id="btn-editar-usuario"><i class="fa fa-save"></i> Salvar dados</button></div><div class="col-sm-12 col-md-6 col-lg-6 col-xl-6"><button type="button" class="btn btn-warning btn-lg form-control" id="btn-desativar-usuario"><i class="fa fa-thumbs-down"></i> Desativar usuário</button></div></div></form></div><!-- col-sm-8--></div></div></main> <?php require_once('footer.php'); ?>