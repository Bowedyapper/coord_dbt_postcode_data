{{ config(schema='STG_NSUL', materialized='view') }}

SELECT *
FROM
    {{ source('nsul', 'nsul_sw') }}
