{{ config(schema = 'STG_NSPL', materialized = 'view') }}

SELECT *
FROM
    {{ source('nspl', 'nspl21_uk') }}
