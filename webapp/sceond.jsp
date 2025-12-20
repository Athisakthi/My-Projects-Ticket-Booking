<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Booking</title>
<style>
.box {
	position: relative;
	width: 580px;
	height: 500px;
	background-color: cadetblue;
	top: 50px;
	left: 350px;
	border-radius: 5px;
}

.head {
	position: relative;
	left: 220px;
	top: 20px;
	padding: 10px;
	color: white;
}
.seatBox {
	width: 50px;
	height: 40px;
	border-radius: 5px;
	text-align: center;
	line-height: 40px;
	cursor: pointer;
	background-color: white;
	left: 30px;
	margin: 10px;
	font-weight: bold;
}
.button {
	position: relative;
	left: 250px;
	top: 20px;
	width: 100px;
	height: 20px;
}
.seatBox.booked {
	position:relative;
	padding: 5px;
	left:20px;
	background-color: gray;
	cursor:not-allowed;
}
input[type="checkbox"]{
	display:none;
}
input[type="checkbox"]:checked +.seatBox{
	background-color:gray;
}
.seatBox.available {
	position:relative;
	padding: 5px;
	left:20px;
	background-color: white;
}
</style>
</head>
<body>

	<form action="second" method="post">
		<div class="box">
			<h3 class="head">Select Your Seats</h3>
			<table cellpadding="10">
				<tr>

					<%
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/booking", "root", "12345");
					
					
					PreparedStatement p = con.prepareStatement("SELECT * FROM two ORDER BY seatno");
					ResultSet r = p.executeQuery();
					
					int count = 0;
					while (r.next()) {
						String seatno = r.getString(1);
						String status = r.getString(2);

						if (count % 5 == 0 && count != 0)
							out.println("</tr><tr>");

						if (status.equals("booked")) {
							out.println("<td><div class='seatBox booked'>" + seatno + "</div></td>");
						} else {
							out.println("<td><label>");
							out.println("<input type='checkbox' id='row' name='seats' value='"+ seatno +"'>");
							out.println("<div class='seatBox available'>" + seatno + "</div>");
							out.println("</label></td>");
						}
						count++;
					}
					%>
				</tr>
			</table>

			<button class="button" type="submit">Book</button>
		</div>
	</form>
</body>
</html>
