<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Cliente</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>

	<h1>Advogados</h1>
	<hr>
	<nav>
		<a href="index.jsp">Início</a> &nbsp;|&nbsp; <a href="CadAvogado.jsp">Cadastro
			de Advogado</a> &nbsp;|&nbsp; <a href="CadCliente.jsp">Cadastro de
			Cliente</a>
	</nav>
	<hr>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<a href="buscacliente"><button class="btn btn-success">Relatório
						de Clientes</button></a>
			</div>
		</div>
	</div>

	<div class="container">

		<form action="novocliente">

			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="nome" name="nome">
			</div>

			<div class="form-group">
				<label for="telefone">Telefone</label> <input type="text"
					class="form-control" id="" name="telefone">
			</div>

			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="Enviar">
			</div>
		</form>

	</div>

	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>