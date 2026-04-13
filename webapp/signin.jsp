<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Booking</title>

<style>

/* Background */
body {
    margin: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg, cadetblue, #8fd3d6);
    font-family: 'Segoe UI', sans-serif;
}

/* Box (same concept, improved) */
.box {
    width: 400px;
    padding: 25px;
    background-color: white;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.25);
}

/* Heading */
.head {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* Table styling (kept your structure) */
.login {
    width: 100%;
}

.login td {
    padding: 10px;
}

/* Inputs */
input {
    width: 100%;
    padding: 8px;
    border-radius: 8px;
    border: 1px solid #ccc;
    outline: none;
    transition: 0.3s;
}

input:focus {
    border-color: cadetblue;
    box-shadow: 0 0 5px rgba(95, 158, 160, 0.5);
}

/* Button */
.button {
    display: block;
    margin: 20px auto 0;
    width: 120px;
    height: 40px;
    border: none;
    border-radius: 20px;
    background: linear-gradient(135deg, cadetblue, #7fd1d6);
    color: white;
    font-size: 15px;
    cursor: pointer;
    transition: 0.3s;
}

.button:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

</style>
</head>

<body>

<form action="book" method="get">
	<div class="box">
		<h3 class="head">🎟️ Welcome To Ticket Booking</h3>

		<table class="login">
			<tr>
				<td>Username</td>
				<td>
					<input type="text" name="name" placeholder="Enter your username" required>
				</td>
			</tr>
			<tr>
				<td>Phone no</td>
				<td>
					<input type="number" name="phone" placeholder="Enter your phone number" required>
				</td>
			</tr>
		</table>

		<button class="button" type="submit">Login</button>
	</div>
</form>

</body>
</html>