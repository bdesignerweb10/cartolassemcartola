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
	<link rel="stylesheet" type="text/css" href="css/style.css">	
	<link rel="stylesheet" type="text/css" href="css/bootstrap-toggle.min.css">
	<link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css">
	<link rel="stylesheet" type="text/css" href="css/textext.plugin.autocomplete.css">
</head>
<body>

	<nav>
		<div class="sidebar">
			<div class="sidebar-header">
				<img src="img/logo.png" alt="Logo Cartola">
			</div><!-- sidebar-header -->

				<ul class="nav">
					<li class="nav-item">					
						<a href="inscricao" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'inscricao.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-edit"></i>	
						Palpites
						</a>
					</li>
					<li class="nav-item">					
						<a href="ranking" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'ranking.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-trophy"></i>	
						Ranking
						</a>
					</li>
					<li class="nav-item">					
						<a href="palpites" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'palpites.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-list-alt"></i>	
						Palpites/Resultados
						</a>
					</li>			
					<li class="nav-item">					
						<a href="regulamento.php" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'regulamento.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-file-text-o"></i>	
						Regulamento
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
							Bolão da Copa 2018 - Seu palpite é aqui, e ai, vai encarar?
						</span>
					</p>
				</div><!-- liga -->
			</div><!-- container -->	
		</div><!-- header -->
	</header>