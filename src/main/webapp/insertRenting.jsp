<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.Renting" %>
<%@ page import="com.hotel.RentingManager" %>
<%@ page import="java.util.ArrayList" %>

<%
    // get values from the request
    Integer renting_id = request.getParameter("renting_id");
    Integer room_number = request.getParameter("room_number");
    String hotel_address = request.getParameter("hotel_address");
    String from_date = request.getParameter("from_date");
    String to_date = request.getParameter("to_date");
    Integer customer_id = request.getParameter("customer_id");
    RentingManager rentingManager= new RentingManager();
    // create renting object
    Renting renting = new Renting(renting_id, room_number, hotel_address, from_date, to_date, customer_id);

    Message msg;
    // try to create a new renting
    try {

        String value = rentingManager.createRenting(renting);
        // if the value contains error/Error then this is an error message
        if (value.contains("Error") || value.contains("error")) msg = new Message("error", value);
        // else the student was successfully created
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
    // redirect to index
    //update this
%>

