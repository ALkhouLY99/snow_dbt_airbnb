{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

with src_reviews as(
    select 
    {{dbt_utils.generate_surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_text'])}} as review_id,
    * 
    from {{ref('src_reviews')}}
)
    select * from src_reviews
    where review_text is not null

    
    {% if is_incremental() %}
        {% if var("start_date", False) and var("end_date", False) %}
            {{ log("Loading " ~ this ~ " incrementally (start_date: " ~ var("start_date") ~ ", end_date: " ~ var("end_date") ~ ")", info=True) }}
            AND review_date >= '{{ var("start_date") }}'
            AND review_date < '{{ var("end_date") }}'
        {% else %}
            AND review_date > (SELECT MAX(review_date) FROM {{ this }})
            {{ log("Loading " ~ this ~ " incrementally (all missing dates)", info=True) }}
        {% endif %}
    {% endif %}





    -- 1_strategy_append-only.
    -- {% if is_incremental() %}
    -- and review_date >(select max(review_date) from {{this}})
    -- {% endif %}