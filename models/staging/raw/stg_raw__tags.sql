with 

source as (

    select * from {{ source('raw', 'tags') }}

),

renamed as (

    select
        link,
        image,
        long_description,
        short_description,
        publisher,
        ids,
        genre,
        user_tags,
        developer,
        review,
        released,
        title

    from source

)

select * from renamed