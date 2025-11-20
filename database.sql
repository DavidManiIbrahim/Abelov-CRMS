-- Abelov CRMS Database Schema and Mock Data
-- Database: abelov
-- Created: November 20, 2025

-- Create Database
CREATE DATABASE IF NOT EXISTS abelov;
USE abelov;

-- Create Users Table (for storing customer and device registration data)
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    device_type VARCHAR(50) NOT NULL,
    registration_date DATETIME NOT NULL,
    device_name VARCHAR(100) NOT NULL,
    problem TEXT NOT NULL,
    charger VARCHAR(10) NOT NULL,
    storage_type VARCHAR(20) NOT NULL,
    storage_size VARCHAR(50) NOT NULL,
    ram_type VARCHAR(20) NOT NULL,
    ram_size VARCHAR(50) NOT NULL,
    amount_paid DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert Mock Data
INSERT INTO users (customer_name, phone_number, device_type, registration_date, device_name, problem, charger, storage_type, storage_size, ram_type, ram_size, amount_paid) VALUES

-- Customer 1
('John Smith', '08012345678', 'laptop', '2025-11-15 10:30:00', 'Dell XPS 13', 'Screen flickering and display issues', 'yes', 'ssd', '512GB', 'pc4', '8GB', 45000.00),

-- Customer 2
('Mary Johnson', '09087654321', 'desktop', '2025-11-16 14:20:00', 'HP Pavilion Desktop', 'Hard drive making clicking sounds', 'yes', 'hdd', '1TB', 'pc3', '16GB', 35000.00),

-- Customer 3
('Ahmad Hassan', '07012223334', 'playstation', '2025-11-17 09:15:00', 'PlayStation 4', 'Controller not connecting properly', 'yes', 'ssd', '500GB', 'none', 'N/A', 25000.00),

-- Customer 4
('Zainab Ali', '08145556666', 'laptop', '2025-11-18 11:45:00', 'Lenovo ThinkPad', 'Battery not charging, kernel panic issues', 'no', 'ssd', '256GB', 'pc3', '8GB', 50000.00),

-- Customer 5
('David Okafor', '09099887766', 'xbox', '2025-11-19 13:20:00', 'Xbox Series X', 'Overheating and game crashes', 'yes', 'ssd', '1TB', 'none', 'N/A', 15000.00),

-- Customer 6
('Chioma Nwankwo', '07055554444', 'laptop', '2025-11-14 16:30:00', 'MacBook Pro', 'Keyboard not responding, trackpad issues', 'yes', 'ssd', '256GB', 'pc4', '8GB', 55000.00),

-- Customer 7
('Michael Thompson', '08033332222', 'desktop', '2025-11-13 08:00:00', 'ASUS PC', 'Cannot boot up, white screen', 'yes', 'hdd', '2TB', 'pc4', '32GB', 40000.00),

-- Customer 8
('Amara Adeyemi', '09044445555', 'playstation', '2025-11-12 15:45:00', 'PlayStation 5', 'Disc read error', 'yes', 'ssd', '825GB', 'none', 'N/A', 22000.00),

-- Customer 9
('Samuel Eze', '07066667777', 'others', '2025-11-11 10:00:00', 'Tablet', 'Screen cracked, touch not working', 'no', 'ssd', '128GB', 'none', 'N/A', 18000.00),

-- Customer 10
('Blessing Obi', '08077778888', 'laptop', '2025-11-10 12:30:00', 'HP Pavilion 15', 'Slow performance, fan noise', 'yes', 'hdd', '500GB', 'pc3', '4GB', 30000.00);

-- Create Indexes for better query performance
CREATE INDEX idx_customer_name ON users(customer_name);
CREATE INDEX idx_phone_number ON users(phone_number);
CREATE INDEX idx_device_type ON users(device_type);
CREATE INDEX idx_registration_date ON users(registration_date);

-- Verify the data
SELECT COUNT(*) as total_records FROM users;
SELECT * FROM users LIMIT 5;
