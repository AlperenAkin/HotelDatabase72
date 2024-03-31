<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Menu</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .header, .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1em 0;
        }
        .main-content {
            text-align: center;
            padding: 50px 20px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            background-color: #e8491d;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            margin: 20px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Employee Menu</h1>
    </div>

    <div class="main-content">
        <h2>How would you like to proceed?</h2>
        <a href="hotels.jsp" class="btn">Edit Hotels</a>
        <a href="rooms.jsp" class="btn">Edit Rooms</a>
        <a href="employees.jsp" class="btn">Edit Employees</a>
        <a href="customers.jsp" class="btn">Edit Customers</a>
        <a href="bookings.jsp" class="btn">Convert Booking to Renting</a>

    </div>


    <div class="footer">
        <p>&copy; 2024 Hotel Management System</p>
    </div>

</body>
</html>
