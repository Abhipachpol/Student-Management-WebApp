<%@page import="com.jspiders.springmvc.pojo.StudentPojo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
action<%@ include file="Nav.jsp"%>

<%
StudentPojo student = (StudentPojo) request.getAttribute("student");
%>
<%
String msg = (String) request.getAttribute("msg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	background-image: url("./sunset-3156440_640.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

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
</style>

</head>
<body>

	<fieldset>
		<legend>Add Student Details</legend>
		<form action="./add" method="post">
			<table>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Contact :</td>
					<td><input type="text" name="contact"></td>
				</tr>
				<tr>
					<td>City :</td>
					<td><input type="text" name="city"></td>
				</tr>
				<tr>
					<td>Username :</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="text" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add"></td>
				</tr>
			</table>
		</form>
	</fieldset>

	<%
	if (student != null) {
	%>
	<h3 align="center">
		<%=student.getName()%>
		added successfully..!!
	</h3>
	<%
	} else if (msg != null) {
	%>
	<h3 align="center">
		<%=msg%>
	</h3>
	<%
	}
	%>

</body>
</html>