# Write your MySQL query statement below
SELECT p.product_id, ROUND(COALESCE(SUM(p.price*u.units)/SUM(u.units), 0), 2) AS average_price
-- AS product_id is in both table and we need from price table only i.e. p.product_id
-- To make it round till 2 decimal, we are using ROUND(.., 2) here
-- normal AVG(..) is not appropriate here as avg price will be decided on (product price*how many units sold)/how many units sold
-- and product price given in p table i.e. p.price and units in u table i.e. u.units
-- after joining there will be NULL for price if a product is not sold, but we need 0 here, so we are using COALESCE(Value, 0) i.e. if value exists then value ow 0
FROM Prices AS p
LEFT JOIN UnitsSold AS u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
-- prices vary according to the date range so we need purchase date to check what is the price on that day for the product
GROUP BY p.product_id;
-- there can be multiple same row for single product_id but we need only one avg price for one product_id, so we need GROUP BY