<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.Cliente"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<Cliente> lista = (ArrayList<Cliente>) request.getAttribute("clientes");
String success = (String) request.getAttribute("success");

// Pesquisa na tabela de clientes pelo nome e/ou telefone.
String q = (String) request.getAttribute("q");
if (q == null)
	q = "";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes</title>

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
			<a href="CadCliente.jsp"><button class="btn btn-success">Cadastrar
					Cliente</button></a>
			<!--  Pesquisa na tabela de clientes pelo nome e/ou telefone. -->
		<form name="buscacliente" action="pesquisacliente">
			<input type="search" name="q" value="<%=q%>">
			<button type="submit">🔎</button>
		</form>
		</p>

		<%
		if (success != null) {
		%>
		<div><%=success%></div>
		<%
		}
		%>

		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">Código</th>
					<th scope="col">Data</th>
					<th scope="col">Cliente</th>
					<th scope="col">Telefone</th>
					<th scope="col">Opções</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (int i = 0; i < lista.size(); i++) {
				%>

				<tr>
					<td><%=lista.get(i).getIdcliente()%></td>
					<td><%=lista.get(i).getData()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getTelefone()%></td>
					<td><a
						href="editarcliente?id=<%=lista.get(i).getIdcliente()%>"
						onclick="return confirm('Tem certeza que deseja editar?')">Editar</a>
						&nbsp;|&nbsp; <a
						href="apagacliente?id=<%=lista.get(i).getIdcliente()%>"
						onclick="return confirm('Tem certeza que deseja editar?')">Apagar</a>
					</td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>

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