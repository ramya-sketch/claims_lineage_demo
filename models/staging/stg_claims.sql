{{ config(materialized='table') }}

select *
from {{ source('claims_lineage_source', 'CLAIM') }}