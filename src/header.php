<?php 
require_once("conn.php");
if($_SESSION["temporada"] == 0 && (basename($_SERVER['PHP_SELF']) != "inscricao.php" && basename($_SERVER['PHP_SELF']) != "regulamentos.php"))
	header('Location: inscricao.php');
else {
	if ($_SESSION["user_ativado"] &&
		basename($_SERVER['PHP_SELF']) != "inscricao.php" && 
		basename($_SERVER['PHP_SELF']) != "regulamentos.php" &&
		basename($_SERVER['PHP_SELF']) != "index.php" &&
		(!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
		!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
		$_SESSION["usu_id"] == "0")) 
		header('Location: login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<meta name="description" content="Acompanhe seu time na liga Cartolas sem Cartola e seque bastante todos seus colegas" />
	<meta name="keywords" content="cartola, fc, globo, cartolas, sem, cartola, futebol, brasileirão, serie, a" />
	<meta name="author" content="Pedro Pilz, Bruno Gomes"/>

	<meta name="robots" content="index, follow" />
	<meta name="googlebot" content="index, follow" />
	
	<title>Cartolas sem cartola</title>

	<link rel="icon" type="image/png" sizes="16x16" href="img/favicon-16x16.png">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<nav>
		<div class="sidebar">
			<div class="sidebar-header">
				<img src="img/logo.png" alt="Logo Cartola">
			</div><!-- sidebar-header -->

			<ul class="nav">

				<?php if($_SESSION["temporada"] == "1") : ?>
					<li class="nav-item">					
						<a href="index.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'index.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-home"></i>	
						Dashboard 
						</a>
					</li>
					<li class="nav-item">					
						<a href="liga.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'liga.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-line-chart"></i>	
						Tabela Liga CSC
						</a>
					</li>
					<li class="nav-item">					
						<a href="mata-mata.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'mata-mata.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-trophy"></i>	
						Mata-Mata
						</a>
					</li>
					<li class="nav-item">					
						<a href="clube.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'clube.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-id-card"></i>	
						Historia do Clube
						</a>
					</li>
					<li class="nav-item">					
						<a href="brasileiro.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'brasileiro.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-list-alt"></i>	
						Tabela Brasileirão
						</a>
					</li>
					<li class="nav-item">					
						<a href="eventos.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'eventos.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-calendar"></i>	
						Eventos
						</a>
					</li>					
					<li class="nav-item">					
						<a href="pontuacao.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'pontuacao.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-bar-chart"></i>	
						Pontuação Cartola
						</a>
					</li>
					<li class="nav-item">					
						<a href="scouts.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'scouts.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-area-chart"></i>	
						Scouts
						</a>
					</li>
				<?php endif; ?>
				<?php if($_SESSION["temporada"] == "0") : ?>
					<li class="nav-item">					
						<a href="inscricao.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'inscricao.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-check-square-o"></i>	
						Inscrições
						</a>
					</li>
				<?php endif; ?>
				<li class="nav-item">					
					<a href="regulamentos.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'regulamentos.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-file-text-o"></i>	
					Regulamentos
					</a>
				</li>
			</ul>
		</div><!-- sidebar -->
	</nav>

	<header>
		<div class="header">
			<div class="container">
				<div class="offcanvas">
					<a href="#" class="js-open-sidebar item">
						<i class="fa fa-bars"></i>
					</a>
				</div><!-- offcanvas -->

				<div class="liga">					
					<p>
						<span class="mark hidden-xs-down">
							Bom dia, hoje é <?php echo date('d'); ?> de <?php echo date('M'); ?> de <?php echo date('Y'); ?>
						</span>
					</p>
				</div><!-- liga -->

				<div class="liga-logo">										
					<?php if ($_SESSION["mercado"] == 1) : ?>
						<span class="mark">
							<i class="fa fa-hourglass-start fa"></i>												
						</span>
						<span class="mark-merc hidden-xs-down">Mercado aberto</span>						 
						<?php else: ?>
							<span class="mark">
								<i class="fa fa-hourglass-start fa"></i>												
							</span>	
							<span class="mark-merc hidden-xs-down">Mercado fechado</span>												
					<?php endif; ?>
				</div><!-- liga-logo -->
				<?php if(isset($_SESSION["usu_id"]) && !empty($_SESSION["usu_id"]) && $_SESSION["usu_id"] > 0) : ?>
					<div class="liga-logo">
						<div class="dropdown">
							<div class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="mark hidden-xs-down"><?php echo $_SESSION["usu_nome"] ?></span>
								<span class="mark">
									<?php
									if(isset($_SESSION["usu_escudo"]) && !empty($_SESSION["usu_escudo"])) {
										echo "<img src='img/escudos/" . $_SESSION["usu_escudo"] . "'>";
									}
									else {
										echo "<i class='fa fa-user fa-2x'></i>";
									}
									?>
								</span>
							</div>
							<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
	    						<div class="dropdown-item"><a href="#">Meus dados</a></div>
	    						<div class="dropdown-item"><a href="logout.php">Sair</a></div>
	    					</div>	
						</div>
					</div><!-- liga-logo -->
				<?php endif; ?>
			</div><!-- container -->	
		</div><!-- header -->
	</header>