-- depends_on: {{ ref('stg_grocery_orders') }}
-- depends_on: {{ ref('stg_grocery_orders_incremental') }}

{{ config(
    materialized='incremental',
    unique_key='order_id',
    incremental_strategy='merge'
) }}

{% if is_incremental() %}

SELECT *
FROM {{ ref('stg_grocery_orders_incremental') }}

{% else %}

SELECT *
FROM {{ ref('stg_grocery_orders') }}

{% endif %}