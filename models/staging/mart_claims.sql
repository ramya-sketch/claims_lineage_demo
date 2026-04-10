{{ config(materialized='table') }}

select *
from {{ ref('stg_claims') }} c
join {{ ref('stg_claim_tx') }} t
  on c.claim_id = t.claim_id