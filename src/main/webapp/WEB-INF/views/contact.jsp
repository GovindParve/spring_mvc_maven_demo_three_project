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
<title>Contact page</title>
</head>
<body>
<div class="container mt-5">
	<h3 class="text-center">${Header}</h3>
	<p class="text-center">${Desc}</p>
	<h3 class="text-center">Registration Form</h3>
	<form action="processform" method="post">
  		<div class="form-group">
    		<label for="exampleInputEmail1">Email address</label>
    		<input type="email" class="form-control" id="exampleInputEmail1" name="email"
    		 aria-describedby="emailHelp" placeholder="Enter email">
  		</div>
  		<div class="form-group">
    		<label for="userName">User Name</label>
    		<input type="text" class="form-control" id="userName" name="userName"
    		 aria-describedby="emailHelp" placeholder="Enter User Name">
  		</div>
  		<div class="form-group">
    		<label for="password">Password</label>
    		<input type="password" class="form-control" id="password" name="password"
    		 aria-describedby="emailHelp" placeholder="Enter Password">
  		</div>
  		<div class="container mt-5 text-center">
  			<button type="submit" class="btn btn-success">Sign Up</button>
  		</div>
  		
	</form>
</div>


</body>
</html>