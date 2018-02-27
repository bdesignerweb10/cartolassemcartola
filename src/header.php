<?php 
	require_once("conn.php");
	
	if(!$_SESSION["temporada"] && (basename($_SERVER['PHP_SELF']) != "inscricao.php" && basename($_SERVER['PHP_SELF']) != "regulamentos.php"))
		header('location:inscricao.php');
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
				<?php if($_SESSION["$temporada"]) : ?>
					<li class="nav-item">					
						<a href="index.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'index.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-bar-chart"></i>	
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
						<a href="rodada.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'rodada.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-table"></i>	
						Rodada a Rodada
						</a>
					</li>
					<li class="nav-item">					
						<a href="mata-mata.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'mata-mata.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-trophy"></i>	
						Mata-Mata
						</a>
					</li>
					<li class="nav-item">					
						<a href="scouts.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'scouts.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-area-chart"></i>	
						Scouts
						</a>
					</li>
				<?php endif; ?>
				<?php if(!$_SESSION["$temporada"]) : ?>
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
						<span class="mark">Cartolas</span>
						<span>sem</span>
						<span class="mark">Cartola</span>
					</p>
					<p>
						<span class="mark"><? echo date('d'); ?></span>
						<span><?php echo date('M'); ?></span>
						<span class="mark"><?php echo date('Y'); ?></span>
					</p>
				</div><!-- liga -->

				<div class="liga-logo">
					<?php if ($_SESSION["$temporada"]) : ?>
					<div class="calendario hidden-xs-down">
						<i class="fa fa-calendar fa-2x"></i>
					</div>					
					<?php if ($_SESSION["mercado"]) : ?>
						<span class="mark-merc hidden-xs-down">Mercado aberto</span>
						<span class="mark">
							<i class="fa fa-hourglass-start fa-2x"></i>												
						</span> 
						<?php else: ?>
							<span class="mark-merc hidden-xs-down">Mercado fechado</span>
							<span class="mark">
								<i class="fa fa-hourglass-start fa-2x"></i>												
							</span> 
						<?php endif; ?>
					<?php endif; ?>
				</div><!-- liga-logo -->
			</div><!-- container -->	
		</div><!-- header -->
	</header>