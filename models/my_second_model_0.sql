-- Use the `ref` function to select from other models
-- v0
{{
  config(
    tags=["my_tag"]
  )
}}

select *
from {{ ref('my_first_dbt_model') }}
--where id = 1
--end sql example
