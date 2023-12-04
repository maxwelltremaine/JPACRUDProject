<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food Crimes of the 20th century</title>
</head>
<body>
	<div class="container">
		<h1>Food Crimes of the 20th century</h1>

		<form action="getCookingCrime.do" method="GET">
			Cooking Crime ID: <input type="text" name="cookId" /> <input
				type="submit" value="Show CookingCrime" />
		</form>
		<form action="addCookingCrime.do" method="GET">
			<input type="submit" value="Add Cooking Crime" />
		</form>

		<hr>
		<c:forEach var="cookingCrime" items="${cookingList}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Cooking Crime</th>
						<th>Level</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a
							href="getCookingCrime.do?cookId=${cookingCrime.id}">${cookingCrime.food}</a></td>
						<td>${cookingCrime.levelOfCrime }</td>
					</tr>
				</tbody>
			</table>
		</c:forEach>
	</div>

</body>
</html>