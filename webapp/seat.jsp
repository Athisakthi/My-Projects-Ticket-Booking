<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ticket Booking</title>

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
    width: 900px;
    padding: 20px;
    background-color: white;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}

/* Username */
.name {
    position: absolute;
    top: 15px;
    left: 25px;
    font-weight: bold;
    color: #333;
}

/* Heading */
.head {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* Movie Grid */
.image table {
    margin: auto;
}

/* Movie Images */
.image img {
    width: 200px;
    height: 280px;
    border-radius: 12px;
    transition: 0.3s;
}

/* Hover Effect */
.image img:hover {
    transform: scale(1.08);
    box-shadow: 0 10px 20px rgba(0,0,0,0.4);
    cursor: pointer;
}

/* Spacing */
.image td {
    padding: 15px;
}

/* Footer Text */
.four {
    text-align: center;
    margin-top: 15px;
    color: #555;
}

</style>
</head>

<body>

<section class="section">
    <div class="box">

        <% String name = (String) request.getAttribute("names"); %>
        <h4 class="name">👤 <%= name %></h4>

        <h2 class="head">🎬 Welcome To Ticket Booking</h2>

        <div class="image">
            <table>
                <tr>
                    <td>
                        <a href="new.jsp">
                            <img src="kantha.jpeg" alt="Movie 1">
                        </a>
                    </td>

                    <td>
                        <a href="sceond.jsp">
                            <img src="movie.jpeg" alt="Movie 2">
                        </a>
                    </td>

                    <td>
                        <a href="third.jsp">
                            <img src="aaromaley.jpeg" alt="Movie 3">
                        </a>
                    </td>
                </tr>
            </table>

            <h3 class="four">🍿 Available Movies in Cinemas</h3>
        </div>

    </div>
</section>

</body>
</html>