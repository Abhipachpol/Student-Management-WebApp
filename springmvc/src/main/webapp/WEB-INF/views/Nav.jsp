<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
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
	background-color: #f1f3f6;
}

ul {
	list-style-type: none;
	background-color: black;
	overflow: hidden;
	background-color: #fff7e1;
}

li {
	float: right;
}

li a {
	display: block;
	margin: 0px;
	padding: 15px;
}

li a:hover {
	background-color: #f1f3f6;
}
</style>

</head>
<body>
	<form action="./nav">
		<ul>
			<li><a href="./logout">Logout</a></li>
			<li><a href="./search">Search Student</a></li>
			<li><a href="./add">Add Student</a></li>
			<li><a href="./update">Update Student</a></li>
			<li><a href="./remove">Remove Student</a></li>
			<li><a href="./home">Home</a></li>
		</ul>
	</form>

</body>
</html>