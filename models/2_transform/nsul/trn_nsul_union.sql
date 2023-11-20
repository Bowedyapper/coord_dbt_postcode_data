{{ config(schema='TRN_NSUL', materialized='view') }}

SELECT *
FROM
    {{ ref('stg_nsul_ee') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_em') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_ln') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_ne') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_nw') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_sc') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_se') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_sw') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_wa') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_wm') }}
UNION ALL
SELECT *
FROM
    {{ ref('stg_nsul_yh') }}
