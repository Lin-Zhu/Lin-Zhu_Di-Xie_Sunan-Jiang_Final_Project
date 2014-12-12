<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link href = "css/bootstrap.css" rel = "stylesheet"/>
</head>
<body>
<div class = "container">
<h1>
Users
</h1>

<input id = "id" placeholder = "USER ID" class = "form-control"/>
<input id = "username" placeholder = "USERNAME" class = "form-control"/>
<input id = "password" type = "password" placeholder = "PASSWORD" class = "form-control"/>
<input id = "lastname" placeholder = "LASTNAME" class = "form-control"/>
<input id = "firstname" placeholder = "FIRSTNAME" class = "form-control"/>
<!-- <button id = "create" class = "btn btn-block btn-primary">Create</button> -->
<a  id = "create" HREF="javascript:history.go(0)" class = "btn btn-block btn-primary">Create</a>
<a  id = "delete" HREF="javascript:history.go(0)" class = "btn btn-block btn-primary">Delete</a>
<a  id = "update" HREF="javascript:history.go(0)" class = "btn btn-block btn-primary">Update</a>
<!-- <button id = "delete" class = "btn btn-block btn-primary">Delete</button> -->
<!-- <button id = "update" class = "btn btn-block btn-primary">Update</button> -->
<a href = "/Project/jws/api/find/" class = "btn btn-block btn-primary">Find</a>
<a id = "FindOne" href = "#" class = "btn btn-block btn-primary">FindOne</a>
<!-- <button id = "find" class = "btn btn-block btn-primary">Find</button> -->


<script>

	$(function() {	
		$("#create").click(createHandler);
		$("#update").click(updateHandler);
		$("#delete").click(deleteHandler);
		$("#FindOne").click(findOneHandler);
		
		//alert("Hello Users");
		
		//var newUser = {"id":23,"username":"heimeixiao@gmail.com","password":"33333","firstName":"Sunan7","lastName":"Jiang"};		
	
		//updateUser(3, newUser);
	
		//createUser(newUser);
	});
	
	function findOneHandler(username) {
		var username = $("#username").val();
		findOne(username)
	}
	
	
	function findOne(username) {
		window.location.replace("/Project/jws/api/find/"+username);
		
	}
	
	function createHandler() {
		var newUser = {
				"id":$("#id").val(),
				"username":$("#username").val(),
				"password":$("#password").val(),
				"firstName":$("#firstname").val(),
				"lastName":$("#lastname").val()
				};
		createUser(newUser);
	}
	
	function updateHandler() {
		var newUser = {
				"id":$("#id").val(),
				"username":$("#username").val(),
				"password":$("#password").val(),
				"firstName":$("#firstname").val(),
				"lastName":$("#lastname").val()
				};
		updateUser($("#id").val(), newUser);
	}
	
	
	function deleteHandler() {
		deleteUser($("#id").val());
	}
	
	function findHandler() {
		findUser($("#username").val());
	}
	
	
	function createUser(newUser) {
		
		$.ajax({
		url: "http://localhost:8080/Project/jws/api/createMe",
		type: "post",
		data: JSON.stringify(newUser),
		dataType: "json",
		contentType: "application/json",
		success: function(responce) {
			//console.log(response);
		}
		});
	}
		
	function updateUser(id, newUser) {
		
		$.ajax({
		url: "http://localhost:8080/Project/jws/api/updateMe/" + id,
		type: "put",
		data: JSON.stringify(newUser),
		dataType: "json",
		contentType: "application/json",
		success: function(responce) {
			//console.log(response);
		}
		});
	}
	
	function deleteUser(id) {
		$.ajax({
			url: "http://localhost:8080/Project/jws/api/delete/" +id,
			type: "delete",
			data: JSON.stringify(id),
			dataType: "json",
			contentType: "application/json",
			success: function(responce) {
				//console.log(response);
			}
		});
	}
	
	function findUser(username) {
		$.ajax({
			url: "http://localhost:8080/Project/jws/api/find/" +username,
			type: "get",
			data: JSON.stringify(username),
			dataType: "json",
			contentType: "application/json",
			success: function(data) {
				alert("hi");
			}
		});
	} 
	
	

</script>
</div>
</body>
</html>

