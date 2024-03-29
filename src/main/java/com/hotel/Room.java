package com.hotel;
public class Room {
    private String hotel_address;
    private int room_number;
    private double price;
    private int capacity;
    private String view;
    private boolean extendable;

    private String hotel_chain_name;

    private int stars;

    public Room(String hotel_address, int room_number, double price, int capacity, String view, boolean extendable, String hotel_chain_name, int stars) {
        this.hotel_address = hotel_address;
        this.room_number = room_number;
        this.price = price;
        this.capacity = capacity;
        this.view = view;
        this.extendable = extendable;
        this.hotel_chain_name = hotel_chain_name;
        this.stars = stars;
    }





    // Constructor
    public Room(String hotel_address, int room_number, double price, int capacity, String view, boolean extendable) {
        this.hotel_address = hotel_address;
        this.room_number = room_number;
        this.price = price;
        this.capacity = capacity;
        this.view = view;
        this.extendable = extendable;
    }

    // Getters
    public String getHotelAddress() {
        return hotel_address;
    }

    public int getRoomNumber() {
        return room_number;
    }

    public double getPrice() {
        return price;
    }

    public int getCapacity() {
        return capacity;
    }

    public String getView() {
        return view;
    }

    public boolean isExtendable() {
        return extendable;
    }

    // Setters
    public void setHotelAddress(String hotel_address) {
        this.hotel_address = hotel_address;
    }

    public void setRoomNumber(int room_number) {
        this.room_number = room_number;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public void setView(String view) {
        this.view = view;
    }

    public void setExtendable(boolean extendable) {
        this.extendable = extendable;
    }

    public String getHotelChainName() {
        return hotel_chain_name;
    }

    public int getStars() {
        return stars;
    }

    public void setHotelChainName(String hotel_chain_name) {
        this.hotel_chain_name = hotel_chain_name;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    // Add toString() method if needed for debugging
    @Override
    public String toString() {
        return "Room{" +
                "hotel_address='" + hotel_address + '\'' +
                ", room_number=" + room_number +
                ", price=" + price +
                ", capacity=" + capacity +
                ", view='" + view + '\'' +
                ", extendable=" + extendable +
                '}';
    }
}
