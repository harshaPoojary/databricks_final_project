SELECT
    order_id,
    order_date,
    customer_id,
    customer_name,
    city,
    product_name,
    category,
    quantity,
    unit_price,
    discount,
    delivery_status,
    batch_id,
    source,
    ingestion_time,
    net_sales
FROM {{ source('grocery_silver', 'silver_table') }}