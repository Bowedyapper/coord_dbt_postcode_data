{{ config(schema = 'STG_MISC', materialized = 'view') }}

SELECT *
FROM
    {{ source('misc', 'pcd_oa21_lsoa21_msoa21_lad_aug23_uk_lu') }}
