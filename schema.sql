CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15)
);

CREATE TABLE Drivers (
    driver_id INT PRIMARY KEY,
    name VARCHAR(50),
    vehicle VARCHAR(50),
    rating DECIMAL(2,1)
);

CREATE TABLE Rides (
    ride_id INT PRIMARY KEY,
    user_id INT,
    driver_id INT,
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100),
    fare DECIMAL(10,2),
    status VARCHAR(20),
    ride_date DATE,

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (driver_id) REFERENCES Drivers(driver_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    ride_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(20),

    FOREIGN KEY (ride_id) REFERENCES Rides(ride_id)
);
