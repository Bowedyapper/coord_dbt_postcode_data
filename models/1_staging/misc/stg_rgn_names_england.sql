{{ config(schema = 'STG_MISC', materialized = 'view') }}

SELECT *
FROM
    {{ source('misc', 'rgn_names_england') }}
