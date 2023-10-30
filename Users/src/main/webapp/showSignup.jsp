<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Users Info</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

	<header style="height: 30px; background-color: #7b99ff;"> </header>

	<div class="container">
		<h2>Users Information</h2>
		<hr>
		<span style="font-weight: bold; font-size: 18px; color: blue">${message}</span>
		<hr />

		<img style="height: 60px;"
			src="https://www.iconpacks.net/icons/1/free-user-group-icon-307-thumb.png" />

		<h3>Users Info</h3>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Location</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${users}">
				
					<tr>
						<td>${item.firstname}</td>
						<td>${item.lastname}</td>
						<td>${item.email}</td>
						<td>${item.gender}</td>
						<td>${item.location}</td>
						<td>
						<a href="deleteUser?cpname=${item.email}">
						<button type="button" class="btn btn-danger">Delete</button>
						</a>
						</td>

						<%-- <td><img src="${tictick.url}" style="height: 120px;"></td> --%>
					</tr>
				</c:forEach>
			</tbody>
		</table>



	</div>


</body>
</html>