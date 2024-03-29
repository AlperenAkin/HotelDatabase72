<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="java.util.List" %>
<%@ page import="com.hotel.RoomManager" %>
<%@ page import="com.hotel.Room" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>


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
    RoomManager roomManager = new RoomManager();
    List<Room> rooms = null;
    if (request.getMethod().equals("POST")) {

        HashMap<String, String> searchCriteria = new HashMap<String, String>();



        String startDate = request.getParameter("startDate");
        if (startDate != null && startDate.length() > 0) {
            out.println("<h3>Search Results for " + startDate + "</h3>");
            searchCriteria.put("startDate", startDate);
        }

        String endDate = request.getParameter("endDate");
        if (endDate != null && endDate.length() > 0) {
            out.println("<h3>Search Results for " + endDate + "</h3>");
            searchCriteria.put("endDate", endDate);
        }

        String roomCapacity = request.getParameter("roomCapacity");
        if (roomCapacity != null && roomCapacity.length() > 0) {
            out.println("<h3>Search Results for " + roomCapacity + "</h3>");
            searchCriteria.put("roomCapacity", roomCapacity);
        }

        String hotelChain = request.getParameter("hotelChain");
        if (hotelChain != null && hotelChain.length() > 0) {
            out.println("<h3>Search Results for " + hotelChain + "</h3>");
            searchCriteria.put("hotelChain", hotelChain);
        }

        String roomView = request.getParameter("roomView");
        if (roomView != null && roomView.length() > 0) {
            out.println("<h3>Search Results for " + roomView + "</h3>");
            searchCriteria.put("roomView", roomView);
        }



        String province = request.getParameter("province");
        if (province != null && province.length() > 0) {
            out.println("<h3>Search Results for " + province + "</h3>");
            searchCriteria.put("province", province);
        }

        String starRating = request.getParameter("starRating");
        if (starRating != null && starRating.length() > 0) {
            out.println("<h3>Search Results for " + starRating + "</h3>");
            searchCriteria.put("starRating", starRating);
        }

        String priceRange = request.getParameter("priceRange");
        if (priceRange != null && priceRange.length() > 0) {
            out.println("<h3>Search Results for " + priceRange + "</h3>");
            searchCriteria.put("priceRange", priceRange);
        }


        List<String> where = new ArrayList<String>();
        for (String searchKey : searchCriteria.keySet()) {
            String searchValue = searchCriteria.get(searchKey);

            String searchToken;
            if (searchKey.equals("startDate")) {
                //rooms = roomManager.getRoomsByStartDate(searchValue);
            } else if (searchKey.equals("endDate")) {
                //rooms = roomManager.getRoomsByEndDate(searchValue);
            } else if (searchKey.equals("roomCapacity")) {
                searchToken = "capacity = " + searchValue;
                where.add(searchToken);
            } else if (searchKey.equals("hotelChain")) {
                searchToken = "exists( " +
                        "select address from hotel h where h.address = room.hotel_address " +
                        "and h.hotel_chain_name = '" + searchValue + "')";
                where.add(searchToken);
            } else if (searchKey.equals("roomView")) {
                searchToken = "view = '" + searchValue + "'";
                where.add(searchToken);
            } else if (searchKey.equals("province")) {
                searchToken = "hotel_address like '%" + searchValue + "%'";
                where.add(searchToken);
            } else if (searchKey.equals("starRating")) {
                searchToken = "exists( " +
                    "select stars from hotel h where h.address = room.hotel_address " +
                    "and h.stars = " + searchValue + ")";
                where.add(searchToken);
            } else if (searchKey.equals("priceRange")) {
                String[] parts = searchValue.split("-");
                String minPrice = parts[0];
                String maxPrice = parts[1];
                searchToken = "price >= " + minPrice + " AND price <= " + maxPrice;
                where.add(searchToken);
            }
        }
        String[] whereArray = new String[where.size()];
        whereArray = where.toArray(whereArray);
        String whereClause = String.join(" AND ", whereArray);
        System.out.println(whereClause);
        String query = "SELECT * FROM room WHERE " + whereClause;
        System.out.println(query);

        try {
            rooms = roomManager.queryRooms(query);
            System.out.println(rooms.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Customer Portal - Hotel Management System</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <style>

        .room-container {
                    height: 50vh; /* Set the height to 50% of the viewport height */
                    overflow-y: auto; /* Enable vertical scrolling */
                    border: 1px solid black; /* Add a border */
                    width: 70%; /* Set the width to 50% of the viewport width */
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
    </style>
</head>
<body>
    <div class="header">
        <h1>Customer Portal</h1>
    </div>
    <div class="main-content">
        <h2>Find and Book Your Ideal Room</h2>
        <form  method="post"> <!-- Update with your search servlet -->
            <!-- Room search criteria -->

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
                <option value="City View">City View</option>
                <option value="Mountain View">Mountain View</option>
                <option value="Ocean View">Ocean View</option>
                <option value="Garden View">Garden View</option>
                <option value="Pool View">Pool View</option>
                <option value="Forest View">Forest View</option>
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
            <input type="submit" value="Search Rooms" >


        </form>

        <% if (rooms != null) { %>
                <div class="container">
                    <div class="row" id="row">
                        <div class="col-md-12">
                            <div class="card" id="card-container">
                                <div class="card-body room-container" id="card"> <!-- Add the room-container class here -->
                                    <% if (rooms.size() == 0) { %>
                                    <h1 style="margin-top: 5rem;">No Rooms found!</h1>
                                    <% } else { %>
                                    <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>Room Number</th>
                                                    <th>Hotel Address</th>
                                                    <th>Price</th>
                                                    <th>Capacity</th>
                                                    <th>View</th>
                                                    <th>Extendable</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                for (Room room : rooms) { %>
                                                <tr>
                                                    <td><%= room.getRoomNumber() %></td>
                                                    <td><%= room.getHotelAddress() %></td>
                                                    <td><%= room.getPrice() %></td>
                                                    <td><%= room.getCapacity() %>
                                                    <td><%= room.getView() %></td>
                                                    <td><%= room.isExtendable() %></td>
                                                    <td>
                                                        <form method="post" action="booking.jsp"> <!-- Update with your booking servlet -->
                                                            <input type="hidden" name="roomNumber" value="<%= room.getRoomNumber() %>">
                                                            <input type="hidden" name="hotelAddress" value="<%= room.getHotelAddress() %>">
                                                            <input type="hidden" name="startDate" value="<%= request.getParameter("startDate") %>">
                                                            <input type="hidden" name="endDate" value="<%= request.getParameter("endDate") %>">
                                                            <input type="hidden" name="customerID" value="1">
                                                            <input type="submit" value="Book Room" >

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
