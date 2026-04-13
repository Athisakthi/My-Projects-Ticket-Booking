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
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #5f9ea0, #7fd1d6);
}

/* Card Container */
.box {
    width: 380px;
    padding: 30px;
    background: white;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    text-align: center;
    animation: fadeIn 0.6s ease-in-out;
}

/* Heading */
.head {
    margin-bottom: 20px;
    color: #333;
}

/* Input Group */
.input-group {
    text-align: left;
    margin-bottom: 15px;
}

/* Labels */
label {
    display: block;
    font-size: 14px;
    margin-bottom: 5px;
    color: #555;
}

/* Inputs */
input {
    width: 100%;
    padding: 10px;
    border-radius: 8px;
    border: 1px solid #ccc;
    outline: none;
    transition: 0.3s;
}

input:focus {
    border-color: #5f9ea0;
    box-shadow: 0 0 5px rgba(95, 158, 160, 0.5);
}

/* Button */
.button {
    width: 100%;
    padding: 12px;
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

<form action="book" method="post">
    <div class="box">
        <h2 class="head">🎟️ Ticket Booking</h2>

        <div class="input-group">
            <label>Username</label>
            <input type="text" name="name" placeholder="Enter your username" required>
        </div>

        <div class="input-group">
            <label>Phone Number</label>
            <input type="tel" name="phone" placeholder="Enter your phone number" required>
        </div>

        <button class="button" type="submit">Book Now</button>
    </div>
</form>

</body>
</html>