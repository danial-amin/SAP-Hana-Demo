view: inventory_status_for_most_sold_products {
  derived_table: {
    sql: SELECT it."ItemDescription",it."ItemGroup",it."ItemManufacturer",it."ItemIsActive",inv.*,w."WarehouseName",w."WarehouseLocation",w."WarehouseIsActive",w."WarehouseCountry"
      FROM "_SYS_BIC"."sap.sbodemoau.adm/Item" it
      JOIN "_SYS_BIC"."sap.sbodemoau.stock/InventoryStatusFact" inv
      ON inv."ItemCode"=it."ItemCode"
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/Warehouse" w
      ON inv."WarehouseCode"=w."WarehouseCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."ItemDescription" ;;
  }

  dimension: item_group {
    type: string
    sql: ${TABLE}."ItemGroup" ;;
  }

  dimension: item_manufacturer {
    type: string
    sql: ${TABLE}."ItemManufacturer" ;;
  }

  dimension: item_is_active {
    type: string
    sql: ${TABLE}."ItemIsActive" ;;
  }

  dimension: by_wh {
    type: string
    sql: ${TABLE}."ByWh" ;;
  }

  dimension: item_code {
    type: string
    sql: ${TABLE}."ItemCode" ;;
  }

  dimension: warehouse_code {
    type: string
    sql: ${TABLE}."WarehouseCode" ;;
  }

  dimension: min_order_0 {
    type: number
    sql: ${TABLE}."MinOrder_0" ;;
  }

  dimension: max_stock_0 {
    type: number
    sql: ${TABLE}."MaxStock_0" ;;
  }

  dimension: min_stock_0 {
    type: number
    sql: ${TABLE}."MinStock_0" ;;
  }

  dimension: in_stock_quantity {
    type: number
    sql: ${TABLE}."InStockQuantity" ;;
  }

  dimension: committed_quantity {
    type: number
    sql: ${TABLE}."CommittedQuantity" ;;
  }

  dimension: ordered_quantity {
    type: number
    sql: ${TABLE}."OrderedQuantity" ;;
  }

  dimension: in_stock_inventory_value_lc {
    type: number
    sql: ${TABLE}."InStockInventoryValueLC" ;;
  }

  dimension: warehouse_minimum_item_quantity {
    type: number
    sql: ${TABLE}."WarehouseMinimumItemQuantity" ;;
  }

  dimension: warehouse_maximum_item_quantity {
    type: number
    sql: ${TABLE}."WarehouseMaximumItemQuantity" ;;
  }

  dimension: warehouse_required_item_quantity {
    type: number
    sql: ${TABLE}."WarehouseRequiredItemQuantity" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WarehouseName" ;;
  }

  dimension: warehouse_location {
    type: string
    sql: ${TABLE}."WarehouseLocation" ;;
  }

  dimension: warehouse_is_active {
    type: string
    sql: ${TABLE}."WarehouseIsActive" ;;
  }

  dimension: warehouse_country {
    type: string
    sql: ${TABLE}."WarehouseCountry" ;;
  }

  set: detail {
    fields: [
      item_description,
      item_group,
      item_manufacturer,
      item_is_active,
      by_wh,
      item_code,
      warehouse_code,
      min_order_0,
      max_stock_0,
      min_stock_0,
      in_stock_quantity,
      committed_quantity,
      ordered_quantity,
      in_stock_inventory_value_lc,
      warehouse_minimum_item_quantity,
      warehouse_maximum_item_quantity,
      warehouse_required_item_quantity,
      warehouse_name,
      warehouse_location,
      warehouse_is_active,
      warehouse_country
    ]
  }
}
