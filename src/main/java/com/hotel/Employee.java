package com.hotel;
public class Employee {

    private int employee_id;
    private String ssn;
    private String first_name;
    private String last_name;
    private String address;

    // Constructor
    public Employee(int employee_id, String ssn, String first_name, String last_name, String address) {
        this.employee_id = employee_id;
        this.ssn = ssn;
        this.first_name = first_name;
        this.last_name = last_name;
        this.address = address;
    }

    // Getters
    public int getEmployeeId() {
        return employee_id;
    }

    public String getSsn() {
        return ssn;
    }

    public String getFirstName() {
        return first_name;
    }

    public String getLastName() {
        return last_name;
    }

    public String getAddress() {
        return address;
    }

    // Setters
    public void setEmployeeId(int employee_id) {
        this.employee_id = employee_id;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

    public void setFirstName(String first_name) {
        this.first_name = first_name;
    }

    public void setLastName(String last_name) {
        this.last_name = last_name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    // Add toString() method if needed for debugging
    @Override
    public String toString() {
        return "Employee{" +
                "employee_id=" + employee_id +
                ", ssn='" + ssn + '\'' +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

