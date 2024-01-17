show databases;

use online_retail_db;

-- retrieve all customers
select * from customer;

-- retrieve products that are frequently purchased
select prod.product_id,
    prod.product_name,
    COUNT(pur_det.product_id) as purchase_count
from
    products prod
join
    purchase_detail pur_det on prod.product_id = pur_det.product_id
join
    purchase pur on pur_det.purchase_id = pur.purchase_id
group by 
    prod.product_id, prod.product_name
order by 
    purchase_count desc;