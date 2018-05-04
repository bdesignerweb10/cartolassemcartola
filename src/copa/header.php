<?php 
require_once("conn.php");
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
	
	<title>Bolão da Copa | Cartolas sem cartola</title>

	<link rel="apple-touch-icon" sizes="180x180" href="../img/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="../img/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="../img/favicon-16x16.png">
	<link rel="manifest" href="../img/site.webmanifest">
	<link rel="mask-icon" href="../img/safari-pinned-tab.svg" color="#5bbad5">
	<link rel="shortcut icon" href="../img/favicon.ico">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="msapplication-config" content="../img/browserconfig.xml">
	<meta name="theme-color" content="#ffffff">

	<link rel="stylesheet" type="text/css" href="css/style.css">	
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
						<a href="tabela" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'tabela.php' ? ' nav-active' : ''; ?>">
						<i class="fa fa-table"></i>	
						Tabela Copa
						</a>
					</li>		
					<li class="nav-item">					
						<a href="regulamento" class="nav-link<?php echo basename($_SERVER['PHP_SELF']) == 'regulamento.php' ? ' nav-active' : ''; ?>">
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