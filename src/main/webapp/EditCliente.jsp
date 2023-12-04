<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./_header.jsp"%>

<%@ page import="model.Cliente"%>
<%@ page import="java.util.List"%>
<%
List<Cliente> cliente = (List<Cliente>) request.getAttribute("cliente");
String success = (String) request.getAttribute("success");
%>

<div class="container">

	<h2>Editar Cliente</h2>

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

<%@ include file="./_footer.jsp"%>