<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ include file="./_header.jsp"%>

<%@ page import="model.Advogado"%>
<%@ page import="java.util.List"%>
<%
List<Advogado> advogado = (List<Advogado>) request.getAttribute("advogado");
String success = (String) request.getAttribute("success");
%>

<div class="container">

	<p>
		<a href="buscaadvogados"><button class="btn btn-success">Relatório
				de Advogados</button></a>
	</p>

	<form action="salvaadvogado">

		<input type="hidden" name="id" value="<%=advogado.get(0).getIdadv()%>">

		<div class="form-group">
			<label>Cadastrado em: </label> <span><%=advogado.get(0).getData()%></span>
		</div>

		<div class="form-group">
			<label for="oab">OAB</label> <input type="text" class="form-control"
				id="oab" name="oab" value="<%=advogado.get(0).getOab()%>">
		</div>

		<div class="form-group">
			<label for="nome">Nome</label> <input type="text"
				class="form-control" id="nome" name="nome"
				value="<%=advogado.get(0).getNome()%>">
		</div>

		<div class="form-group">
			<label for="telefone">Telefone</label> <input type="text"
				class="form-control" id="telefone" name="telefone"
				value="<%=advogado.get(0).getTelefone()%>">
		</div>

		<div class="form-group">
			<input type="submit" class="btn btn-primary" value="Enviar">
		</div>
	</form>

</div>

<%@ include file="./_footer.jsp"%>