{{ config(schema = 'STG_MISC', materialized = 'view') }}

SELECT *
FROM
    {{ source('misc', 'stg_pcd_oa21_lsoa21_msoa21_lad_aug23_uk_lu') }}
