
CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  id VARCHAR(50),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(255),
  date_registered DATE
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    ssn VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address VARCHAR(255)
);

-- Hotel_Chain Table
CREATE TABLE Hotel_Chain (
    name VARCHAR(255) PRIMARY KEY,
    office_address VARCHAR(255)
);

-- Hotel Table
CREATE TABLE Hotel (
    address VARCHAR(255) PRIMARY KEY,
    stars INT CHECK (star_rating BETWEEN 1 AND 5),
    contact_email VARCHAR(255),
    num_rooms INT,
    hotel_chain_name VARCHAR(255),
    FOREIGN KEY (hotel_chain_name) REFERENCES Hotel_Chain(name)
);

CREATE TABLE Manages (
    hotel_address VARCHAR(255),
    employee_id INT,
    FOREIGN KEY (hotel_address) REFERENCES Hotel(address),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    PRIMARY KEY (hotel_address, employee_id)
);

CREATE TABLE Works_For (
    hotel_address VARCHAR(255),
    employee_id INT,
    role VARCHAR(255),
    FOREIGN KEY (hotel_address) REFERENCES Hotel(address),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    PRIMARY KEY (hotel_address, employee_id)
);

CREATE TABLE Booking (
  booking_id INT PRIMARY KEY,
  room_number INT,
  hotel_address VARCHAR(255),
  from_date DATE,
  to_date DATE,
  customer_id INT,
  FOREIGN KEY (hotel_address) REFERENCES Hotel(address)
);

CREATE TABLE Renting (
  renting_id INT PRIMARY KEY,
  room_number INT,
  hotel_address VARCHAR(255),
  from_date DATE,
  to_date DATE,
  customer_id INT,
  FOREIGN KEY (hotel_address) REFERENCES Hotel(address)
);

CREATE TABLE Reserves (
  customer_id INT,
  booking_id INT,
  deposit DECIMAL(10, 2),
  PRIMARY KEY (customer_id, booking_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

CREATE TABLE Pays_For (
  customer_id INT,
  employee_id INT,
  renting_id INT,
  date DATE,
  amount DECIMAL(10, 2),
  PRIMARY KEY (customer_id, renting_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (renting_id) REFERENCES Renting(renting_id)
);

CREATE TABLE Checks_In (
  customer_id INT,
  employee_id INT,
  booking_id INT,
  renting_id INT,
  date DATE,
  PRIMARY KEY (customer_id, renting_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
  FOREIGN KEY (renting_id) REFERENCES Renting(renting_id)
);

CREATE TABLE Room (
  hotel_address VARCHAR(255),
  room_number INT,
  price DECIMAL(10, 2),
  capacity INT INT CHECK (capacity > 0),
  view VARCHAR(50),
  extendable BOOLEAN,
  PRIMARY KEY (hotel_address, room_number),
  FOREIGN KEY (hotel_address) REFERENCES Hotel(address)
);

CREATE TABLE Archive (
  address VARCHAR(255),
  record_date DATE,
  booking_id INT,
  renting_id INT,
  PRIMARY KEY (booking_id, renting_id),
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
  FOREIGN KEY (renting_id) REFERENCES Renting(renting_id)
);





