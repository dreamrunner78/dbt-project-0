--select id, user_name from users

--select * from {{ source('source', 'users') }}

with 

source as (
  select * from {{ source('source', 'users') }}
),

transformed as (

  select 

    id as customer_id,
    user_name as customer_last_name,
    email as mail,
    user_name || ' toototo ' as full_name

  from source

)

select * from transformed