<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Students</title>
</head>
<body>

	<table border="1" style="border-collapse: collapse;">

		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Delete</th>
		</tr>

		<c:forEach var="s" items="${students}">
			<tr>
			<td>${s.getId()}</td>
			<td>${s.getName()}</td>
			<td>${s.getEmail()}</td>
			<td><a href="delete?id=${s.getId()}">DELETE</a></td>
			</tr>
			<a href="update">update</a>
		</c:forEach>
	</table>

</body>
</html>