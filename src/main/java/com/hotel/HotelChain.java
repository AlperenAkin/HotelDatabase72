package com.hotel;

public class HotelChain {
    private String name;
    private String office_address;

    // Constructor
    public HotelChain(String name, String office_address) {
        this.name = name;
        this.office_address = office_address;
    }

    // Getters
    public String getName() {
        return name;
    }

    public String getOfficeAddress() {
        return office_address;
    }

    // Setters
    public void setName(String name) {
        this.name = name;
    }

    public void setOfficeAddress(String office_address) {
        this.office_address = office_address;
    }

    // Add toString() method if needed for debugging
    @Override
    public String toString() {
        return "HotelChain{" +
                "name='" + name + '\'' +
                ", office_address='" + office_address + '\'' +
                '}';
    }
}

