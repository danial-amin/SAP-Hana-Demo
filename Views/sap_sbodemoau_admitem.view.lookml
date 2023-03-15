- view: sap_sbodemoau_admitem
  sql_table_name: _SYS_BIC."sap.sbodemoau.adm/Item"

  fields:

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

  - dimension: inventory_is_managed_by_warehouse
    type: string
    sql: ${TABLE}."InventoryIsManagedByWarehouse"

  - dimension: inventory_uo_mname
    type: string
    sql: ${TABLE}."InventoryUoMName"

  - dimension: inventory_valuation_method
    type: string
    sql: ${TABLE}."InventoryValuationMethod"

  - dimension: is_inventory_item
    type: string
    sql: ${TABLE}."IsInventoryItem"

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

  - dimension: uo_mgroup
    type: string
    sql: ${TABLE}."UoMGroup"

  - measure: count
    type: count
    drill_fields: [inventory_uo_mname]

