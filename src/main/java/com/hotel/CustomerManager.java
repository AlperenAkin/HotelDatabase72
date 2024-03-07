package com.hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CustomerManager {

    public List<Customer> getCustomers() throws Exception {

        // sql query
        String sql = "SELECT * FROM customer";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all bookings retrieved from database
        List<Customer> customers = new ArrayList<Customer>();


        try (Connection con = db.getConnection()) {
            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // get the results from executing the query
            ResultSet rs = stmt.executeQuery();

            // iterate through the result set
            while (rs.next()) {
                // create new student object
                Customer customer = new Customer(
                        rs.getInt("customer_id"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("address"),
                        rs.getString("date_registered")

                );

                // append booking in booking list
                customers.add(customer);
            }

            // close result set
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();

            // return result
            return customers;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public String createCustomer(Customer customer) throws Exception {
        String message = "";
        Connection con = null;

        // connection object
        ConnectionDB db = new ConnectionDB();
        System.out.println(customer.getRentingID());
        System.out.println(renting.getRoomNumber());
        System.out.println(renting.getHotelAddress());
        System.out.println(renting.getFromDate());
        System.out.println(renting.getToDate());
        System.out.println(renting.getCustomerID());


        // sql query
        String insertStudentQuery = "INSERT INTO renting (renting_id, room_number, hotel_address, from_date, to_date, customer_id) VALUES (?, ?, ?, ?, ?, ?);";

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection(); //get Connection

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(insertStudentQuery);

            // set every ? of statement
            stmt.setInt(1, renting.getRentingID());
            stmt.setInt(2, renting.getRoomNumber());
            stmt.setString(3, renting.getHotelAddress());
            stmt.setString(4, renting.getFromDate());
            stmt.setString(5, renting.getToDate());
            stmt.setInt(6, renting.getCustomerID());

            // execute the query
            int output = stmt.executeUpdate();
            System.out.println(output);

            // close the statement
            stmt.close();
            // close the connection
            db.close();
        } catch (Exception e) {
            message = "Error while inserting renting: " + e.getMessage();
        } finally {
            if (con != null) // if connection is still open, then close.
                con.close();
            if (message.equals("")) message = "Renitng successfully inserted!";

        }

        // return respective message
        return message;
    }


    public String updateCustomer(Renting renting) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "UPDATE renting SET room_number=?, hotel_address=?, from_date=?, to_date=?, customer_ID=? WHERE renting_id=?;";

        // connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            // get connection
            con = db.getConnection();

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setInt(1, renting.getRoomNumber());
            stmt.setString(2, renting.getHotelAddress());
            stmt.setString(3, renting.getFromDate());
            stmt.setString(4, renting.getToDate());
            stmt.setInt(5, renting.getCustomerID());

            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while updating renting: " + e.getMessage();

        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "Renting successfully updated!";
        }

        // return respective message
        return message;
    }
}

