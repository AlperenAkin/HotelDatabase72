<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.CustomerManager" %>
<%@ page import="com.hotel.Customer" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String email = request.getParameter("email");
    String date_registered = request.getParameter("date_registered");


    CustomerManager customerManager = new CustomerManager();

    Customer customer = new Customer(first_name, last_name, email, date_registered);

    Message msg;

    try {
        String value = customerManager.createCustomer(customer);
        // if the value contains error/Error then this is an error message
        if (value.contains("Error") || value.contains("error")) msg = new Message("error", value);

        else msg = new Message("success", value);
    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Something went wrong!");
    }

    // create an arraylist of messages and append the new message
    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    // set session attribute named messages to messages value
    session.setAttribute("messages", messages);
    // redirect to students page
    response.sendRedirect("customers.jsp");
%>