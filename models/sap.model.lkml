connection: "sap-looker"
include: "/views/**/*.view"
#include: "/dashboards/**/*.dashboard"
datagroup: sap_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_default_datagroup

explore: sql_runner_query {}
explore: sales {}
explore: item_sales {}
explore: accounts {}
explore: opportunities {}
explore: sales_items_list {}
explore: so_fct {}
explore: po_fct {}
explore: vendor_aging {}
explore: rec_ageing {}
explore: on_time_delivery {}
explore: budget_analysis {}
explore: salesorderdetails {}
explore: gl_accounts {}
