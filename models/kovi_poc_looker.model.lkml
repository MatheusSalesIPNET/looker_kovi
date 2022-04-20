connection: "kovi_looker_dataset"

# include all the views
include: "/views/**/*.view"

datagroup: kovi_poc_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kovi_poc_looker_default_datagroup

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=22.4
# NOTE: for BigQuery specific considerations

explore: amostra_dados {}
