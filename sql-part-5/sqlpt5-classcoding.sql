-- create a table
/*
CREATE TABLE Sep2025JunkDB.andres_spillari.Customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    email VARCHAR(100),
    subscription VARCHAR(50),
    join_date DATE DEFAULT GETDATE()
);


INSERT INTO Sep2025JunkDB.andres_spillari.Customers (first_name, last_name, email, subscription)
VALUES ('Ava', 'Rodriguez', 'ava.rodriguez@email.com', 'pro'),
    ('Liam', 'Patel', 'liam.patel@email.com', 'free'),
    ('Noah', 'Chen', 'noah.chen@email.com', 'basic');



    SELECT *
    FROM Sep2025JunkDB.andres_spillari.Customers 



UPDATE Sep2025JunkDB.andres_spillari.Customers
SET email = 'noah.chen@newdomain.com'
WHERE customer_id = 3

SELECT *
FROM Sep2025JunkDB.andres_spillari.Customers
WHERE customer_id = 3

   
--
SELECT *
INTO #payingcustomers
FROM Sep2025JunkDB.andres_spillari.Customers
WHERE subscription <> 'free'

SELECT * FROM #payingcustomers

SELECT customer_id FROM #payingcustomers
--

-- Example of a CTE. Its attached to where you define it, its a "one time use" vs a temp table thats around as long as you're using the system for now
WITH email_users AS (
    SELECT * FROM Sep2025JunkDB.andres_spillari.Customers
    WHERE email LIKE '%email.com%'
)
SELECT * FROM email_users


CREATE TABLE #TempSales (
    sales_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR (100),
    quantity INT,
    sale_date DATE DEFAULT GETDATE()
);

-- inserting data manually
INSERT INTO #TempSales (product_name, quantity)
VALUES ('Notebook', 5), ('Pencil', 20);

-- Look at data
SELECT * FROM #TempSales

CREATE TABLE Sep2025JunkDB.andres_spillari.Orders
(
    order_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT FOREIGN KEY REFERENCES Sep2025JunkDB.andres_spillari.Customers (customer_id),
    order_date DATE DEFAULT GETDATE(),
    total_amount DECIMAL (10,2) -- = how many digits can this # store, how many digits after the decimal 
)


-- Dropping tables deletes and destroys all the table data

DROP TABLE Sep2025JunkDB.andres_spillari.Customers

SELECT * FROM Sep2025JunkDB.andres_spillari.Orders
*/