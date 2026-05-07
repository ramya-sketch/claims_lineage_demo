{{ config(
    materialized='table',
    transient=false
) }}

select
    DISTRICT_ID,
    DIVISION,
    STATE_NAME
from {{ ref('stg_bankdistrict') }}