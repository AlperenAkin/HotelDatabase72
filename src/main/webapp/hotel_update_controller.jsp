<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.HotelManager" %>
<%@ page import="com.hotel.Hotel" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    String address = request.getParameter("hotelAddress");
    Integer stars = Integer.valueOf(request.getParameter("hotelStars"));
    String contact_email = request.getParameter("hotelContactEmail");
    Integer num_rooms = Integer.valueOf(request.getParameter("hotelNumRooms"));
    String hotel_chain_name = request.getParameter("hotelChainName");

    HotelManager hotelManager = new HotelManager();

    Hotel hotel = new Hotel(address, stars, contact_email, num_rooms, hotel_chain_name);

    Message msg;

    try {
        String value = hotelManager.updateHotel(hotel);
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
    response.sendRedirect("hotels.jsp");
%>