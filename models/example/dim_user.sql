
{{ config(materialized='table') }}

select last_name, first_name, 18 as age
from {{ source('ak_postgres_db', 'persons') }}