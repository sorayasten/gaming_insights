with 

source as (

    select * from {{ source('raw', 'game_time_monthly') }}

),

renamed as (

    select
        steam_appid,
        name,
        peak_players,
        gain,
        gain_percent,
        avg_players,
        month

    from source

)

select * from renamed