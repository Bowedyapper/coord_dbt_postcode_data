{{ config(schema = 'TRN_NSPL', materialized = 'view') }}

SELECT
    easting
    , northing
    , grid_reference_quality
    , output_area_code
    , county
    , county_electoral_division
    , local_authority_district
    , electoral_ward
    , nhs_england_region
    , country
    , region
    , westminster_parliamentary_constituency
    , travel_to_work_area
    , international_territorial_level
    , national_park
    , lower_layer_super_output_area
    , middle_layer_super_output_area
    , workplace_zone
    , sub_icb_location
    , built_up_area
    , rural_urban_classification
    , output_area_classification
    , latitude
    , longitude
    , local_enterprise_partnership_first
    , local_enterprise_partnership_second
    , police_force_area
    , index_of_multiple_deprivation
    , integrated_care_board
    , regexp_replace(postcode, '\s+', ' ', 'g')
        AS postcode
    , CASE WHEN user_type = '0' THEN 'Small User' ELSE 'Large User' END
        AS user_type
    , to_char(to_date(date_of_introduction, 'YYYYMM'), 'FMMon YYYY')
        AS date_of_introduction
    , to_char(to_date(date_of_termination, 'YYYYMM'), 'FMMon YYYY')
        AS date_of_termination

FROM
    {{ ref('trn_nspl_rename') }}
