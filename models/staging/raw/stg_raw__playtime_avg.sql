with 

source as (

    select * from {{ source('raw', 'playtime_avg') }}

),

renamed as (

    select
        initialprice,
        price,
        median_forever,
        discount,
        average_forever,
        owners,
        userscore,
        appid,
        negative,
        positive,
        median_2weeks,
        score_rank,
        ccu,
        developer,
        publisher,
        average_2weeks,
        name,
        unnamed: 0

    from source

)

select * from renamed