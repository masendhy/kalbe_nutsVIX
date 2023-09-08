
-- query 􏰁 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT 
CASE 
    WHEN "Marital Status" ='' THEN 'Unknown'  
    ELSE  "Marital Status"
END as marital_status,
round(Avg(age),2) as average_age
FROM customer
GROUP BY marital_status
ORDER BY average_age DESC;

--query 􏰂 : Berapa rata-rata umur customer jika dilihat dari gender nya ?

