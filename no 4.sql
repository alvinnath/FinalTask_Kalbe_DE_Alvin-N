-- Create New Database 
CREATE DATABASE Kalbe;

-- Create Table Inventory
CREATE TABLE Inventory (
	Item_code INT NOT NULL,
	Item_name VARCHAR(50) NOT NULL,
	Item_price INT NOT NULL,
	Item_total INT NOT NULL,
	CONSTRAINT PK_Inventory PRIMARY KEY (Item_code)
);

-- Insert Values to Table Inventory
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES (2341, 'Promag Tablet', 3000, 100),
	   (2342, 'Hydro Coco 250ML', 7000, 10),
	   (2343, 'Nutrive Benecol 100ML', 20000, 30),
	   (2344, 'Blackmores Vit C 500Mg', 95000, 45),
	   (2345, 'Entrasol Gold 370G', 90000, 120);

-- Show Item_name that has the highest number in Item_total
SELECT Item_name
FROM Inventory
WHERE Item_total = (SELECT MAX(Item_total) FROM Inventory);

-- Update the Item_price of the output of question bullet
UPDATE Inventory
SET Item_price = 9000
WHERE Item_name = 'Entrasol Gold 370G';

-- What will happen if we insert another Item_name with Item_code of 2343 into the table? 
'If you try to insert an Item with an existing Item_code (in this case 2343), 
you will receive an error because Item_code is the primary key of the table and must be unique. 
Therefore, the INSERT operation will fail.'

-- Delete the Item_name that has the lowest number of Item_total
DELETE FROM Inventory WHERE Item_total = (SELECT MIN(Item_total) FROM Inventory);