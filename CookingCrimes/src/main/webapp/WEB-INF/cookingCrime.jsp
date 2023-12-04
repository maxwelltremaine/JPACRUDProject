<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Cooking Crime You've Chosen To Witness</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty cookingCrime }">
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Food</th>
						<th>Nickname</th>
						<th>Description</th>
						<th>Recipe</th>
						<th>Level Of Crime</th>
						<th>Overall Cost</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${cookingCrime.id}"</td>
						<td>${cookingCrime.food}</td>
						<td>${cookingCrime.nickname}</td>
						<td>${cookingCrime.description}</td>
						<td>${cookingCrime.recipe}</td>
						<td>${cookingCrime.levelOfCrime}</td>
						<td>${cookingCrime.overallCost}</td>
					</tr>
				</tbody>
			</table>
			<form action="editCookingCrime.do" class="form-inline">
				<input type="hidden" name="cookId" value="${cookingCrime.id }">

				<input type="submit" value="Edit"
					class="btn btn-warning form-control form-control-sm">
			</form>
			<form action="deleteCookingCrime.do" method="post" class="form-inline">
				<input type="hidden" name="cookId" value="${cookingCrime.id }"> <input
					type="submit" value="Delete"
					class="btn btn-danger form-control form-control-sm">
			</form>
		</c:when>
		<c:otherwise>
			<h3>No Crime Found</h3>
		</c:otherwise>
	</c:choose>
	<form action="home.do" class="form-group">
		<input type="submit" value="Go To Home"
			class="btn btn-secondary form-control form-control-sm">
	</form>


</body>
</html>