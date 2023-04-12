--Create a product table containing following columns
--ProductId Primary Key & should be auto increment
--Product Name (should be 500 character max)

--categroy
--Price (Should not allow to enter negative) values

--Once you are done with creation of table
--add one more column called description

--add 10 records of products and perform below query

--Write a Query to List all the products belonging to health category
--Write a Query to get total price of all products
--Write a query to display product in descending order of price
--Write a Query to display category wise product count having price greater than  10000


CREATE TABLE tbl_Product (
ProductId INT IDENTITY(1,1) PRIMARY KEY,
Product_Name VARCHAR(500),
Category VARCHAR (20),
PRICE INT NOT NULL CHECK (PRICE >=0) 
)

ALTER TABLE tbl_Product 
ADD Description VARCHAR(50)

INSERT INTO tbl_Product (Product_Name,Category,PRICE,Description) VALUES
('Key Board','Electronic',850,'Logitech Gen-7 Smoth'),
('Amul Gold','Grocery',32,'Amul Gold Fresh Milk '),
('Notebook','Stationary',55,'A Claasmate Fully White Hard Pages Note Book'),
('Titan Watch','Fashion',35000,'A TATA Company Watch '),
('Thermo Meter','Helth Care',550,'A Thermo Meter version M23o'),
('Head Phone','Electronic',1250,'Sony Version - 8 Head Phone'),
('Bread','Grocery',40,'Wheet Brown Bread'),
('Evion','Helth Care',120,'A Vitamin - E Tablet'),
('Key Board','Electronic',850,'Logitech Gen-7 Smoth'),
('Zandu pain Relief Balm','Helth Care',230,'A Zandu Product')


--Write a Query to List all the products belonging to health category

SELECT * FROM tbl_Product WHERE Category = 'Helth Care'


-- Write a Query to get total price of all products

SELECT SUM(PRICE) as 'Total Price' FROM tbl_Product



--Write a query to display product in descending order of price

SELECT * FROM tbl_Product ORDER BY PRICE DESC



--Write a Query to display category wise product count having price greater than  10000

 
 SELECT Category , COUNT(*) AS 'Product Count' from tbl_Product WHERE  PRICE > 1000 GROUP BY Category  