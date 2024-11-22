SELECT param_value AS metadata_file_location
FROM TABLE_PARAMS
WHERE tbl_id =
    (SELECT tbl_id
     FROM TBLS
     WHERE tbl_name = 'new_york_taxi')
  AND param_key = 'metadata_location';
