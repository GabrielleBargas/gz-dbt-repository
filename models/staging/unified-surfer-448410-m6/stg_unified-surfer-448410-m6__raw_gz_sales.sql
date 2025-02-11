with 

source as (

    select * from {{ source('unified-surfer-448410-m6', 'raw_gz_sales') }}

),

renamed as (

    select orders_id
    ,shipping_fee
    ,shipping_fee_1
    ,logCost
    ,ship_cost

    from source

)

select * from renamed
