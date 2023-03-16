connection: "sap-looker"
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"
datagroup: sap_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_default_datagroup

explore: sql_runner_query {}
explore: sales {}
