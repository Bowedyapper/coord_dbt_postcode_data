{{ config(schema='STG_OS_OPEN_DATA', materialized='view') }}

SELECT *
FROM
    {{ source('os_open_data', 'os_open_uprn') }}
