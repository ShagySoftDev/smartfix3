-- Database schema for SmartFix
CREATE DATABASE smartfix;
USE smartfix;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE complaints (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(100),
  issue TEXT,
  status VARCHAR(20) DEFAULT 'Pending'
);

CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(100),
  amount DECIMAL(10,2),
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
