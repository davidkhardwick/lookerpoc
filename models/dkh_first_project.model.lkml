connection: "looker-bq-poc"

datagroup: dkh_first_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dkh_first_project_default_datagroup
