-- Maven Coffee Shop Sales
-- Store location empty values check
SELECT
	'store_location' AS _variable
	,COUNT(DISTINCT store_location) AS _unique
	,(SELECT COUNT(store_location) FROM sales WHERE store_location IS NULL) AS _null
	
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

