with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        CONCAT(date_date,orders_id) AS primary_key,
        pdt_id AS products_id,
        revenue,
        quantity

    from source

)

select * from renamed
