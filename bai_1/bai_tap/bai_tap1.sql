use classicmodels;
alter table customers
	drop customerName;
ALTER TABLE customers
ADD COLUMN ABC INT(10)
 UNSIGNED NOT NULL AFTER PHONE;
SELECT * FROM customers 
WHERE customername like '%A%';
SELECT * FROM customers
 WHERE city IN ('Nantes',' Las Vegas',' Warszawa','NYC') ;