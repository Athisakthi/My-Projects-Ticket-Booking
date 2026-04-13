<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Receipt</title>

<style>

/* Background */
body {
    margin: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, cadetblue, #8fd3d6);
}

/* Card */
.box {
    width: 400px;
    padding: 25px;
    background-color: white;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.25);
    text-align: center;
    animation: fadeIn 0.6s ease-in-out;
}

/* Heading */
.head {
    margin-bottom: 15px;
    color: #333;
}

/* Receipt content */
.receipt {
    font-size: 16px;
    color: #444;
    line-height: 1.6;
}

/* Success message */
.success {
    color: green;
    font-weight: bold;
}

/* Thank you */
.thank {
    margin-top: 10px;
    color: #555;
}

/* Button (optional back button) */
.btn {
    margin-top: 15px;
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    background: linear-gradient(135deg, cadetblue, #7fd1d6);
    color: white;
    cursor: pointer;
    transition: 0.3s;
}

.btn:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

/* Animation */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

</style>
</head>

<body>

<div class="box">
    <h2 class="head">🎟️ Your Receipt</h2>

    <div class="receipt">

        <p class="success">✅ Ticket successfully booked</p>

        <%
        String[] seats = (String[]) request.getAttribute("seats");

        if (seats != null && seats.length > 0) {
        %>
            <p>
                Your seats:
                <b><%= seats[0] %>
                <% if (seats.length > 1) { %>
                    - <%= seats[seats.length - 1] %>
                <% } %>
                </b>
            </p>
        <%
        }
        %>

        <p class="thank">🙏 Thank you for booking!</p>

        <!-- Optional button -->
        <button class="btn" onclick="window.location.href='seat.jsp'">
            Book Again
        </button>

    </div>
</div>

</body>
</html>