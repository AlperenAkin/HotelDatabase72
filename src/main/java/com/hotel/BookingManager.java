package com.hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookingManager {

    public List<Booking> getBookings() throws Exception {

        // sql query
        String sql = "SELECT * FROM bookings";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all students retrieved from database
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

                // append student in students list
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
}
