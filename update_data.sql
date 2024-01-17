show databases;

use online_retail_db;

-- update product price (10% diccoount)
update products
set product_price = product_price*0.9
where product_id = 8;

-- update purchase detail
update purchase_detail 
set quantity = 4
where detail_id = 31;