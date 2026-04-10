{{ config(materialized='table') }}

select
    TX_ID,
    CLAIM_ID,
    TX_DATE,
    TX_AMOUNT,
    TX_TYPE,
    TX_CATEGORY,
    CREATED_DATE
from {{ source('claims_lineage_source', 'CLAIM_TX') }}