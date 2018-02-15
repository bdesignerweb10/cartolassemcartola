<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" sizes="16x16" href="img/favicon-16x16.png">
	<title>Cartolas sem cartola</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<nav>
		<div class="sidebar">
			<div class="sidebar-header">
				<img src="img/logo.png" alt="Logo Cartola">
			</div><!-- sidebar-header -->

			<ul class="nav">
				<?php if(basename($_SERVER['PHP_SELF']) != "index.php") : ?>
					<li class="nav-item">					
						<a href="index.php" class="nav-link">
						<i class="fa fa-bar-chart"></i>	
						Dashboard
						</a>
					</li>
					<li class="nav-item">					
						<a href="liga.php" class="nav-link">
						<i class="fa fa-line-chart"></i>	
						Tabela Liga CSC
						</a>
					</li>
					<li class="nav-item">					
						<a href="#" class="nav-link">
						<i class="fa fa-table"></i>	
						Rodada a Rodada
						</a>
					</li>
					<li class="nav-item">					
						<a href="mata-mata.php" class="nav-link">
						<i class="fa fa-trophy"></i>	
						Mata-Mata
						</a>
					</li>
					<li class="nav-item">					
						<a href="scouts.php" class="nav-link">
						<i class="fa fa-area-chart"></i>	
						Scouts
						</a>
					</li>
					<li class="nav-item">					
						<a href="regulamentos.php" class="nav-link">
						<i class="fa fa-file-text-o"></i>	
						Regulamentos
						</a>
					</li>
					<li class="nav-item">					
						<a href="inscricao.php" class="nav-link">
						<i class="fa fa-check-square-o"></i>	
						Inscrições
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
				</div><!-- liga-logo -->
			</div><!-- container -->	
		</div><!-- header -->
	</header>