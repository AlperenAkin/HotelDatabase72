package com.hotel;

import java.util.HashMap;
import java.util.Map;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RoomManager {

    public List<Room> getRooms() throws Exception {

        // sql query
        String sql = "SELECT * FROM room";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all bookings retrieved from database
        List<Room> rooms = new ArrayList<Room>();


        try (Connection con = db.getConnection()) {
            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // get the results from executing the query
            ResultSet rs = stmt.executeQuery();

            // iterate through the result set
            while (rs.next()) {
                // create new student object
                Room room = new Room(
                        rs.getString("hotel_address"),
                        rs.getInt("room_number"),
                        rs.getDouble("price"),
                        rs.getInt("capacity"),
                        rs.getString("view"),
                        rs.getBoolean("extendable")
                );

                // append room in rooms list
                rooms.add(room);
            }

            // close result set
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();

            // return result
            return rooms;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public List<Room> searchRooms(HashMap<String, String> searchCriteria) throws Exception {
        Connection con = null;
        List<Room> rooms = new ArrayList<>();

        // Build the SQL query dynamically based on the search criteria
        String sql = "SELECT * FROM room WHERE 1=1";
        for (Map.Entry<String, String> entry : searchCriteria.entrySet()) {
            sql += " AND " + entry.getKey() + " = ?";
        }

        // connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            // get connection
            con = db.getConnection();

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            int i = 1;
            for (Map.Entry<String, String> entry : searchCriteria.entrySet()) {
                stmt.setString(i++, entry.getValue());
            }

            // execute the query
            ResultSet rs = stmt.executeQuery();

            // while there are results
            while (rs.next()) {
                // create a new room object
                Room room = new Room(
                        rs.getString("hotel_address"),
                        rs.getInt("room_number"),
                        rs.getDouble("price"),
                        rs.getInt("capacity"),
                        rs.getString("view"),
                        rs.getBoolean("extendable")
                );

                // set all attributes of room
                // ...


                // add room to list
                rooms.add(room);
            }

            // close the statement
            stmt.close();

        } catch (Exception e) {
            throw new Exception("Error while getting rooms: " + e.getMessage());

        } finally {
            if (con != null) con.close();
        }

        // return list of rooms
        return rooms;
    }

    public String createRoom(Room room) throws Exception {
        String message = "";
        Connection con = null;

        // connection object
        ConnectionDB db = new ConnectionDB();
        System.out.println(room.getHotelAddress());
        System.out.println(room.getRoomNumber());
        System.out.println(room.getPrice());
        System.out.println(room.getCapacity());
        System.out.println(room.getView());
        System.out.println(room.isExtendable());


        // sql query
        String insertStudentQuery = "INSERT INTO room (hotel_address, room_number, price, capacity, view, extendable) VALUES (?, ?, ?, ?, ?, ?);";

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection(); //get Connection

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(insertStudentQuery);

            // set every ? of statement
            stmt.setString(1, room.getHotelAddress());
            stmt.setInt(2, room.getRoomNumber());
            stmt.setDouble(3, room.getPrice());
            stmt.setInt(4, room.getCapacity());
            stmt.setString(5, room.getView());
            stmt.setBoolean(6, room.isExtendable());

            // execute the query
            int output = stmt.executeUpdate();
            System.out.println(output);

            // close the statement
            stmt.close();
            // close the connection
            db.close();
        } catch (Exception e) {
            message = "Error while inserting room: " + e.getMessage();
        } finally {
            if (con != null) // if connection is still open, then close.
                con.close();
            if (message.equals("")) message = "Room successfully inserted!";

        }

        // return respective message
        return message;
    }


    public String updateRoom(Room room) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "UPDATE room SET price=?, capacity=?, view=?, extendable=? WHERE renting_id=? AND hotel_address=?;";

        // connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            // get connection
            con = db.getConnection();

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setDouble(1, room.getPrice());
            stmt.setInt(2, room.getCapacity());
            stmt.setString(3, room.getView());
            stmt.setBoolean(4, room.isExtendable());


            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while updating renting: " + e.getMessage();

        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "Room successfully updated!";
        }

        // return respective message
        return message;
    }
}

