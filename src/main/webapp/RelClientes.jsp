<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ include file="./_header.jsp"%>

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

	<div class="container">

		<div>
			<a href="CadCliente.jsp"><button class="btn btn-success">Cadastrar
					Cliente</button></a>
			<!--  Pesquisa na tabela de clientes pelo nome e/ou telefone. -->
		<form name="buscacliente" action="pesquisacliente">
			<input type="search" name="q" value="<%=q%>">
			<button type="submit">🔎</button>
		</form>
		</div>

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


<%@ include file="./_footer.jsp" %>