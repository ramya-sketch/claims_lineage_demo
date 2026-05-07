{{ config(materialized='view') }}

select
   CITY,
   DISTRICT_ID,
   DIVISION,
   STATE_ABBREV,
   STATE_NAME
from {{ ref('bankdistrict') }}