<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Cooking Crime</title>
</head>
<body>
<form action="changeCookingCrime.do" method="post" class="form-group">
		<input type="hidden" name="id" value="${cookingCrime.id }">
		<label for="food">Food:</label> <input  type="text" name="food" id="food" value="${cookingCrime.food }"/>	
		<label for="nickname">Nickname:</label> <input  type="text" name="nickname" id="nickname" value="${cookingCrime.nickname }"/>	
		<label for="description">Description:</label> <input  type="text" name="description" id="description" value="${cookingCrime.description }"/>	
		<label for="recipe">Recipe:</label> <input  type="text" name="recipe" id="recipe" value="${cookingCrime.recipe }"/>	
		<label for="levelOfCrime">Level Of Crime:</label> <input type="text" name="levelOfCrime" id="levelOfCrime" value="${cookingCrime.levelOfCrime }"/>	
		<label for="overallCost">Overall Cost:</label> <input  type="text" name="overallCost" id="overallCost" value="${cookingCrime.overallCost }"/>	
		<input type="submit" value="Save Changes" class="btn btn-success form-control"/>	
	</form>

</body>
</html>