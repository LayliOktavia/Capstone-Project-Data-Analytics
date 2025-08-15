#Total Penjualan Packaged Chocolate per Jam di Toko Astoria
SELECT 
    EXTRACT(HOUR FROM transaction_time) AS Sale_Hour,
    SUM(transaction_qty) AS Total_Quantity_Sold,
    SUM(total_price) AS Total_Revenue
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales` 
WHERE 
    product_category = 'Packaged Chocolate'
    AND store_location = 'Astoria'
GROUP BY 1
ORDER BY 1;

#Total Penjualan Packaged Chocolate per Hari (Day of Week) per Lokasi
SELECT
  FORMAT_DATE('%A', transaction_date) AS day_of_week,
  store_location,
  SUM(transaction_qty) AS total_quantity_sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales` 
WHERE product_category = 'Packaged Chocolate'
GROUP BY day_of_week, store_location, EXTRACT(DAYOFWEEK FROM transaction_date)
ORDER BY EXTRACT(DAYOFWEEK FROM transaction_date);

#Rata-rata Harga Packaged Chocolate per Tipe Produk
SELECT
    product_type,
    AVG(unit_price) AS Average_Price
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE product_category = 'Packaged Chocolate'
GROUP BY 1
ORDER BY 2;

#otal Penjualan Packaged Chocolate per Tipe Produk di Astoria
SELECT
    product_type,
    SUM(transaction_qty) AS Total_Quantity_Sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE
    product_category = 'Packaged Chocolate'
    AND store_location = 'Astoria'
GROUP BY 1
ORDER BY 2 ASC;
