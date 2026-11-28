{% snapshot snap_grocery_orders %}

{{
    config(
        target_schema='snapshot',
        unique_key='order_id',
        strategy='check',
        check_cols=[
            'order_date',
            'customer_id',
            'customer_name',
            'city',
            'product_name',
            'category',
            'quantity',
            'unit_price',
            'discount',
            'delivery_status',
            'net_sales'
        ]
    )
}}

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

FROM {{ ref('stg_grocery_orders') }}

{% endsnapshot %}