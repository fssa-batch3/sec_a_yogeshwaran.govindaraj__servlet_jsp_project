<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
/* Reset some default styles */
body {
    font-family: Arial, Helvetica, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
}

/* Style the form container */
form {
    max-width: 300px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

/* Style form labels */
label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

/* Style form input fields */
input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Style the submit button */
button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
}

/* Add some spacing between form elements */
br {
    margin-top: 10px;
}

</style>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<h1>Login Page</h1>
	<%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<p>" + errorMessage + "</p>");
	}
	%>
	<form action="login" method="post">

		<label>Email: </label> <input type="email" name="email"
			placeholder="Enter email"> <br /> <label>Password: </label>

		<input type="password" name="password" placeholder="Enter password">
		<br />
		<button type="submit">Submit</button>
	</form>
</body>
</html>