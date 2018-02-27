<?php
require_once("../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") header('Location: index.php');
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

	<title>Admin | Cartolas sem cartola</title>

	<link rel="icon" type="image/png" sizes="16x16" href="../img/favicon-16x16.png">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<nav>
		<div class="sidebar">
			<div class="sidebar-header">
				<img src="../img/logo.png" alt="Logo Cartola">
			</div><!-- sidebar-header -->

			<ul class="nav">
				<li class="nav-item">					
					<a href="home.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'home.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-home"></i>	
					Home
					</a>
				</li>
				<li class="nav-item">					
					<a href="temporadas.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'temporadas.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-calendar"></i>	
					Temporadas
					</a>
				</li>
				<li class="nav-item">					
					<a href="times_temporadas.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'times_temporadas.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-list-ol"></i>	
					Ativar Times
					</a>
				</li>
				<li class="nav-item">					
					<a href="gerenciar_times.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'gerenciar_times.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-soccer-ball-o"></i>	
					Gerenciar Times
					</a>
				</li>
				<li class="nav-item">					
					<a href="pontuacoes.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'pontuacoes.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-calculator"></i>	
					Pontuação
					</a>
				</li>
				<li class="nav-item">					
					<a href="mata_mata.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'mata_mata.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-fire"></i>	
					Mata-mata
					</a>
				</li>
				<li class="nav-item">					
					<a href="eventos.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'eventos.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-beer"></i>	
					Eventos
					</a>
				</li>
				<li class="nav-item">					
					<a href="configuracoes.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'configuracoes.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-cogs"></i>	
					Configurações
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
						<span class="mark">Cartolas</span>
						<span>sem</span>
						<span class="mark">cartola</span>
					</p>
					<p>
						<span class="mark"><?php echo date("d"); ?></span>
						<span><?php echo date("M"); ?></span>
						<span class="mark"><?php echo date("Y"); ?></span>
					</p>
				</div><!-- liga -->
				<div class="liga-logo">
					<span class="mark-merc hidden-xs-down">Olá, <?php echo $_SESSION["usu_login"]?>!</span>
					<span class="mark">
						<i class="fa fa-user fa-2x"></i>												
					</span> 
				</div><!-- liga-logo -->
			</div><!-- container -->	
		</div><!-- header -->
	</header>