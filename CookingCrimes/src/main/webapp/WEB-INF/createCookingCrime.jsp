<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="createCookingCrime.do" method="post" class="form-group">
		<label for="food">Food:</label> <input  type="text" name="food" id="food" value="${cookingCrime.food }"/>	
		<label for="nickname">Nickname:</label> <input  type="text" name="nickname" id="nickname" value="${cookingCrime.nickname }"/>	
		<label for="description">Description:</label> <input  type="text" name="description" id="description" value="${cookingCrime.description }"/>	
		<label for="recipe">Recipe:</label> <input  type="text" name="recipe" id="recipe" value="${cookingCrime.recipe }"/>	
		<label for="levelOfCrime">Level Of Crime:</label> <input type="text" name="levelOfCrime" id="levelOfCrime" value="${cookingCrime.levelOfCrime }"/>	
		<label for="overallCost">Overall Cost:</label> <input  type="text" name="overallCost" id="overallCost" value="${cookingCrime.overallCost }"/>	
		<input type="submit" value="add Cooking Crime" class="btn btn-success form-control"/>	
	</form>

</body>
</html>