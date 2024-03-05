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

    public String createBooking(Booking booking) throws Exception {
        String message = "";
        Connection con = null;

        // connection object
        ConnectionDB db = new ConnectionDB();
        System.out.println(booking.getBookingId());
        System.out.println(booking.getRoomNumber());
        System.out.println(booking.getHotelAddress());
        System.out.println(booking.getFromDate());
        System.out.println(booking.getToDate());
        System.out.println(booking.getCustomerId());


        // sql query
        String insertStudentQuery = "INSERT INTO booking (name, surname, email) VALUES (?, ?, ?, ?, ?, ?, ?);";
        // "INSERT INTO students (name, surname, email) VALUES (" + student.getName().toString() +
//        ", " + student.getSurname() ...."

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection(); //get Connection

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(insertStudentQuery);

            // set every ? of statement
            stmt.setString(1, student.getName());
            stmt.setString(2, student.getSurname());
            stmt.setString(3, student.getEmail());

            // execute the query
            int output = stmt.executeUpdate();
            System.out.println(output);

            // close the statement
            stmt.close();
            // close the connection
            db.close();
        } catch (Exception e) {
            message = "Error while inserting customer: " + e.getMessage();
        } finally {
            if (con != null) // if connection is still open, then close.
                con.close();
            if (message.equals("")) message = "Student successfully inserted!";

        }

        // return respective message
        return message;
    }

    /**
     * Method to update student
     *
     * @param student student to be updated
     * @return string returned that states if the grade deleted or not
     * @throws Exception when trying to connect to database
     */
    public String updateBooking(Booking booking) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "UPDATE booking SET name=?, surname=?, email=? WHERE id=?;";
//        "UPDATE students SET name=" + student.getName().toString() +", surname=" +

        // connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            // get connection
            con = db.getConnection();

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setString(1, student.getName());
            stmt.setString(2, student.getSurname());
            stmt.setString(3, student.getEmail());
            stmt.setInt(4, student.getId());

            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while updating student: " + e.getMessage();

        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "Student successfully updated!";
        }

        // return respective message
        return message;
    }
}
