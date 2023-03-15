view: item {
  derived_table: {
    sql: SELECT *
      FROM "_SYS_BIC"."sap.sbodemoau.adm/Item"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: item_code {
    type: string
    primary_key: yes
    sql: ${TABLE}."ItemCode" ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."ItemDescription" ;;
  }

  dimension: item_description_and_code {
    type: string
    sql: ${TABLE}."ItemDescriptionAndCode" ;;
  }

  dimension: item_group {
    type: string
    sql: ${TABLE}."ItemGroup" ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}."ItemType" ;;
  }

  dimension: inventory_valuation_method {
    type: string
    sql: ${TABLE}."InventoryValuationMethod" ;;
  }

  dimension: is_inventory_item {
    type: string
    sql: ${TABLE}."IsInventoryItem" ;;
  }

  dimension: is_sales_item {
    type: string
    sql: ${TABLE}."IsSalesItem" ;;
  }

  dimension: is_purchase_item {
    type: string
    sql: ${TABLE}."IsPurchaseItem" ;;
  }

  dimension: uo_mgroup {
    type: string
    sql: ${TABLE}."UoMGroup" ;;
  }

  dimension: item_shipping_type {
    type: string
    sql: ${TABLE}."ItemShippingType" ;;
  }

  dimension: item_is_active {
    type: string
    sql: ${TABLE}."ItemIsActive" ;;
  }

  dimension: inventory_uo_mname {
    type: string
    sql: ${TABLE}."InventoryUoMName" ;;
  }

  dimension: item_manufacturer {
    type: string
    sql: ${TABLE}."ItemManufacturer" ;;
  }

  dimension: default_preferred_vendor {
    type: string
    sql: ${TABLE}."DefaultPreferredVendor" ;;
  }

  dimension: inventory_is_managed_by_warehouse {
    type: string
    sql: ${TABLE}."InventoryIsManagedByWarehouse" ;;
  }

  dimension: company_required_item_quantity {
    type: number
    sql: ${TABLE}."CompanyRequiredItemQuantity" ;;
  }

  dimension: company_minimum_item_quantity {
    type: number
    sql: ${TABLE}."CompanyMinimumItemQuantity" ;;
  }

  dimension: company_maximum_item_quantity {
    type: number
    sql: ${TABLE}."CompanyMaximumItemQuantity" ;;
  }

  set: detail {
    fields: [
      item_code,
      item_description,
      item_description_and_code,
      item_group,
      item_type,
      inventory_valuation_method,
      is_inventory_item,
      is_sales_item,
      is_purchase_item,
      uo_mgroup,
      item_shipping_type,
      item_is_active,
      inventory_uo_mname,
      item_manufacturer,
      default_preferred_vendor,
      inventory_is_managed_by_warehouse,
      company_required_item_quantity,
      company_minimum_item_quantity,
      company_maximum_item_quantity
    ]
  }
}
