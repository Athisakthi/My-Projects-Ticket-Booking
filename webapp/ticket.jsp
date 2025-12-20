<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Booking</title>
<style>
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
	left:140px;
	top:20px;
}
.receipt{
	position:relative;
	left :90px;
	top:20px;
}
</style>
</head>
<body>
<div class="box">
<h3 class="head">Your Receipt</h3>
<div class="receipt">
<%
out.println("<h3> Ticket is successfully booked</h3>");
String[] seats = (String[]) request.getAttribute("seats");
String name=(String)request.getAttribute("name");

if (seats != null && seats.length > 0) {
	out.println("<p>"+ name + "</p>");
    out.print("<p>  Your seats " +seats[0]);    

    if (seats.length > 1) {
        out.print(" - " + seats[seats.length - 1]+ "</p>"); 
    }
}
out.println("<h4>Thank you</h4>");
%>
</div>
</div>
</body>
</html>