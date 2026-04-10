{{ config(materialized='view') }}

select
    c.CLAIM_ID,
    c.CLAIM_NUMBER,
    c.POLICY_NUMBER,
    c.CLAIM_DATE,
    c.CLAIM_TYPE,
    c.STATE,
    c.STATUS,
    c.REPORTED_DATE,
    c.ACCIDENT_DATE,

    t.TX_ID,
    t.TX_DATE,
    t.TX_AMOUNT,
    t.TX_TYPE,
    t.TX_CATEGORY

from {{ ref('stg_claims') }} c
left join {{ ref('stg_claim_tx') }} t
    on c.CLAIM_ID = t.CLAIM_ID