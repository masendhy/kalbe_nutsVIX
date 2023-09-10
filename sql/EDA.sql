
-- query 1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT 
CASE 
    WHEN "Marital Status" ='' THEN 'Unknown'  
    ELSE  "Marital Status"
END as marital_status,
round(Avg(age),2) as average_age
FROM customer
GROUP BY marital_status
ORDER BY average_age DESC;

--query 2 : Berapa rata-rata umur customer jika dilihat dari gender nya ?

SELECT
CASE 
    WHEN Gender = 0 THEN 'female'
    WHEN Gender = 1 THEN 'male'
END as gender_label,
round(Avg(age),2) as average_age
FROM customer
GROUP BY gender_label
ORDER BY average_age DESC;

--query 3 : Tentukan nama store dengan total quantity terbanyak!

with table_1 as (
    SELECT
    store.storename,
    transaction.qty
    from store JOIN transaction on transaction.storeid = store.storeid
)
SELECT storename, sum(qty) as total_qty
FROM table_1
GROUP BY storename
ORDER BY total_qty DESC;

--query 4 : Tentukan nama produk terlaris dengan total amount terbanyak!

with table_1 as (
    SELECT
    product."Product Name",
    transaction.totalamount
    from product JOIN transaction on transaction.productid = product.productid
)
SELECT "Product Name", 
sum(totalamount) as total_amount
FROM table_1
GROUP BY "Product Name"
ORDER BY total_amount DESC;