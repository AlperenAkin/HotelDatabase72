package com.hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

public class BookingManager {

    public List<Booking> getBookings() throws Exception {

        // sql query
        String sql = "SELECT * FROM booking";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all bookings retrieved from database
        List<Booking> bookings = new ArrayList<Booking>();


        try (Connection con = db.getConnection()) {
            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // get the results from executing the query
            ResultSet rs = stmt.executeQuery();

            // iterate through the result set
            while (rs.next()) {
                // create new student object
                Booking booking = new Booking(
                        rs.getInt("booking_id"),
                        rs.getInt("room_number"),
                        rs.getString("hotel_address"),
                        rs.getString("from_date"),
                        rs.getString("to_date"),
                        rs.getInt("customer_id")
                );

                // append booking in booking list
                bookings.add(booking);
            }

            // close result set
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();

            // return result
            return bookings;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public String createBooking(Booking booking) throws Exception {
        String message = "";
        Connection con = null;

        // connection object
        ConnectionDB db = new ConnectionDB();

        System.out.println(booking.getRoomNumber());
        System.out.println(booking.getHotelAddress());
        System.out.println(booking.getFromDate());
        System.out.println(booking.getToDate());
        System.out.println(booking.getCustomerId());


        // sql query
        String insertStudentQuery = "INSERT INTO booking (room_number, hotel_address, from_date, to_date, customer_id) VALUES (?, ?, ?, ?, ?);";

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection(); //get Connection

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(insertStudentQuery);

            // set every ? of statement
            Date fromdate = Date.valueOf(booking.getFromDate());
            Date todate = Date.valueOf(booking.getToDate());

            stmt.setInt(1, booking.getRoomNumber());
            stmt.setString(2, booking.getHotelAddress());
            stmt.setDate(3, fromdate);
            stmt.setDate(4, todate);
            stmt.setInt(5, booking.getCustomerId());

            // execute the query
            int output = stmt.executeUpdate();
            System.out.println(output);

            // close the statement
            stmt.close();
            // close the connection
            db.close();
        } catch (Exception e) {
            message = "Error while inserting booking: " + e.getMessage();
        } finally {
            if (con != null) // if connection is still open, then close.
                con.close();
            if (message.equals("")) message = "Booking successfully inserted!";

        }

        // return respective message
        return message;
    }


    public String updateBooking(Booking booking) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "UPDATE booking SET room_number=?, hotel_address=?, from_date=?, to_date=?, customer_Id=? WHERE booking_id=?;";

        // connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            // get connection
            con = db.getConnection();

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setInt(1, booking.getRoomNumber());
            stmt.setString(2, booking.getHotelAddress());
            stmt.setString(3, booking.getFromDate());
            stmt.setString(4, booking.getToDate());
            stmt.setInt(5, booking.getCustomerId());

            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while updating booking: " + e.getMessage();

        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "Booking successfully updated!";
        }

        // return respective message
        return message;
    }

    public String deleteBooking(Integer booking_id) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "DELETE FROM booking WHERE booking_id = ?;";

        // database connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection();

            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setInt(1, booking_id);

            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while delete booking: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "Booking successfully deleted!";
        }

        return message;
    }
}
