{{ config(schema = 'STG_MISC', materialized = 'view') }}

SELECT *
FROM
    {{ source('misc', 'ttwa_names_uk') }}
