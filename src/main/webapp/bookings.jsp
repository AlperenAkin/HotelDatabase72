<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="java.util.List" %>
<%@ page import="com.hotel.BookingManager" %>
<%@ page import="com.hotel.Booking" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>



<%
    ArrayList<Message> messages;

    // get any incoming messages from session attribute named messages
    // if nothing exists then messages is an empty arraylist
    if ((ArrayList<Message>) session.getAttribute("messages") == null) messages = new ArrayList<>();
        // else get that value
    else messages = (ArrayList<Message>) session.getAttribute("messages");

    String msgField = "";

    // create the object in the form of a stringified json
    for (Message m : messages) {
        msgField += "{\"type\":\"" + m.type + "\",\"value\":\"" + m.value.replaceAll("['\"]+", "") + "\"},";
    }

    // empty session messages
    session.setAttribute("messages", new ArrayList<Message>());

    // get all students from database
    BookingManager bookingManager = new BookingManager();
    List<Booking> bookings = null;


     try {
        bookings = bookingManager.getBookings();
        System.out.println(bookings.size());

     } catch (Exception e) {
        e.printStackTrace();

     }

%>

<!DOCTYPE html>
<html>
<head>
    <title>BOOKINGS</title>

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <style>

        .room-container {
                    height: 50vh; /* Set the height to 50% of the viewport height */
                    overflow-y: auto; /* Enable vertical scrolling */
                    border: 1px solid black; /* Add a border */
                    width: 50%; /* Set the width to 50% of the viewport width */
                    margin: auto; /* Center the container */
        }

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
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header form {
            margin: 0;
        }
    </style>


</head>
<body>
    <div class="header">
        <h1>Convert Bookings</h1>
        <form method="post" action="rentings.jsp"> <!-- Update with your booking servlet -->

            <input type="submit" value="View Rentings" >

        </form>
    </div>
    <div class="main-content">
        <h2>Bookings</h2>

        <% if (bookings != null) { %>
                <div class="container">
                    <div class="row" id="row">
                        <div class="col-md-12">
                            <div class="card" id="card-container">
                                <div class="card-body room-container" id="card"> <!-- Add the room-container class here -->
                                    <% if (bookings.size() == 0) { %>
                                    <h1 style="margin-top: 5rem;">No Bookings found!</h1>
                                    <% } else { %>
                                    <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>booking_id</th>
                                                    <th>Room Number</th>
                                                    <th>Hotel Address</th>
                                                    <th>From Date</th>
                                                    <th>To Date</th>
                                                    <th>Customer ID</th>


                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                for (Booking booking : bookings) { %>
                                                <tr>
                                                    <td><%= booking.getBookingId() %></td>
                                                    <td><%= booking.getRoomNumber() %></td>
                                                    <td><%= booking.getHotelAddress() %></td>
                                                    <td><%= booking.getFromDate() %></td>
                                                    <td><%= booking.getToDate() %></td>
                                                    <td><%= booking.getCustomerId() %></td>

                                                    <td>
                                                        <form method="post" action="convert_booking.jsp"> <!-- Update with your booking servlet -->
                                                            <input type="hidden" name="booking_id" value="<%= booking.getBookingId()  %>">
                                                            <input type="hidden" name="room_number" value="<%= booking.getRoomNumber() %>">
                                                            <input type="hidden" name="hotel_address" value="<%= booking.getHotelAddress() %>">
                                                            <input type="hidden" name="from_date" value="<%= booking.getFromDate() %>">
                                                            <input type="hidden" name="to_date" value="<%= booking.getToDate() %>">
                                                            <input type="hidden" name="customer_id" value="<%= booking.getCustomerId() %>">

                                                            <input type="submit" value="Convert Booking" >


                                                        </form>


                                                    </td>




                                                </tr>
                                                <% } %>
                                                </tbody>
                                            </table>
                                        </div>
                                        <% } %>
                                    </div>
                                </div>
                            </div>
                        </div>
                <% } %>


    </div>
    <div class="footer">
        <p>&copy; 2024 Hotel Management System</p>
    </div>
</body>
</html>
