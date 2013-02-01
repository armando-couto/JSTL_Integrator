<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Capturando Exceções em JSTL</title>
</head>
<body>
	<c:catch var="e">
		<jsp:include page="naoExiste.jsp" />
		<jsp:setProperty name="erro" property="sem" value="Inválido" />
	</c:catch>
	<c:if test="${e!=null}">
A exceção é:<c:out value="${e}" />
	</c:if>
	<c:if test="${e==null}">
Caso não tenha exceção
</c:if>
</body>
</html>