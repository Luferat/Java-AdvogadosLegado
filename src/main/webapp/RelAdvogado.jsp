<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./_header.jsp"%>

<%@ page import="model.Advogado"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<Advogado> lista = (ArrayList<Advogado>) request.getAttribute("advogados");
String success = (String) request.getAttribute("success");

String q = (String) request.getAttribute("q");
if (q == null)
	q = "";
%>

<div class="container">

	<h2>Listagem de Advogados</h2>

	<div class="row justify-content-between">
		<div class="col-sm">
			<a href="CadAdvogado.jsp"><button class="btn btn-success">Cadastrar
					Advogado</button></a>
		</div>
		<div class="col-sm">
			<form name="buscacliente" action="pesquisaadvogado">
				<div class="input-group mb-3">
					<input type="search" class="form-control" name="q" value="<%=q%>"
						placeholder="Procurar">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button"
							id="button-addon2">🔎</button>
					</div>
				</div>
			</form>
		</div>

	</div>

	<%
	if (success != null) {
	%>
	<script>alert("<%=success%>
		")
	</script>
	<%
	}
	%>

	<table class="table table-dark">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Data</th>
				<th scope="col">OAB</th>
				<th scope="col">Nome</th>
				<th scope="col">Telefone</th>
				<th scope="col">Opções</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>

			<tr>
				<td><%=lista.get(i).getIdadv()%></td>
				<td><%=lista.get(i).getData()%></td>
				<td><%=lista.get(i).getOab()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getTelefone()%></td>
				<td><a href="editaradvogado?id=<%=lista.get(i).getIdadv()%>">Editar</a>
					&nbsp;|&nbsp; <a
					href="apagaadvogado?id=<%=lista.get(i).getIdadv()%>"
					onclick="return confirm('Tem certeza que deseja apagar o registro.')">Apagar</a></td>
			</tr>

			<%
			}
			%>

		</tbody>
	</table>

</div>

<%@ include file="./_footer.jsp"%>