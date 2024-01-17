show databases;

use online_retail_db;

-- delete products that have not been sold
delete from products
where not exists(
select 1
from purchase_detail
where purchase_detail.product_id = products.product_id
);