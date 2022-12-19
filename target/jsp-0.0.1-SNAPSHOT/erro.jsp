<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela de Erros</title>
</head>
<body>
<h1>Mensagem de erro, entre em contato com o administrador.</h1>

<%
out.print(request.getAttribute("msg"));
%>


</body>
</html>