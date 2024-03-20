<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Portal - Hotel Management System</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <style>
            body {
                font-family: 'Roboto', sans-serif;
                background-color: #f7f7f7;
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }
            .header {
                background-color: #00695c;
                color: white;
                padding: 20px;
                text-align: center;
            }
            .main-content {
                flex: 1;
                padding: 20px;
                text-align: center;
            }
            .footer {
                background-color: #00695c;
                color: white;
                text-align: center;
                padding: 10px;
                position: relative;
                bottom: 0;
                width: 100%;
            }
            form {
                margin-top: 20px;
            }
            input, select {
                padding: 10px;
                margin: 10px;
                border-radius: 5px;
                border: 1px solid #ddd;
                font-size: 16px;
            }
            input[type="submit"] {
                background-color: #009688;
                color: white;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #00796b;
            }
        </style>
</head>
<body>
    <div class="header">
        <h1>Employee Portal</h1>
    </div>
    <div class="main-content">
        <h2>Manage Bookings and Rentings</h2>
        <form action="SelectHotelServlet" method="post"> <!-- Update -->
            <!-- Selection for branch -->
            <select name="branch" required>
                <option value="">Select Branch</option>
                <option value="Toronto">Toronto</option>
                <option value="Vancouver">Vancouver</option>

            </select>

            <!-- Selection for specific hotel -->
            <select name="hotel" required>
                <option value="">Select Hotel</option>

            </select>

            <input type="submit" value="Select Hotel">
        </form>

        <!-- >
    </div>
    <div class="footer">
        <p>&copy; 2024 Hotel Management System</p>
    </div>


</body>
</html>
