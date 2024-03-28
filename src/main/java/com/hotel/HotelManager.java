package com.hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelManager {

    public List<Hotel> getHotels() throws Exception {

        // sql query
        String sql = "SELECT * FROM hotel order by address;";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all bookings retrieved from database
        List<Hotel> hotels = new ArrayList<Hotel>();


        try (Connection con = db.getConnection()) {
            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // get the results from executing the query
            ResultSet rs = stmt.executeQuery();

            // iterate through the result set
            while (rs.next()) {
                // create new student object
                Hotel hotel = new Hotel(
                        rs.getString("address"),
                        rs.getInt("stars"),
                        rs.getString("contact_email"),
                        rs.getInt("num_rooms"),
                        rs.getString("hotel_chain_name")

                );

                // append booking in booking list
                hotels.add(hotel);
            }

            // close result set
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();

            // return result
            return hotels;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public String createHotel(Hotel hotel) throws Exception {
        String message = "";
        Connection con = null;

        // connection object
        ConnectionDB db = new ConnectionDB();



        // sql query
        String insertStudentQuery = "INSERT INTO hotel (address, stars, contact_email, num_rooms, hotel_chain_name) VALUES (?, ?, ?, ?, ?);";

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection(); //get Connection

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(insertStudentQuery);

            // set every ? of statement
            stmt.setString(1, hotel.getAddress());
            stmt.setInt(2, hotel.getStars());
            stmt.setString(3, hotel.getContactEmail());
            stmt.setInt(4, hotel.getNumRooms());
            stmt.setString(5, hotel.getHotelChainName());


            // execute the query
            int output = stmt.executeUpdate();
            System.out.println(output);

            // close the statement
            stmt.close();
            // close the connection
            db.close();
        } catch (Exception e) {
            message = "Error while inserting hotel: " + e.getMessage();
        } finally {
            if (con != null) // if connection is still open, then close.
                con.close();
            if (message.equals("")) message = "Hotel successfully inserted!";

        }

        // return respective message
        return message;
    }


    public String updateHotel(Hotel hotel) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "UPDATE hotel SET stars=?, contact_email=?, num_rooms=?, hotel_chain_name=? WHERE address=?;";

        // connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            // get connection
            con = db.getConnection();

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setInt(1, hotel.getStars());
            stmt.setString(2, hotel.getContactEmail());
            stmt.setInt(3, hotel.getNumRooms());
            stmt.setString(4, hotel.getHotelChainName());
            stmt.setString(5, hotel.getAddress());

            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while updating renting: " + e.getMessage();

        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "Hotel successfully updated!";
        }

        // return respective message
        return message;
    }

    public String deleteHotel(String address) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "DELETE FROM hotel WHERE address = ?;";

        // database connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection();

            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setString(1, address);

            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while delete hotel: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "hotel successfully deleted!";
        }

        return message;
    }
}

