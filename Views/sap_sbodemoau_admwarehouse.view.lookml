- view: sap_sbodemoau_admwarehouse
  sql_table_name: _SYS_BIC."sap.sbodemoau.adm/Warehouse"

  fields:

  - dimension: bin_location_is_enabled
    type: string
    sql: ${TABLE}."BinLocationIsEnabled"

  - dimension: federal_tax_id
    type: string
    sql: ${TABLE}."FederalTaxID"

  - dimension: is_drop_ship_warehouse
    type: string
    sql: ${TABLE}."IsDropShipWarehouse"

  - dimension: is_nettable_warehouse
    type: string
    sql: ${TABLE}."IsNettableWarehouse"

  - dimension: warehouse_branch_code
    type: number
    sql: ${TABLE}."WarehouseBranchCode"

  - dimension: warehouse_branch_name
    type: string
    sql: ${TABLE}."WarehouseBranchName"

  - dimension: warehouse_code
    type: string
    sql: ${TABLE}."WarehouseCode"

  - dimension: warehouse_country
    type: string
    sql: ${TABLE}."WarehouseCountry"

  - dimension: warehouse_default_bin_location
    type: string
    sql: ${TABLE}."WarehouseDefaultBinLocation"

  - dimension: warehouse_is_active
    type: string
    sql: ${TABLE}."WarehouseIsActive"

  - dimension: warehouse_location
    type: string
    sql: ${TABLE}."WarehouseLocation"

  - dimension: warehouse_name
    type: string
    sql: ${TABLE}."WarehouseName"

  - dimension: warehouse_name_and_code
    type: string
    sql: ${TABLE}."WarehouseNameAndCode"

  - measure: count
    type: count
    drill_fields: [warehouse_name, warehouse_branch_name]

