{{ config(schema='DIM_POSTCODE', materialized='view') }}

SELECT
    open_uprn.unique_property_reference_number
    , nsul.postcode
    , open_uprn.latitude
    , open_uprn.longitude
FROM
    {{ ref('trn_os_open_uprn') }} AS open_uprn
    LEFT JOIN
        {{ ref('trn_nsul') }} AS nsul
        ON open_uprn.unique_property_reference_number = nsul.unique_property_reference_number
