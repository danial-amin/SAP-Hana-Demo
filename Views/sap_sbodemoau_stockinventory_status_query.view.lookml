- view: sap_sbodemoau_stockinventory_status_query
  sql_table_name: _SYS_BIC."sap.sbodemoau.stock/InventoryStatusQuery"

  fields:

  - dimension: available_quantity
    type: number
    sql: ${TABLE}."AvailableQuantity"

  - dimension: bin_location_is_enabled
    type: string
    sql: ${TABLE}."BinLocationIsEnabled"

  - dimension: committed_quantity
    type: number
    sql: ${TABLE}."CommittedQuantity"

  - dimension: company_maximum_item_quantity
    type: number
    sql: ${TABLE}."CompanyMaximumItemQuantity"

  - dimension: company_minimum_item_quantity
    type: number
    sql: ${TABLE}."CompanyMinimumItemQuantity"

  - dimension: company_required_item_quantity
    type: number
    sql: ${TABLE}."CompanyRequiredItemQuantity"

  - dimension: default_preferred_vendor
    type: string
    sql: ${TABLE}."DefaultPreferredVendor"

  - dimension: federal_tax_id
    type: string
    sql: ${TABLE}."FederalTaxID"

  - dimension: in_stock_inventory_value_lc
    type: number
    sql: ${TABLE}."InStockInventoryValueLC"

  - dimension: in_stock_quantity
    type: number
    sql: ${TABLE}."InStockQuantity"

  - dimension: inventory_is_managed_by_warehouse
    type: string
    sql: ${TABLE}."InventoryIsManagedByWarehouse"

  - dimension: inventory_uo_mname
    type: string
    sql: ${TABLE}."InventoryUoMName"

  - dimension: inventory_valuation_method
    type: string
    sql: ${TABLE}."InventoryValuationMethod"

  - dimension: is_drop_ship_warehouse
    type: string
    sql: ${TABLE}."IsDropShipWarehouse"

  - dimension: is_inventory_item
    type: string
    sql: ${TABLE}."IsInventoryItem"

  - dimension: is_nettable_warehouse
    type: string
    sql: ${TABLE}."IsNettableWarehouse"

  - dimension: is_purchase_item
    type: string
    sql: ${TABLE}."IsPurchaseItem"

  - dimension: is_sales_item
    type: string
    sql: ${TABLE}."IsSalesItem"

  - dimension: item_code
    type: string
    sql: ${TABLE}."ItemCode"

  - dimension: item_description
    type: string
    sql: ${TABLE}."ItemDescription"

  - dimension: item_description_and_code
    type: string
    sql: ${TABLE}."ItemDescriptionAndCode"

  - dimension: item_group
    type: string
    sql: ${TABLE}."ItemGroup"

  - dimension: item_is_active
    type: string
    sql: ${TABLE}."ItemIsActive"

  - dimension: item_manufacturer
    type: string
    sql: ${TABLE}."ItemManufacturer"

  - dimension: item_shipping_type
    type: string
    sql: ${TABLE}."ItemShippingType"

  - dimension: item_type
    type: string
    sql: ${TABLE}."ItemType"

  - dimension: ordered_quantity
    type: number
    sql: ${TABLE}."OrderedQuantity"

  - dimension: uo_mgroup
    type: string
    sql: ${TABLE}."UoMGroup"

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

  - dimension: warehouse_maximum_item_quantity
    type: number
    sql: ${TABLE}."WarehouseMaximumItemQuantity"

  - dimension: warehouse_minimum_item_quantity
    type: number
    sql: ${TABLE}."WarehouseMinimumItemQuantity"

  - dimension: warehouse_name
    type: string
    sql: ${TABLE}."WarehouseName"

  - dimension: warehouse_name_and_code
    type: string
    sql: ${TABLE}."WarehouseNameAndCode"

  - dimension: warehouse_required_item_quantity
    type: number
    sql: ${TABLE}."WarehouseRequiredItemQuantity"

  - measure: count
    type: count
    drill_fields: [warehouse_branch_name, warehouse_name, inventory_uo_mname]

