<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
 integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Success Page</title>
</head>
<body>
	<h1 class="text-center">${Header}</h1>
	<p class="text-center">${Desc}</p>
	<h1 style="color:green">${msg}</h1>
	<hr>
	<h1>Welcome, ${user.userName}</h1>
	<h1>your email address is ${user.email}</h1>
	<h1>your password is ${user.password} try to secure the password</h1>

</body>
</html>