<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Usando instruções SQL com JSTL</title>
</head>
<body>
	<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/livraria" user="edson"
		password="integrator" />
	<sql:query var="livros" dataSource="${dataSource}">
SELECT * FROM livros
</sql:query>
	<table border="1">
		<tr>
			<th>ISBN</th>
			<th>Título</th>
			<th>Atualizar</th>
			<th>Excluir</th>
		</tr>
		<c:forEach var="row" items="${livros.rows}">
			<tr>
				<td><c:out value="${row.isbn}" /></td>
				<td><c:out value="${row.titulo}" /></td>
				<td><a
					href="formAtualizaJSTL.jsp?isbn=
<c:out value="${row.isbn}" />">
						Atualizar </a></td>
				<td><a
					href="excluirJSTL.jsp?isbn=
<c:out value="${row.isbn}" />">
						Excluir </a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>