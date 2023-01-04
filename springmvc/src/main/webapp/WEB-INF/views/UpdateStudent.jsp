<%@page import="com.jspiders.springmvc.pojo.StudentPojo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
action<%@ include file="Nav.jsp"%>
<%
List<StudentPojo> students = (List<StudentPojo>) request.getAttribute("students");
String msg = (String) request.getAttribute("msg");
StudentPojo student = (StudentPojo) request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

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
	background-color: #333;
}

body {
	background-image: url("./sunset-3156440_640.jpg");
	background-repeat: no-repeat;
	background-size: cover;
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

	<%
	if (student != null) {
	%>
	<fieldset>
		<legend>Update Student Details</legend>
		<form action="./updateData" method="post">
			<table>
				<tr hidden="true">
					<td>
					<input type="text" name="id" value="<%= student.getId()%>">
					</td>
				</tr>
				<tr>
					<td>Name</td>
					<td>
					<input type="text" name="name" value="<%= student.getName()%>">
					</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>
					<input type="text" name="email" value="<%= student.getEmail()%>">
					</td>
				</tr>
				<tr>
					<td>Contact</td>
					<td>
					<input type="text" name="contact" value="<%= student.getContact()%>">
					</td>
				</tr>
				<tr>
					<td>City</td>
					<td>
					<input type="text" name="city" value="<%= student.getCity()%>">
					</td>
				</tr>
				<tr>
					<td>Username</td>
					<td>
					<input type="text" name="username" value="<%= student.getUsername()%>">
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
					<input type="text" name="password" value="<%= student.getPassword()%>">
					</td>
				</tr>
				<tr>
					<td>
					<input type="submit" value="Update">
					</td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	} else {
	%>
	<fieldset>
		<legend>Select Student</legend>
		<form action="./update" method="post">
			<table>
				<tr>
					<td>Enter Student id :</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Select"></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%if (msg != null) { %>
	<h3 align="center"><%= msg%></h3>
	<%} %>
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
			for (StudentPojo stud : students) {
			%>
			<tr>
				<td><%=stud.getId()%></td>
				<td><%=stud.getName()%></td>
				<td><%=stud.getEmail()%></td>
				<td><%=stud.getContact()%></td>
				<td><%=stud.getCity()%></td>
				<td><%=stud.getUsername()%></td>
				<td><%=stud.getPassword()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</fieldset>
	<%
	}
	%>
	<%
	}
	%>

</body>
</html>