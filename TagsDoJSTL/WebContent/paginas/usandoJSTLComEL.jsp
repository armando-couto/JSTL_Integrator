<%@ page language="java" contentType="text/html;" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Desenvolvendo com JSTL e EL</title>
</head>
<body>
	<c:set var="email" value="edson@integrator.com.br" />
	Seu e-mail é:
	<strong><c:out value="${email}" /></strong>
</body>
</html>