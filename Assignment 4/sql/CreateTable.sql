/*CREATE SCHEMA done_delivery; */

DROP TABLE IF EXISTS OrderItems;
DROP TABLE IF EXISTS Orders; 
DROP TABLE IF EXISTS Membership;
DROP TABLE IF EXISTS Employee; 
DROP TABLE IF EXISTS Driver;
DROP TABLE IF EXISTS CardDetails;
DROP TABLE IF EXISTS Customer; 
DROP TABLE IF EXISTS Menu;
DROP TABLE IF EXISTS Restaurant;  

/*restaurant table*/ 
CREATE TABLE IF NOT EXISTS Restaurant(
	restaurantID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    restaurantName TEXT NOT NULL, 
    street VARCHAR(100) NOT NULL, 
    city VARCHAR(100) NOT NULL, 
    postalCode VARCHAR(7) NOT NULL,
    category VARCHAR(30) DEFAULT NULL,
    rating INT,
    promotion VARCHAR(40) DEFAULT NULL,
    area INT NOT NULL DEFAULT 1
    );


/* Menu table */ 
CREATE TABLE IF NOT EXISTS Menu(
	itemID BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    itemName VARCHAR(100) NOT NULL,
    price DECIMAL(7, 2) NOT NULL,
	category VARCHAR(30), 
	restaurantID INT NOT NULL, 
    FOREIGN KEY(restaurantID) REFERENCES Restaurant(restaurantID) ON DELETE CASCADE ON UPDATE CASCADE
    );

/* Customer tables*/ 
CREATE TABLE IF NOT EXISTS Customer(
	username VARCHAR(20) NOT NULL PRIMARY KEY,
    password VARCHAR(30) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    cardNo BIGINT NOT NULL, 
    phoneNo VARCHAR(20), 
    fName VARCHAR(30), 
    lName VARCHAR(30), 
    street VARCHAR(100) NOT NULL, 
    city VARCHAR(100) NOT NULL, 
    postalCode VARCHAR(7) NOT NULL,
    area INT NOT NULL DEFAULT 1,
    UNIQUE(cardNo), 
    UNIQUE(email)
    ); 

CREATE TABLE IF NOT EXISTS CardDetails(
	cardNo BIGINT NOT NULL PRIMARY KEY, 
    cardName VARCHAR(100) NOT NULL, 
    cvv VARCHAR(3) NOT NULL,
    FOREIGN KEY(cardNo) REFERENCES Customer(cardNo)
    ); 

/*Driver table*/ 
CREATE TABLE IF NOT EXISTS Driver(
	username VARCHAR(20) NOT NULL PRIMARY KEY,
    password VARCHAR(30) NOT NULL, 
    licensePlate VARCHAR(8) NOT NULL, 
    serviceArea INT NOT NULL DEFAULT 1,
    rating INT ,
    available VARCHAR(5) NOT NULL DEFAULT "FALSE", 
    carModel VARCHAR(30) NOT NULL, 
    UNIQUE(licensePlate, serviceArea)
    ); 

/*Employee table*/
CREATE TABLE IF NOT EXISTS Employee(
	username VARCHAR(20)  NOT NULL PRIMARY KEY,
    password VARCHAR(30) NOT NULL, 
    restaurantID INT NOT NULL, 
    FOREIGN KEY(restaurantID) REFERENCES Restaurant(restaurantID)
    ); 
    
/*Membership table*/
CREATE TABLE IF NOT EXISTS Membership(
	membershipID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    mLevel VARCHAR(10) NOT NULL DEFAULT "Bronze", 
    autoPay VARCHAR(1) NOT NULL DEFAULT "N", 
    username VARCHAR(20) NOT NULL,
    UNIQUE(username), 
    FOREIGN KEY(username) REFERENCES Customer(username) 
    ); 

/*Order Tables*/ 
CREATE TABLE IF NOT EXISTS Orders(
	orderNo INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    orderDate VARCHAR(100) NOT NULL, 
    orderTime VARCHAR(8) NOT NULL, 
    price DECIMAL(9,2) NOT NULL, 
    review INT, 
    customer VARCHAR(20) NOT NULL, 
    restaurantID INT NOT NULL, 
    driver VARCHAR(20) NOT NULL, 
    orderstatus VARCHAR(20) NOT NULL DEFAULT "ordered", 
    UNIQUE( orderDate, orderTime, customer), 
    FOREIGN KEY(customer) REFERENCES Customer(username),
    FOREIGN KEY(driver) REFERENCES Driver(username), 
    FOREIGN KEY(restaurantID) REFERENCES Restaurant(restaurantID)
    ); 

CREATE TABLE IF NOT EXISTS OrderItems(
	orderNo INT NOT NULL, 
    itemID BIGINT NOT NULL, 
    amount INT NOT NULL DEFAULT 1, 
    PRIMARY KEY(orderNo, itemID),
    FOREIGN KEY(orderNo) REFERENCES Orders(orderNo),
    FOREIGN KEY(itemID) REFERENCES Menu(itemID)
    );