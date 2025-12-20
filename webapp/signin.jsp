<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Booking</title>
<style>
body{
    background-color: cadetblue;
}
.box {
	position: relative;
	top:150px;
	left: 450px;
	width: 400px;
	height: 300px;
	box-shadow:5px 10px 10px 5px;
	background-color:cadetblue;
	border-radius: 10px;
}
.head{
	position: relative;
	left:70px;
	top:20px;
}
.login{
	position: relative;
	top:40px;
	left:50px;
	padding:10px;
}
.one{
	position:relative;
	top:20px;
	padding:10px;
}
.two{
	position: relative;
	top:40px;
	padding:10px;
}
.button{
	position:relative;
	top:120px;
	left:170px;s
    width: 70px;
    height: 40px;
}
</style>
</head>
<form action="book" method="get">
<body>
	<div class="box">
		<h3 class="head">Welcome To Ticket Booking</h3>
		<table class="login">
			<tr class="one">
				<td>Username</td>
				<td><input type="text" name="name" placeholder="Enter your username"
					required></td>
			</tr>
			<tr class="two">
				<td>Phone no</td>
				<td><input type="number" name="phone" placeholder="Enter your phone number"
					required></td>
			</tr>
		</table>
		<button class="button" type="submit">Login</button>
	</div>
</form>
</body>
</html>