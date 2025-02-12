-- using union all to build one single intermediate model from the different sataging models

SELECT *
FROM {{ref("stg_raw__adwords")}}
UNION ALL
SELECT *
FROM {{ref("stg_raw__bing")}}
UNION ALL
SELECT *
FROM {{ref("stg_raw__criteo")}}
UNION ALL
SELECT *
FROM {{ref("stg_raw__facebook")}}