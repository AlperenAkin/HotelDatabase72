<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hotel Management System</title>
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
        <h1>Hotel Management System 72</h1>
    </div>

    <div class="main-content">
        <h2>How would you like to proceed?</h2>
        <a href="customer.jsp" class="btn">Customer Portal</a>
        <a href="employee.jsp" class="btn">Employee Portal</a>
    </div>


    <div class="footer">
        <p>&copy; 2024 Hotel Management System</p>
    </div>

</body>
</html>
