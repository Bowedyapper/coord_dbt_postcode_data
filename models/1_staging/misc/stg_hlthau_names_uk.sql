{{ config(schema = 'STG_MISC', materialized = 'view') }}

SELECT *
FROM
    {{ source('misc', 'hlthau_names_uk') }}
