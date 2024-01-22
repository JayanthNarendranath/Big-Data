"big_data_project" CREATE EXTERNAL TABLE IF NOT EXISTS `ptb3`.`big_data_project` (
  `id` string,
  `user_name` string,
  `screen_name` string,
  `text` string,
  `followers_count` int,
  `location` string,
  `geo` string,
  `created_at` string,

)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION 's3://wcd-jayanth/raw_data.csv/big_data_project_predictions.parquet/'
TBLPROPERTIES ('classification' = 'parquet');