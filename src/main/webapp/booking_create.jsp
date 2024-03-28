<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.BookingManager" %>
<%@ page import="com.hotel.Booking" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    // get values from the request
    Integer room_number = Integer.parseInt( request.getParameter("room_number") );
    System.out.println(room_number);
    String hotel_address = request.getParameter("hotel_address");
    System.out.println(hotel_address);
    String from_date = request.getParameter("from_date");
    System.out.println(from_date);
    String to_date = request.getParameter("to_date");
    System.out.println(to_date);
    Integer customer_id = Integer.parseInt(request.getParameter("customer_id"));
    System.out.println(customer_id);
    BookingManager bookingManager = new BookingManager();
    // create student object
    Booking booking = new Booking(room_number, hotel_address, from_date, to_date, customer_id);

    // create message object
    Message msg;

    try {

        String value = bookingManager.createBooking(booking);
        System.out.println(value);
        // if the value contains error/Error then this is an error message
        if (value.contains("Error") || value.contains("error")) msg = new Message("error", value);
        // else the booking was successfully created
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


    // try to create a new booking

    // redirect to index
    response.sendRedirect("index.jsp");
%>