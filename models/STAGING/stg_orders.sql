select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice-o.ordercostprice as orderprofit,
c.customername,
c.segment,
c.country,
p.category,
p.productname,
p.subcategory
from {{ ref('RAW_ORDERS') }} as o 
left join {{ ref('raw_customers') }} c on o.customerid=c.customerid
left join {{ ref('raw_products') }} as p on o.productid=p.productid
