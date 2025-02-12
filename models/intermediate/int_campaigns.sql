-- using union all to build one single intermediate model from the different sataging models

SELECT *
FROM {{ref("raw_gz_adwords")}}
UNION ALL
SELECT *
FROM {{ref("raw_gz_bing")}}
UNION ALL
SELECT *
FROM {{ref("raw_gz_criteo")}}
UNION ALL
SELECT *
FROM {{ref("raw_gz_facebook")}}