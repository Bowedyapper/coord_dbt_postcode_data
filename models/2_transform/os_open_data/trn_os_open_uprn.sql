{{ config(schema='TRN_OS_OPEN_DATA', materialized='view') }}

SELECT
    uprn           AS unique_property_reference_number
    , x_coordinate AS easting
    , y_coordinate AS northing
    , latitude
    , longitude

FROM
    {{ ref('stg_os_open_uprn') }}
