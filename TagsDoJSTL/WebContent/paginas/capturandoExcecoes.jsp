<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Capturando Exce��es em JSTL</title>
</head>
<body>
	<c:catch var="e">
		<jsp:include page="naoExiste.jsp" />
		<jsp:setProperty name="erro" property="sem" value="Inv�lido" />
	</c:catch>
	<c:if test="${e!=null}">
A exce��o �:<c:out value="${e}" />
	</c:if>
	<c:if test="${e==null}">
Caso n�o tenha exce��o
</c:if>
</body>
</html>