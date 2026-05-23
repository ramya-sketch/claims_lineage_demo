{{ config(materialized='table') }}
select CLAIM_ID,
 POLICY_NUMBER, 
 CLAIM_DATE, 
 CLAIM_TYPE, 
 STATE, 
 STATUS, 
 REPORTED_DATE, 
 ACCIDENT_DATE, 
 CREATED_DATE, 
 UPDATED_DATE
from {{ source('claims_lineage_source', 'CLAIM') }}