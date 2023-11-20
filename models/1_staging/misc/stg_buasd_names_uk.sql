{{ config(schema = 'STG_MISC', materialized = 'view') }}

SELECT *
FROM
    {{ source('misc', 'buasd_names_uk') }}
