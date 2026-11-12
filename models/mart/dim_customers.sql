{{
    config(
        materialized='view'
    )
}}
 with
 customers as(
    select * from {{ ref('stg_jaffle_shop__customers') }}
 ),
 orders as(
    select * from {{ ref('stg_jaffle_shop__orders') }}
 ) select * from customers left join orders using (id)