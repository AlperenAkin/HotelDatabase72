package com.hotel;
import java.util.Date;

public class Customer {
    private int customer_id;
    private String first_name;
    private String last_name;
    private String address;
    private String date_registered;

    // Constructor
    public Customer(int customer_id, String first_name, String last_name, String address, String date_registered) {
        this.customer_id = customer_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.address = address;
        this.date_registered = date_registered;
    }

    public Customer(String first_name, String last_name, String address, String date_registered) {

        this.first_name = first_name;
        this.last_name = last_name;
        this.address = address;
        this.date_registered = date_registered;
    }

    // Getters and Setters
    public int getCustomerId() {
        return customer_id;
    }

    public void setCustomerId(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getFirstName() {
        return first_name;
    }

    public void setFirstName(String first_name) {
        this.first_name = first_name;
    }

    public String getLastName() {
        return last_name;
    }

    public void setLastName(String last_name) {
        this.last_name = last_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDateRegistered() {
        return date_registered;
    }

    public void setDateRegistered(String date_registered) {
        this.date_registered = date_registered;
    }

}

