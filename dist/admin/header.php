<?php
require_once("../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") header('Location: ./');
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
	<link rel="stylesheet" type="text/css" href="../css/bootstrap-toggle.min.css">
</head>
<body>
	<nav>
		<div class="sidebar">
			<div class="sidebar-header">
				<img src="../img/logo.png" alt="Logo Cartola">
			</div><!-- sidebar-header -->

			<ul class="nav">
				<li class="nav-item">					
					<a href="home" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'home.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-home"></i>	
					Home
					</a>
				</li>
				<li class="nav-item">					
					<a href="temporadas" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'temporadas.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-calendar"></i>	
					Temporadas
					</a>
				</li>
				<?php if($_SESSION['usu_nivel'] == "1") : ?>
					<li class="nav-item">					
						<a href="times_temporadas" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'times_temporadas.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-list-ol"></i>	
						Ativar Inscrição
						</a>
					</li>
					<li class="nav-item">					
						<a href="gerenciar_times" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'gerenciar_times.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-soccer-ball-o"></i>	
						Gerenciar Times
						</a>
					</li>
				<?php endif; ?>
				<li class="nav-item">					
					<a href="pontuacoes" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'pontuacoes.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-calculator"></i>	
					Pontuação
					</a>
				</li>
				<li class="nav-item">					
					<a href="mata_mata" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'mata_mata.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-fire"></i>	
					Mata-mata
					</a>
				</li>
				<li class="nav-item">					
					<a href="eventos" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'eventos.php' ? ' nav-active' : ''; ?>">
					<i class="fa fa-beer"></i>	
					Eventos
					</a>
				</li>
				<?php if($_SESSION['usu_nivel'] == "1") : ?>
					<li class="nav-item">					
						<a href="usuarios" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'usuarios.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-user"></i>	
						Usuários
						</a>
					</li>
					<li class="nav-item">					
						<a href="configuracoes" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'configuracoes.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-cogs"></i>	
						Configurações
						</a>
					</li>
				<?php endif; ?>
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
					<div class="dropdown">
						<div class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span class="mark hidden-xs-down"><?php echo $_SESSION["usu_nome"] ?></span>
							<span class="mark">
								<?php
								if(isset($_SESSION["usu_escudo"]) && !empty($_SESSION["usu_escudo"])) {
									echo "<img src='../img/escudos/" . $_SESSION["usu_escudo"] . "'>";
								}
								else {
									echo "<i class='fa fa-user fa-2x'></i>";
								}
								?>
							</span>
						</div>
						<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
    						<div class="dropdown-item"><a href="logout">Sair</a></div>
    					</div>	
					</div>
				</div><!-- liga-logo -->
			</div><!-- container -->	
		</div><!-- header -->
	</header>