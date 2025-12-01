with 

source as (

    select * from {{ source('raw', 'metacritic') }}

),

renamed as (

    select
        developer,
        platform_metascores,
        publisher,
        userscore_sentiment,
        title,
        releasedate,
        metascore_sentiment,
        metascore_count,
        metascore,
        description,
        genres,
        id,
        userscore_count,
        rating,
        userscore,
        platforms

    from source

)

select * from renamed