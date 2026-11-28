SELECT *
FROM {{ source('grocery_silver', 'silver_table') }}