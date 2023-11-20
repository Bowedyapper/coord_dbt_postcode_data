{{ config(schema='TRN_NSUL', materialized='view') }}

SELECT
    uprn       AS unique_property_reference_number
    , gridgb1e AS postcode_easting_to_1m
    , gridgb1n AS postcode_northing_to_1m
    , pcds     AS postcode
FROM
    {{ ref('trn_nsul_union') }}
