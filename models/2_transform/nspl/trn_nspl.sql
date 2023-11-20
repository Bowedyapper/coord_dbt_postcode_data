{{ config(schema = 'TRN_NSPL', materialized = 'view') }}

WITH
    nspl AS (
        SELECT *
        FROM
            {{ ref('stg_nspl') }}
    )

SELECT
    oseast1m                                                           AS easting
    , osnrth1m                                                         AS northing
    , osgrdind                                                         AS grid_reference_quality
    , oa21                                                             AS output_area_code
    , cty                                                              AS county
    , ced                                                              AS county_electoral_division
    , laua                                                             AS local_authority_district
    , ward                                                             AS electoral_ward
    , nhser                                                            AS nhs_england_region
    , ctry                                                             AS country
    , rgn                                                              AS region
    , pcon                                                             AS westminster_parliamentary_constituency
    , ttwa                                                             AS travel_to_work_area
    , itl                                                              AS international_territorial_level
    , npark                                                            AS national_park
    , lsoa21                                                           AS lower_layer_super_output_area
    , msoa21                                                           AS middle_layer_super_output_area
    , wz11                                                             AS workplace_zone
    , sicbl                                                            AS sub_icb_location
    , bua22                                                            AS built_up_area
    , ru11ind                                                          AS rural_urban_classification
    , oac11                                                            AS output_area_classification
    , lat                                                              AS latitude
    , long                                                             AS longitude
    , lep1                                                             AS local_enterprise_partnership_first
    , lep2                                                             AS local_enterprise_partnership_second
    , pfa                                                              AS police_force_area
    , imd                                                              AS index_of_multiple_deprivation
    , icb                                                              AS integrated_care_board
    , regexp_replace(pcds, '\s+', ' ', 'g')                            AS postcode
    , CASE WHEN usertype = '0' THEN 'Small User' ELSE 'Large User' END AS user_type
    , to_char(to_date(dointr, 'YYYYMM'), 'FMMon YYYY')                 AS date_of_introduction
    , to_char(to_date(dointr, 'YYYYMM'), 'FMMon YYYY')                 AS date_of_termination
FROM
    nspl
