<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ticket Booking</title>
<style>
.box {
	position: relative;
	width: 900px;
	height: 520px;
	background-color: cadetblue;
	top: 50px;
	left: 150px;
	border-radius: 5px;
}
.head {
	position: relative;
	left: 330px;
	top: 25px;
}

.image {
	position: relative;
	padding: 60px;
	left: 20px;
}
.name{
	position:absolute;
	top:20px;
	left:20px;
}
.one {
	position: relative;
	padding: 20px;
}

.one:hover {
	cursor: pointer;
}

.two {
	position: relative;
	padding: 20px;
}

.two:hover {
	cursor: pointer;
}

.three {
	position: relative;
	padding: 20px;
}

.three:hover {
	cursor: pointer;
}

.four {
	position: relative;
	left: 250px;
}
</style>
</head>
<body>
	<section class="section">
		<div class="box">
		<% String name = (String) request.getAttribute("names"); %>
		<h4 class="name"><%= name %></h4>
		   <h3 class="head">Welcome To Ticket Booking</h3>
			<div class="image">
				<table>
					<tr>
						<td><a href="new.jsp"><img class="one" src="kantha.jpeg"alt=""></a></td>
						<td><a href="sceond.jsp"><img class="two" src="movie.jpeg"alt=""></a></td>
						<td><a href="third.jsp"><img class="three"src="aaromaley.jpeg" alt=""></a></td>
					</tr>
				</table>
				<h3 class="four">Avaiable movies in cinimas</h3>
			</div>
		</div>
	</section>
</body>
</html>
