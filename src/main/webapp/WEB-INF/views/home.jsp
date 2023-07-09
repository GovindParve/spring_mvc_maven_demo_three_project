<%@page isELIgnored="false" %>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
    	 href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    	 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    	 crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
	<h1>This is home page</h1>
	<h1>Called by home controller</h1>
	<h1>url /home</h1>
	
	<%
		String name = (String) request.getAttribute("name");
		Integer id = (Integer) request.getAttribute("id");
		List<String> friends = (List<String>) request.getAttribute("f");
	%>
	<h1>Name is <%=name%></h1>
	<h1>Id is <%=id%></h1>
	
	<%
		for(String s : friends){
			//out.println(s);
	%>
	<h1><%=s%></h1>
	<%
		}
	%>
	
  </body>
</html>