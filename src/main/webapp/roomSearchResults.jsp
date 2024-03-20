
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="com.hotel.RoomManager" %>
<%@ page import="com.hotel.Room" %>
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
    RoomManager roomManager = new RoomManager();
    List<Room> rooms = null;
    try {
        rooms = roomManager.getRooms();
        System.out.println(rooms.size());
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

    <div class="container">
        <div class="row" id="row">
            <div class="col-md-12">
                <div class="card" id="card-container">
                    <div class="card-body" id="card">
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
