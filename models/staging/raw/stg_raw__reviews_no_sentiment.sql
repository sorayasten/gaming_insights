with 

source as (

    select * from {{ source('raw', 'reviews_no_sentiment') }}

),

renamed as (

    select
        release_date,
        price,
        timestamp_created,
        votes_up,
        name,
        votes_funny,
        voted_up,
        author_playtime_forever,
        word_count,
        review,
        appid

    from source

)

select * from renamed