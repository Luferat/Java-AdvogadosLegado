<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Escritório de Advocacia</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="icon" href="./static/img/logotipo.png">
<style>
.header {
	display: flex;
	align-items: center !important;
	justify-content: flex-start;
	padding: 16px !important;
}

.header img {
	width: 80px;
	height: auto;
	display: block;
	margin-right: 16px !important;
}

.header h1 {
	margin: 0;
}
</style>
</head>
<body>

	<div class="container header">
		<a href="index.jsp"><img src="./static/img/logotipo.png"
			alt="Logotipo do site"></a>
		<h1>Escritório de Advocacia</h1>
	</div>
	<hr>
	<nav style="text-align: center">
		<a href="index.jsp">Início</a> &nbsp;|&nbsp; <a href="buscaadvogados">Cadastro
			de Advogado</a> &nbsp;|&nbsp; <a href="buscacliente">Cadastro de
			Cliente</a>
	</nav>
	<hr>