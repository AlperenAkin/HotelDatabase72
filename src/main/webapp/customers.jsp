<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="java.util.List" %>
<%@ page import="com.hotel.CustomerManager" %>
<%@ page import="com.hotel.Customer" %>
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
    CustomerManager customerManager = new CustomerManager();
    List<Customer> customers = null;


     try {
        customers = customerManager.getCustomers();
        System.out.println(customers.size());

     } catch (Exception e) {
        e.printStackTrace();

     }

%>

<!DOCTYPE html>
<html>
<head>
    <title>CUSTOMERS</title>

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
        <h1>Manage Customers</h1>
        <form method="post" action="customer_create.jsp"> <!-- Update with your booking servlet -->

            <input type="submit" value="Create Customer" >

        </form>
    </div>
    <div class="main-content">
        <h2>Customers</h2>

        <% if (customers != null) { %>
                <div class="container">
                    <div class="row" id="row">
                        <div class="col-md-12">
                            <div class="card" id="card-container">
                                <div class="card-body room-container" id="card"> <!-- Add the room-container class here -->
                                    <% if (customers.size() == 0) { %>
                                    <h1 style="margin-top: 5rem;">No Hotels found!</h1>
                                    <% } else { %>
                                    <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>customer_id</th>
                                                    <th>First name</th>
                                                    <th>Last Name</th>
                                                    <th>Address</th>
                                                    <th>Date Registered</th>

                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                for (Customer customer : customers) { %>
                                                <tr>
                                                    <td><%= customer.getCustomerId() %></td>
                                                    <td><%= customer.getFirstName() %></td>
                                                    <td><%= customer.getLastName() %></td>
                                                    <td><%= customer.getAddress() %></td>
                                                    <td><%= customer.getDateRegistered() %></td>

                                                    <td>
                                                        <form method="post" action="customer_update.jsp"> <!-- Update with your booking servlet -->
                                                            <input type="hidden" name="customer_id" value="<%= customer.getCustomerId() %>">
                                                            <input type="hidden" name="first_name" value="<%= customer.getFirstName() %>">
                                                            <input type="hidden" name="last_name" value="<%= customer.getLastName() %>">
                                                            <input type="hidden" name="address" value="<%= customer.getAddress() %>">
                                                            <input type="hidden" name="date_registered" value="<%= customer.getDateRegistered() %>">

                                                            <input type="submit" value="Update" >


                                                        </form>


                                                    </td>

                                                    <td>
                                                        <form method="POST" action="customer_delete_controller.jsp">

                                                            <input type="hidden" value="<%= customer.getCustomerId() %>" name="customer_id" />
                                                            <input type="submit" value="Delete" />

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
