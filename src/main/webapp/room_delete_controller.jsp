<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.RoomManager" %>
<%@ page import="com.hotel.Room" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    // get the id that was sent
    String hotel_address = request.getParameter("hotel_address");
    Integer roomNumber = Integer.valueOf(request.getParameter("roomNumber"));


    // create a message object
    Message msg;
    boolean error = false;
    // try to delete a hotel
    try {
        RoomManager roomManager = new RoomManager();
        // save the message returned from trying to delete a grade
        String value = roomManager.deleteRoom(hotel_address, roomNumber);
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
        response.sendRedirect("rooms.jsp");
    }

%>