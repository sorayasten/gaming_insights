with 

source as (

    select * from {{ source('raw', 'sentiment_review') }}

),

renamed as (

    select
        app_id,
        app_name,
        review_text,
        review_score,
        review_votes

    from source

)

select * from renamed