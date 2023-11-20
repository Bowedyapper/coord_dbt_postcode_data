{{ config(schema = 'STG_ONSPD', materialized = 'view') }}

SELECT *
FROM
    {{ source('onspd', 'onspd_uk') }}
