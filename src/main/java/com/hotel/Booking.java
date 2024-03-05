package com.hotel;


public class Booking {

    private int booking_id;
    private int room_number;
    private String hotel_address;
    private String from_date;
    private String to_date;
    private int customer_id;

    public Booking(int booking_id, int room_number, String hotel_address, String from_date, String to_date, int customer_id) {
        this.booking_id = booking_id;
        this.room_number = room_number;
        this.hotel_address = hotel_address;
        this.from_date = from_date;
        this.to_date = to_date;
        this.customer_id = customer_id;
    }

    // Getters
    public int getBookingId() {
        return booking_id;
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

    public int getCustomerId() {
        return customer_id;
    }

    // Setters
    public void setBookingId(int booking_id) {
        this.booking_id = booking_id;
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

    public void setCustomerId(int customer_id) {
        this.customer_id = customer_id;
    }

    // Add toString() method if needed for debugging
    @Override
    public String toString() {
        return "Booking{" +
                "booking_id=" + booking_id +
                ", room_number=" + room_number +
                ", hotel_address='" + hotel_address + '\'' +
                ", from_date=" + from_date +
                ", to_date=" + to_date +
                ", customer_id=" + customer_id +
                '}';
    }
}

