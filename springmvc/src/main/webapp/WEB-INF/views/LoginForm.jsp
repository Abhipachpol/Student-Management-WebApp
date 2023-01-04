<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student App</title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: auto;
	width: 100%;
}

tr {
	text-align: center;
}

fieldset table {
	margin: auto;
	text-align: left;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
}

legend {
	color: white;
	background-color: #fb641b;
}

body {
	background-image: url("https://pixabay.com/illustrations/christmas-background-snow-winter-5861438");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

	<%
	if (msg != null) {
	%>
	<h3 align="center">
		<%=msg%>
	</h3>
	<%
	}
	%>

	<fieldset>
		<legend>Login To Proceed</legend>
		<form action="./login" method="post">
			<table>
				<tr>
					<td>Username :</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login"></td>
				</tr>
			</table>
		</form>
	</fieldset>

</body>
</html>