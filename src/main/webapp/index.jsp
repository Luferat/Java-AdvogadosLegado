<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Escritório de Advocacia</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		<h1>Escritório de Advocacia</h1>
	</div>
	<hr>
	<nav style="text-align: center">
		<a href="index.jsp">Início</a> &nbsp;|&nbsp; <a href="buscaadvogados">Cadastro
			de Advogado</a> &nbsp;|&nbsp; <a href="buscacliente">Cadastro de
			Cliente</a>
	</nav>
	<hr>

	<div class="container">

		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="./static/img/slide1.png"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="./static/img/slide2.png"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="./static/img/slide3.png"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>

		</div>

		&nbsp;

		<div class="row">
			<div class="col-sm">

				<div class="card">
					<img class="card-img-top" src="./static/img/slide1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">Contrate nossos serviços se você tiver
							problemas.</p>
					</div>
				</div>

			</div>
			<div class="col-sm">

				<div class="card">
					<img class="card-img-top" src="./static/img/slide3.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">Somos a melhor equipe de advogados do
							Brasil.</p>
					</div>
				</div>

			</div>
			<div class="col-sm">

				<div class="card">
					<img class="card-img-top" src="./static/img/slide2.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">Damos suportte nas áreas civil, criminal
							e trabalhista.</p>
					</div>
				</div>

			</div>
		</div>

		&nbsp;

	</div>

	<hr>
	<div style="text-align: center !important">&copy; 2023 Eu mesmo!</div>
	<hr>

	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>