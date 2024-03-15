<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Portal - Hotel Management System</title>
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
        <h1>Customer Portal</h1>
    </div>
    <div class="main-content">
        <h2>Find and Book Your Ideal Room</h2>
        <form action="SearchServlet" method="get"> <!-- Update with your search servlet -->
            <!-- Room search criteria -->
            <input type="text" name="location" placeholder="Enter location">
            <input type="date" name="startDate" placeholder="Check-in Date">
            <input type="date" name="endDate" placeholder="Check-out Date">

            <select name="roomCapacity">
                <option value="">Select room capacity</option>
                <option value="1">1 person</option>
                <option value="2">2 people</option>
                <option value="3">3 people</option>
                <option value="4">4 people</option>
                <option value="5">5 people</option>

            </select>
            <select name="hotelChain">
                <option value="">Select Hotel Chain</option>
                <option value="Maple Leaf Hotels">Maple Leaf Hotels</option>
                <option value="Northern Lights Resorts">Northern Lights Resorts</option>
                <option value="Rocky Mountain Lodges">Rocky Mountain Lodges</option>
                <option value="Pacific Coast Inns">Pacific Coast Inns</option>
                <option value="French Charm Hotels">French Charm Hotels</option>
            </select>

            <select name="roomView">
                <option value="">Select Room View</option>
                <option value="city">City</option>
                <option value="mountain">Mountain</option>
                <option value="ocean">Ocean</option>
                <option value="garden">Garden</option>
                <option value="pool">Pool</option>
                <option value="forest">Pool</option>
            </select>

            <select name="bookingStatus">
                <option value="">Select Booking Status</option>
                <option value="booking">Booking</option>
                <option value="renting">Renting</option>
            </select>

            <select name="province">
                <option value="">Select Province</option>
                <option value="ON">Ontario (ON)</option>
                <option value="BC">British Columbia (BC)</option>
                <option value="NU">Nunavut (NU)</option>
                <option value="AB">Alberta (AB)</option>
                <option value="MA">Manitoba (MA)</option>
                <option value="SA">Saskatchewan (SA)</option>
                <option value="NL">Newfoundland Labrador (NL)</option>
                <option value="YT">Yukon (YT)</option>
                <option value="NS">Nova Scotia (NS)</option>
                <option value="NT">Northwest Territories (NT)</option>

            </select>

            <select name="starRating">
                <option value="">Select Star Rating</option>
                <option value="1">1 Star</option>
                <option value="2">2 Stars</option>
                <option value="3">3 Stars</option>
                <option value="4">4 Stars</option>
                <option value="5">5 Stars</option>
            </select>

            <select name="priceRange">
                <option value="">Select Price Range</option>
                <option value="0-100">$0 - $100</option>
                <option value="101-200">$101 - $200</option>
                <option value="201-300">$201 - $300</option>
                <option value="301-400">$301 - $400</option>
                <option value="401-500">$401 - $500</option>
            </select>
            <input type="submit" value="Search Rooms">
        </form>

        <!-- Additional functionalities for customers -->
        <!-- Add forms for insert/delete/update customer information -->
    </div>
    <div class="footer">
        <p>&copy; 2024 Hotel Management System</p>
    </div>
</body>
</html>
