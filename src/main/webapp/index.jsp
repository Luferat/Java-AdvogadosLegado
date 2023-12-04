<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./_header.jsp"%>

<div class="container">

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
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
					<p class="card-text">Damos suportte nas áreas civil, criminal e
						trabalhista.</p>
				</div>
			</div>

		</div>
	</div>

	&nbsp;

</div>

<%@ include file="./_footer.jsp"%>