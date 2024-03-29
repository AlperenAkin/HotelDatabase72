package com.hotel;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeManager {

    public List<Employee> getEmployees() throws Exception {

        // sql query
        String sql = "SELECT * FROM employee";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all bookings retrieved from database
        List<Employee> employees = new ArrayList<Employee>();


        try (Connection con = db.getConnection()) {
            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // get the results from executing the query
            ResultSet rs = stmt.executeQuery();

            // iterate through the result set
            while (rs.next()) {
                // create new student object
                Employee employee = new Employee(
                        rs.getInt("employee_id"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("address")


                );

                // append booking in booking list
                employees.add(employee);
            }

            // close result set
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();

            // return result
            return employees;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public String createEmployee(Employee employee) throws Exception {
        String message = "";
        Connection con = null;

        // connection object
        ConnectionDB db = new ConnectionDB();




        // sql query
        String insertStudentQuery = "INSERT INTO employee (first_name, last_name, address) VALUES (?, ?, ?);";

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection(); //get Connection

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(insertStudentQuery);

            // set every ? of statement


            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setString(3, employee.getAddress());




            // execute the query
            int output = stmt.executeUpdate();
            System.out.println(output);

            // close the statement
            stmt.close();
            // close the connection
            db.close();
        } catch (Exception e) {
            message = "Error while inserting Customer: " + e.getMessage();
        } finally {
            if (con != null) // if connection is still open, then close.
                con.close();
            if (message.equals("")) message = "Customer successfully inserted!";

        }

        // return respective message
        return message;
    }


    public String updateEmployee(Employee employee) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "UPDATE employee SET first_name=?, last_name=?, address=? WHERE employee_id=?;";

        // connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            // get connection
            con = db.getConnection();

            // prepare the statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setString(3, employee.getAddress());
            stmt.setInt(4, employee.getEmployeeId());

            // execute the query
            stmt.executeUpdate();

            // close the statement
            stmt.close();

        } catch (Exception e) {
            message = "Error while updating customer: " + e.getMessage();

        } finally {
            if (con != null) con.close();
            if (message.equals("")) message = "Customer successfully updated!";
        }

        // return respective message
        return message;
    }

    public String deleteEmployee(Integer employee_id) throws Exception {
        Connection con = null;
        String message = "";

        // sql query
        String sql = "DELETE FROM employee WHERE employee_id = ?;";

        // database connection object
        ConnectionDB db = new ConnectionDB();

        // try connect to database, catch any exceptions
        try {
            con = db.getConnection();

            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // set every ? of statement
            stmt.setInt(1, employee_id);

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


