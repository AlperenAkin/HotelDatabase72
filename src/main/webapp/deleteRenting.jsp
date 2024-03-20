<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.Renting" %>
<%@ page import="com.hotel.RentingManager" %>
<%@ page import="com.demo.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    // get the id that was sent
    Integer id = Integer.valueOf(request.getParameter("renting_ID"));

    // create a message object
    Message msg;
    // try to delete a renting
    try {
        RentingManager rentingManager = new RentingManager();
        // save the message returned from trying to delete a renting
        String value = rentingManager.deleteRenting(id);
        // in case the value contains error/Error then this message is an error
        if (value.contains("Error") || value.contains("error")) msg = new Message("error", value);
        // else the grade was successfully deleted
        else msg = new Message("success", value);
    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Something went wrong!");
    }

    // append the message in a messages arraylist
    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    // set session attribute named messages with the messages arraylist
    session.setAttribute("messages", messages);
    // redirect to grades
   //update this
%>
