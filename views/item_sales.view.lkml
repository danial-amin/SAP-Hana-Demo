view: item_sales {
  derived_table: {
    sql: SELECT it."ItemDescription",it."ItemGroup",it."ItemManufacturer",s.*
      FROM "_SYS_BIC"."sap.sbodemoau.adm/Item" it
      JOIN "_SYS_BIC"."sap.sbodemoau.ar.doc/SalesOrderDetailFact" s
      ON it."ItemCode"=s."ItemCode"
      Limit 10
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

  dimension_group: posting_date {
    type: time
    sql: ${TABLE}."PostingDate" ;;
  }

  dimension_group: due_date {
    type: time
    sql: ${TABLE}."DueDate" ;;
  }

  dimension_group: document_date {
    type: time
    sql: ${TABLE}."DocumentDate" ;;
  }

  dimension: document_type_code {
    type: string
    sql: ${TABLE}."DocumentTypeCode" ;;
  }

  dimension: sales_employee_or_buyer_number {
    type: number
    sql: ${TABLE}."SalesEmployeeOrBuyerNumber" ;;
  }

  dimension: business_partner_code {
    type: string
    sql: ${TABLE}."BusinessPartnerCode" ;;
  }

  dimension: item_code {
    type: string
    sql: ${TABLE}."ItemCode" ;;
  }

  dimension: warehouse_code {
    type: string
    sql: ${TABLE}."WarehouseCode" ;;
  }

  dimension: project_code {
    type: string
    sql: ${TABLE}."ProjectCode" ;;
  }

  dimension_group: line_delivery_date {
    type: time
    sql: ${TABLE}."LineDeliveryDate" ;;
  }

  dimension: document_internal_key {
    type: number
    sql: ${TABLE}."DocumentInternalKey" ;;
  }

  dimension: document_number {
    type: number
    sql: ${TABLE}."DocumentNumber" ;;
  }

  dimension: document_line_internal_key {
    type: number
    sql: ${TABLE}."DocumentLineInternalKey" ;;
  }

  dimension: base_document_type_code {
    type: number
    sql: ${TABLE}."BaseDocumentTypeCode" ;;
  }

  dimension: base_document_internal_key {
    type: number
    sql: ${TABLE}."BaseDocumentInternalKey" ;;
  }

  dimension: base_document_line_internal_key {
    type: number
    sql: ${TABLE}."BaseDocumentLineInternalKey" ;;
  }

  dimension: line_status {
    type: string
    sql: ${TABLE}."LineStatus" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."Owner" ;;
  }

  dimension: shipping_type {
    type: string
    sql: ${TABLE}."ShippingType" ;;
  }

  dimension: production_bo_mtype {
    type: string
    sql: ${TABLE}."ProductionBoMType" ;;
  }

  dimension: uo_mcode {
    type: string
    sql: ${TABLE}."UoMCode" ;;
  }

  dimension: items_per_unit {
    type: number
    sql: ${TABLE}."ItemsPerUnit" ;;
  }

  dimension: tax_only {
    type: string
    sql: ${TABLE}."TaxOnly" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."UnitPrice" ;;
  }

  dimension: line_exchange_rate {
    type: number
    sql: ${TABLE}."LineExchangeRate" ;;
  }

  dimension: line_discount_percentage {
    type: number
    sql: ${TABLE}."LineDiscountPercentage" ;;
  }

  dimension: price_currency {
    type: string
    sql: ${TABLE}."PriceCurrency" ;;
  }

  dimension: document_row_number {
    type: number
    sql: ${TABLE}."DocumentRowNumber" ;;
  }

  dimension: unit_price_lc {
    type: number
    sql: ${TABLE}."UnitPriceLC" ;;
  }

  dimension: gross_unit_price_lc {
    type: number
    sql: ${TABLE}."GrossUnitPriceLC" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."Quantity" ;;
  }

  dimension: open_quantity {
    type: number
    sql: ${TABLE}."OpenQuantity" ;;
  }

  dimension: quantity_in_inventory_uo_m {
    type: number
    sql: ${TABLE}."QuantityInInventoryUoM" ;;
  }

  dimension: open_quantity_in_inventory_uo_m {
    type: number
    sql: ${TABLE}."OpenQuantityInInventoryUoM" ;;
  }

  dimension: item_cost_lc {
    type: number
    sql: ${TABLE}."ItemCostLC" ;;
  }

  dimension: tax_amount_lc {
    type: number
    sql: ${TABLE}."TaxAmountLC" ;;
  }

  dimension: gross_profit_lc {
    type: number
    sql: ${TABLE}."GrossProfitLC" ;;
  }

  dimension: gross_profit_sc {
    type: number
    sql: ${TABLE}."GrossProfitSC" ;;
  }

  dimension: gross_profit_base_amount_lc {
    type: number
    sql: ${TABLE}."GrossProfitBaseAmountLC" ;;
  }

  dimension: line_total_amount_lc {
    type: number
    sql: ${TABLE}."LineTotalAmountLC" ;;
  }

  dimension: line_total_amount_sc {
    type: number
    sql: ${TABLE}."LineTotalAmountSC" ;;
  }

  set: detail {
    fields: [
      item_description,
      item_group,
      item_manufacturer,
      posting_date_time,
      due_date_time,
      document_date_time,
      document_type_code,
      sales_employee_or_buyer_number,
      business_partner_code,
      item_code,
      warehouse_code,
      project_code,
      line_delivery_date_time,
      document_internal_key,
      document_number,
      document_line_internal_key,
      base_document_type_code,
      base_document_internal_key,
      base_document_line_internal_key,
      line_status,
      owner,
      shipping_type,
      production_bo_mtype,
      uo_mcode,
      items_per_unit,
      tax_only,
      unit_price,
      line_exchange_rate,
      line_discount_percentage,
      price_currency,
      document_row_number,
      unit_price_lc,
      gross_unit_price_lc,
      quantity,
      open_quantity,
      quantity_in_inventory_uo_m,
      open_quantity_in_inventory_uo_m,
      item_cost_lc,
      tax_amount_lc,
      gross_profit_lc,
      gross_profit_sc,
      gross_profit_base_amount_lc,
      line_total_amount_lc,
      line_total_amount_sc
    ]
  }
}
