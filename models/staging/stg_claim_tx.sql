{{ config(materialized='view') }}

select *
from {{ source('claims_lineage_source', 'CLAIM_TX') }}