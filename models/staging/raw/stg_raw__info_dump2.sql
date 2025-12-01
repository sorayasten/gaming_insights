with 

source as (

    select * from {{ source('raw', 'info_dump2') }}

),

renamed as (

    select

    from source

)

select * from renamed