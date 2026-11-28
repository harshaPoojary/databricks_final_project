SELECT *
FROM {{ source('grocery_silver', 'cleaned_incremental') }}