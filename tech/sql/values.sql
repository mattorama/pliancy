WITH t AS (
  SELECT 1 AS one, 2 AS two
  UNION
  SELECT 3 AS one, 4 AS two
)
SELECT one 
FROM t
;
