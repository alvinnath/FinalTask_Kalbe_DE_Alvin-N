-- Dimension Table 1: product table
CREATE TABLE product(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(50),
    manufacturer VARCHAR(100)
);

-- Dimension Table 2: customer table
CREATE TABLE customer(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    gender VARCHAR(1),
    age INT,
    address VARCHAR(150),
    phone VARCHAR(20)
);

-- Dimension Table 3: salesperson table:
CREATE TABLE salesperson(
    salesperson_id INT PRIMARY KEY,
    salesman_name VARCHAR(150),
    department VARCHAR(100)
);

-- Dimension Table 4: location table
CREATE TABLE location(
    location_id INT PRIMARY KEY,
    country VARCHAR(100),
    city VARCHAR(100),
    region VARCHAR(100)
);

-- Dimension Table 5: time table
CREATE TABLE time(
    time_id INT PRIMARY KEY,
    date DATE,
    day VARCHAR(15),
    week INT,
    month INT,
    year INT
);

-- Sales Table
CREATE TABLE sales(
    sales_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    salesperson_id INT,
    location_id INT,
    time_id INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id),
    FOREIGN KEY (time_id) REFERENCES time(time_id)
);