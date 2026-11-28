{% snapshot snap_grocery_orders %}

{{
    config(
        target_schema='snapshot',
        unique_key='order_id',
        strategy='check',
        check_cols=['customer_name', 'city', 'product_name', 'category',
                    'quantity', 'unit_price', 'discount', 'delivery_status']
    )
}}

SELECT *
FROM {{ ref('int_grocery_orders_merged') }}

{% endsnapshot %}