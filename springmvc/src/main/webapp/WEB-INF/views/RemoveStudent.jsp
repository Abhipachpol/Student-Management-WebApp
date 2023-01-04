<%@page import="java.util.List"%>
<%@page import="com.jspiders.springmvc.pojo.StudentPojo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
action<%@ include file="Nav.jsp"%>
<%
List<StudentPojo> students = (List<StudentPojo>) request.getAttribute("students");
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Student</title>

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
#data {
	background-color: white;
	border: 1px solid black;
	width: 100%;
	border: 1px solid black;
}
#data td {
	border: 1px solid black;
	text-align: center;
}
</style>

</head>
<body>

	<fieldset>
		<legend>Select Student</legend>
		<form action="./remove" method="post">
			<table>
				<tr>
					<td>Enter Student id :</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Remove"></td>
				</tr>
			</table>
		</form>
	</fieldset>

	<%
	if (msg != null) {
	%>
	<h3 align="center"><%=msg%></h3>
	<%
	}
	%>
	<%
	if (students != null) {
	%>
	<fieldset style="width: auto; margin: 0%;">
		<legend>Student Details</legend>
		<table id="data">
			<tr>
				<td>
					<h3>ID</h3>
				</td>
				<td>
					<h3>Name</h3>
				</td>
				<td>
					<h3>Email</h3>
				</td>
				<td>
					<h3>Contact</h3>
				</td>
				<td>
					<h3>City</h3>
				</td>
				<td>
					<h3>Username</h3>
				</td>
				<td>
					<h3>Password</h3>
				</td>
			</tr>
			<%
			for (StudentPojo student : students) {
			%>
			<tr>
				<td><%=student.getId()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getContact()%></td>
				<td><%=student.getCity()%></td>
				<td><%=student.getUsername()%></td>
				<td><%=student.getPassword()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</fieldset>
	<%
	}
	%>

</body>
</html>