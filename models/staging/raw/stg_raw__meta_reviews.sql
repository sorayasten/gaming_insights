with 

source as (

    select * from {{ source('raw', 'meta_reviews') }}

),

renamed as (

    select
        review_type,
        author,
        score,
        quote,
        platform,
        title,
        date,
        publicationname,
        id

    from source

)

select * from renamed