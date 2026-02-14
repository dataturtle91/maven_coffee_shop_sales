-- Maven Coffee Shop Sales
-- Store location empty values check
-- Maven Coffee Shop Sales
-- Table contains 149 116 rows
-- Empty value check

SELECT
	'transaction_id' AS _variable
	,COUNT(DISTINCT transaction_id) AS _unique
	,(SELECT COUNT(transaction_id) FROM sales WHERE transaction_id IS NULL) AS _null
	
FROM sales

UNION ALL 

SELECT
	'transaction_date' 
	,COUNT(DISTINCT transaction_date)
	,(SELECT COUNT(transaction_date) FROM sales WHERE transaction_date IS NULL)
	
FROM sales

UNION ALL 

SELECT
	'transaction_time' 
	,COUNT(DISTINCT transaction_time) 
	,(SELECT COUNT(transaction_time) FROM sales WHERE transaction_time IS NULL) 
	
FROM sales

UNION ALL 

SELECT
	'transaction_qty' 
	,COUNT(DISTINCT transaction_qty)
	,(SELECT COUNT(transaction_qty) FROM sales WHERE transaction_qty IS NULL)
	
FROM sales

UNION ALL 

SELECT
	'store_id' 
	,COUNT(DISTINCT store_id) 
	,(SELECT COUNT(store_id) FROM sales WHERE store_id IS NULL) 
	
FROM sales

UNION ALL 

SELECT
	'store_location'
	,COUNT(DISTINCT store_location)
	,(SELECT COUNT(store_location) FROM sales WHERE store_location IS NULL)
	
FROM sales

UNION ALL 

SELECT
	'product_id'
	,COUNT(DISTINCT product_id)
	,(SELECT COUNT(product_id) FROM sales WHERE product_id IS NULL)
	
FROM sales

UNION ALL 

SELECT
	'unit_price'
	,COUNT(DISTINCT unit_price)
	,(SELECT COUNT(unit_price) FROM sales WHERE unit_price IS NULL)
	
FROM sales

UNION ALL 

SELECT
	'product_category'
	,COUNT(DISTINCT product_category) 
	,(SELECT COUNT(product_category) FROM sales WHERE product_category IS NULL) 
	
FROM sales

UNION ALL

SELECT
	'product_type'
	,COUNT(DISTINCT product_type) 
	,(SELECT COUNT(product_type) FROM sales WHERE product_type IS NULL) 
	
FROM sales

UNION ALL

SELECT
	'product_detail'
	,COUNT(DISTINCT product_detail)
	,(SELECT COUNT(product_detail) FROM sales WHERE product_detail IS NULL)

FROM 
	sales;



-- All variables do not contain empty values. 
-- Variables that should contain unique values ​​do not contain duplicates
