select
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    {{get_date_parts("Order_Date")}} as date_extract
from
    raw.Orders o
JOIN
{{ref("stg_customers")}} c on o.Customer_ID=c.Customer_ID
JOIN
    raw.Products p on o.Product_ID=p.Product_ID