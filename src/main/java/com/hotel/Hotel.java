package com.hotel;

public class Hotel {

    private String address;
    private int stars;
    private String contact_email;
    private int num_rooms;
    private String hotel_chain_name;

    // Constructor
    public Hotel(String address, int stars, String contact_email, int num_rooms, String hotel_chain_name) {
        this.address = address;
        this.stars = stars;
        this.contact_email = contact_email;
        this.num_rooms = num_rooms;
        this.hotel_chain_name = hotel_chain_name;
    }

    // Getters
    public String getAddress() {
        return address;
    }

    public int getStars() {
        return stars;
    }

    public String getContactEmail() {
        return contact_email;
    }

    public int getNumRooms() {
        return num_rooms;
    }

    public String getHotelChainName() {
        return hotel_chain_name;
    }

    // Setters
    public void setAddress(String address) {
        this.address = address;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    public void setContactEmail(String contact_email) {
        this.contact_email = contact_email;
    }

    public void setNumRooms(int num_rooms) {
        this.num_rooms = num_rooms;
    }

    public void setHotelChainName(String hotel_chain_name) {
        this.hotel_chain_name = hotel_chain_name;
    }

    // Add toString() method if needed for debugging
    @Override
    public String toString() {
        return "Hotel{" +
                "address='" + address + '\'' +
                ", stars=" + stars +
                ", contact_email='" + contact_email + '\'' +
                ", num_rooms=" + num_rooms +
                ", hotel_chain_name='" + hotel_chain_name + '\'' +
                '}';
    }
}

