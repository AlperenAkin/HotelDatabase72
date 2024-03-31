<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.CustomerManager" %>
<%@ page import="com.hotel.Customer" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    // get the id that was sent
    Integer customer_id = Integer.valueOf(request.getParameter("customer_id"));



    // create a message object
    Message msg;
    boolean error = false;
    // try to delete a hotel
    try {
        CustomerManager customerManager = new CustomerManager();
        // save the message returned from trying to delete a grade
        String value = customerManager.deleteCustomer(customer_id);
        System.out.println(value);
        // in case the value contains error/Error then this message is an error
        if (value.contains("Error") || value.contains("error")) {
            msg = new Message("error", value);
            error = true;
        } else {
            msg = new Message("success", value);
        }

    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Something went wrong!");
    }

    // append the message in a messages arraylist
    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    // set session attribute named messages with the messages arraylist
    session.setAttribute("messages", messages);

    if (error) {
        out.println(msg.value);

    } else {
        response.sendRedirect("customers.jsp");
    }

%>