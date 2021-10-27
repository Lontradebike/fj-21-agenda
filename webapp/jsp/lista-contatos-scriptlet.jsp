<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*, br.com.caelum.agenda.dao.*, br.com.caelum.jdbc.modelo.*"%>
<!DOCTYPE html>
<html>

  
<head>
<meta charset="ISO-8859-1">
<title>Lista de contatos</title>
</head>
<body>
<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
			</tr>
		</thead>
		<tbody>
			<%
				ContatoDao dao = new ContatoDao();
				List<Contato> contatos = dao.getLista();
				for (Contato contato : contatos) {
			%>
			<tr>
				<td><%=contato.getId()%></td>
				<td><%=contato.getNome()%></td>
				<td><%=contato.getEmail()%></td>
				<td><%=contato.getEndereco()%></td>
				<td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato
						.getDataNascimento().getTime())%></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>