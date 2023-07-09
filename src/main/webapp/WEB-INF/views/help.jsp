<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>help page</title>
</head>
<body>
	
	<%
		/* String name = (String) request.getAttribute("name");
		Integer rollnumber = (Integer) request.getAttribute("rollnumber");
		LocalDateTime time = (LocalDateTime) request.getAttribute("time"); */
	%>
	
	<h1>
		Hello my name is 
<%-- 		<%= name %> --%>
		${name}
	</h1>
	<h1>This is help page</h1>
	<h1>
		my Roll Number is
<%-- 		<%= rollnumber %> --%>
		${rollnumber}
	</h1>
	<h1>
		Date and Time is 
<%-- 		<%= time.toString() %> --%>
		${time.toString()}
	</h1>
	<c:forEach var="item" items="${marks}">
	<%-- 	<h1>${item}</h1> --%>
	<h1><c:out value="${item}"></c:out></h1>
	</c:forEach>

	
	

</body>
</html>