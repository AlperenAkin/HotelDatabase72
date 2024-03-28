<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.RoomManager" %>
<%@ page import="com.hotel.Room" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    String address = request.getParameter("address");
    Integer roomNumber = Integer.valueOf(request.getParameter("roomNumber"));
    Double price = Double.valueOf(request.getParameter("price"));
    Integer capacity = Integer.valueOf(request.getParameter("capacity"));
    String view = request.getParameter("view");
    Boolean extendable = Boolean.valueOf(request.getParameter("extendable"));

    RoomManager roomManager = new RoomManager();

    Room room = new Room(address, roomNumber, price, capacity, view, extendable);

    Message msg;

    try {
        String value = roomManager.createRoom(room);
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
    response.sendRedirect("rooms.jsp");
%>