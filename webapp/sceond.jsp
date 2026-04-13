<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Seats</title>

<style>

/* Background */
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #5f9ea0, #8fd3d6);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Main Card */
.box {
    width: 600px;
    padding: 20px;
    background: white;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
    text-align: center;
}

/* Heading */
.head {
    margin-bottom: 15px;
    color: #333;
}

/* Screen */
.screen {
    background: #ddd;
    height: 30px;
    margin: 10px auto 20px;
    width: 80%;
    border-radius: 10px;
    line-height: 30px;
    font-size: 14px;
    color: #555;
}

/* Table */
table {
    margin: auto;
}

/* Seat */
.seatBox {
    width: 45px;
    height: 40px;
    border-radius: 8px;
    text-align: center;
    line-height: 40px;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s;
}

/* Available */
.seatBox.available {
    background-color: #e0f7fa;
}

.seatBox.available:hover {
    background-color: #4dd0e1;
    color: white;
    transform: scale(1.1);
}

/* Selected */
input[type="checkbox"]:checked + .seatBox {
    background-color: #ff6b6b;
    color: white;
}

/* Booked */
.seatBox.booked {
    background-color: gray;
    cursor: not-allowed;
    color: white;
}

/* Hide checkbox */
input[type="checkbox"] {
    display: none;
}

/* Button */
.button {
    margin-top: 20px;
    padding: 10px 25px;
    border: none;
    border-radius: 25px;
    background: linear-gradient(135deg, #5f9ea0, #7fd1d6);
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

.button:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

/* Legend */
.legend {
    display: flex;
    justify-content: center;
    gap: 15px;
    margin-top: 10px;
    font-size: 13px;
}

.legend div {
    display: flex;
    align-items: center;
    gap: 5px;
}

.legend span {
    width: 15px;
    height: 15px;
    display: inline-block;
    border-radius: 3px;
}

.available-color { background: #e0f7fa; }
.selected-color { background: #ff6b6b; }
.booked-color { background: gray; }

</style>
</head>

<body>

<form action="three" method="post">
<div class="box">

    <h2 class="head">🎟️ Select Your Seats</h2>

    <div class="screen">SCREEN</div>

    <table cellpadding="8">
        <tr>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/booking", "root", "12345");

PreparedStatement ps = con.prepareStatement("SELECT * FROM three ORDER BY seatno");
ResultSet r = ps.executeQuery();

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
        out.println("<input type='checkbox' name='seats' value='"+ seatno +"'>");
        out.println("<div class='seatBox available'>" + seatno + "</div>");
        out.println("</label></td>");
    }
    count++;
}
%>

        </tr>
    </table>

    <!-- Legend -->
    <div class="legend">
        <div><span class="available-color"></span> Available</div>
        <div><span class="selected-color"></span> Selected</div>
        <div><span class="booked-color"></span> Booked</div>
    </div>

    <button class="button" type="submit">Book Now</button>

</div>
</form>

</body>
</html>