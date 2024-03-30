package com.hotel;
import java.time.LocalDate;

public class Renting {
    private int renting_ID;
    private int room_number;
    private String hotel_address;
    private String from_date;
    private String to_date;
    private int customer_id;

    // Constructor
    public Renting(int renting_ID, int room_number, String hotel_address, String from_date, String to_date, int customer_id) {
        this.renting_ID = renting_ID;
        this.room_number = room_number;
        this.hotel_address = hotel_address;
        this.from_date = from_date;
        this.to_date = to_date;
        this.customer_id = customer_id;
    }

    public Renting(int room_number, String hotel_address, String from_date, String to_date, int customer_id) {

        this.room_number = room_number;
        this.hotel_address = hotel_address;
        this.from_date = from_date;
        this.to_date = to_date;
        this.customer_id = customer_id;
    }

    // Getters
    public int getRentingID() {
        return renting_ID;
    }

    public int getRoomNumber() {
        return room_number;
    }

    public String getHotelAddress() {
        return hotel_address;
    }

    public String getFromDate() {
        return from_date;
    }

    public String getToDate() {
        return to_date;
    }

    public int getCustomerID() {
        return customer_id;
    }

    // Setters
    public void setRentingID(int renting_ID) {
        this.renting_ID = renting_ID;
    }

    public void setRoomNumber(int room_number) {
        this.room_number = room_number;
    }

    public void setHotelAddress(String hotel_address) {
        this.hotel_address = hotel_address;
    }

    public void setFromDate(String from_date) {
        this.from_date = from_date;
    }

    public void setToDate(String to_date) {
        this.to_date = to_date;
    }

    public void setCustomerID(int customer_id) {
        this.customer_id = customer_id;
    }

    // Add toString() method if needed for debugging
    @Override
    public String toString() {
        return "Renting{" +
                "renting_ID=" + renting_ID +
                ", room_number=" + room_number +
                ", hotel_address='" + hotel_address + '\'' +
                ", from_date=" + from_date +
                ", to_date=" + to_date +
                ", customer_id=" + customer_id +
                '}';
    }
}

