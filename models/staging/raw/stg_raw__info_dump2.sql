with 

source as (

    select * from {{ source('raw', 'info_dump2') }}

),

renamed as (

    select

        release_date,
        achievements,
        movies,
        support_info,
        screenshots,
        genres,
        categories,
        platforms,
        package_groups,
        about_the_game,
        website,
        demos,
        ext_user_account_notice,
        drm_notice,
        legal_notice,
        linux_requirements,
        developers,
        mac_requirements,
        supported_languages,
        fullgame,
        metacritic,
        detailed_description,
        header_image,
        required_age,
        is_free,
        type,
        packages,
        price_overview,
        publishers,
        background,
        name,
        content_descriptors,
        recommendations,
        short_description,
        pc_requirements,
        reviews,
        controller_support,
        steam_appid,
        dlc

    from source

)

select * from renamed