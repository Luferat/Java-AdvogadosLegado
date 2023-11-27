<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.Cliente"%>
<%@ page import="java.util.List"%>
<%
List<Cliente> cliente = (List<Cliente>) request.getAttribute("cliente");
String success = (String) request.getAttribute("success");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Cliente</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>

	<h1>Clientes</h1>
	<hr>
	<nav style="text-align: center">
		<a href="index.jsp">Início</a> &nbsp;|&nbsp; <a href="buscaadvogados">Cadastro
			de Advogado</a> &nbsp;|&nbsp; <a href="buscacliente">Cadastro de
			Cliente</a>
	</nav>
	<hr>

	<div class="container">

		<p>
			<a href="buscacliente"><button class="btn btn-success">Relatório
					de Clientes</button></a>
		</p>

		<form action="salvacliente">

			<input type="hidden" name="id"
				value="<%=cliente.get(0).getIdcliente()%>">

			<div class="form-group">
				<label>Cadastrado em: </label> <span><%=cliente.get(0).getData()%></span>
			</div>

			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="nome" name="nome"
					value="<%=cliente.get(0).getNome()%>">
			</div>

			<div class="form-group">
				<label for="telefone">Telefone</label> <input type="text"
					class="form-control" id="telefone" name="telefone"
					value="<%=cliente.get(0).getTelefone()%>">
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