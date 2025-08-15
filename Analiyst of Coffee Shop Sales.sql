#Total Penjualan Packaged Chocolate Di Tiap Jam Transaksi di Toko Astoria
SELECT 
    EXTRACT(HOUR FROM transaction_time) AS Sale_Hour
    , SUM(transaction_qty) AS Total_Quantity_Sold
    , SUM(total_price) AS Total_Revenue
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales` 
WHERE 
    product_category = 'Packaged Chocolate'
    AND store_location = 'Astoria'
GROUP BY 1
ORDER BY 1;

#Rata-rata Penjualan Packaged Chocolate Di Tiap Jam Transaksi di Toko Astoria
SELECT 
    EXTRACT(HOUR FROM transaction_time) AS Sale_Hour
    , AVG(transaction_qty) AS Average_Quantity_Sold
    , AVG(total_price) AS Average_Revenue
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE 
    product_category = 'Packaged Chocolate'
    AND store_location = 'Astoria'
GROUP BY 1
ORDER BY 1;

#Total Penjualan Tipe Produk Packaged Chocolate di Toko Astoria
SELECT
    product_type
    , SUM(transaction_qty) AS Total_Quantity_Sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE
    product_category = 'Packaged Chocolate'
    AND store_location = 'Astoria'
GROUP BY 1
ORDER BY 2 ASC;

#Rata-rata Penjualan Tipe Produk Packaged Chocolate di Toko Astoria
SELECT
    product_type
    , AVG(transaction_qty) AS Average_Quantity_Sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE
    product_category = 'Packaged Chocolate'
    AND store_location = 'Astoria'
GROUP BY 1
ORDER BY 2 ASC;

#Rata-rata Harga Packaged Chocolate
SELECT
    product_type
    , AVG(unit_price) AS Average_Price
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE product_category = 'Packaged Chocolate'
GROUP BY 1
ORDER BY 2;

#Total Penjualan Packaged Chocolate Di Tiap Jam Transaksi
SELECT 
    store_location
    , EXTRACT(HOUR FROM transaction_time) AS Sale_Hour
    , SUM(transaction_qty) AS Total_Quantity_Sold
    , SUM(total_price) AS Total_Revenue
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE 
    product_category = 'Packaged Chocolate'
GROUP BY 1, 2
ORDER BY 2;

#Rata-rata Penjualan Packaged Chocolate Di Tiap Jam Transaksi
SELECT 
    store_location
    , EXTRACT(HOUR FROM transaction_time) AS Sale_Hour
    , SUM(transaction_qty) AS Quantity_Sold
    , AVG(total_price) AS Average_Revenue
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales` 
WHERE 
    product_category = 'Packaged Chocolate'
GROUP BY 1, 2
ORDER BY 2;

#Total Penjualan Tipe Produk Packaged Chocolate
SELECT
    store_location
    , product_type
    , SUM(transaction_qty) AS Total_Quantity_Sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE
    product_category = 'Packaged Chocolate'
GROUP BY 1, 2
ORDER BY 3 ASC;

#Rata-rata Penjualan Tipe Produk Packaged Chocolate
SELECT
    store_location
    , product_type
    , AVG(transaction_qty) AS Average_Quantity_Sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales` 
WHERE
    product_category = 'Packaged Chocolate'
GROUP BY 1, 2
ORDER BY 3 ASC;

#Total Pendapatan Produk Kategori
SELECT
    store_location
    , product_category
    , SUM(total_price) AS Total_Revenue
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales` 
GROUP BY 1, 2
ORDER BY 3 ASC;

SELECT
  FORMAT_DATE('%A', transaction_date) AS day_of_week,
  store_location,
  SUM(transaction_qty) AS total_quantity_sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales` 
WHERE product_category = 'Packaged Chocolate'
GROUP BY day_of_week, store_location, EXTRACT(DAYOFWEEK FROM transaction_date)
ORDER BY EXTRACT(DAYOFWEEK FROM transaction_date);

# Menghitung total nilai transaksi
SELECT store_location, SUM(transaction_qty) AS total_transactions
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE
    product_category = 'Packaged Chocolate'
GROUP BY store_location;

#Rata-rata Penjualan Tipe Produk Packaged Chocolate di Toko Astoria
SELECT
    product_type
    , AVG(transaction_qty) AS Average_Quantity_Sold
FROM `distributed-inn-416112.CapstoneProject.Coffee Shop Sales`
WHERE
    product_category = 'Packaged Chocolate'
    AND store_location = 'Astoria'
GROUP BY 1
ORDER BY 2 ASC;