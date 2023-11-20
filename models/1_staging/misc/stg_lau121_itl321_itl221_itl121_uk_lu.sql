{{ config(schema = 'STG_MISC', materialized = 'view') }}

SELECT *
FROM
    {{ source('misc', 'lau121_itl321_itl221_itl121_uk_lu') }}
