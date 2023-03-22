view: salesorderdetails {
  derived_table: {
    sql: SELECT sod.*,c."CountryName" FROM
      "_SYS_BIC"."sap.sbodemoau.ar.doc/SalesOrderDetailQuery" sod
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/BusinessPartner" b
      ON b."BusinessPartnerCode"=sod."BusinessPartnerCode"
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/Country" c
      ON b."BillToOrPayToCountry"=c."CountryCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name,business_partner_name,count]
  }
  measure: sum_profits {
    type: sum
    sql: ${gross_profit_lc} ;;
    drill_fields: [country_name,business_partner_name,count]
  }
  measure: sum_sales {
    type: sum
    sql: ${line_total_amount_lc} ;;
    drill_fields: [country_name,business_partner_name,count]
  }
  measure: gross_profit_margin{
    type: number
    sql: ${sum_profits}/${sum_sales} ;;
    drill_fields: [country_name,business_partner_name,count]
  }
  dimension: document_number {
    type: number
    sql: ${TABLE}."DocumentNumber" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."Owner" ;;
  }

  dimension: shipping_type {
    type: string
    sql: ${TABLE}."ShippingType" ;;
  }

  dimension: uo_mcode {
    type: string
    sql: ${TABLE}."UoMCode" ;;
  }

  dimension_group: line_delivery_date {
    type: time
    sql: ${TABLE}."LineDeliveryDate" ;;
  }

  dimension: document_row_number {
    type: number
    sql: ${TABLE}."DocumentRowNumber" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."UnitPrice" ;;
  }

  dimension: unit_price_lc {
    type: number
    sql: ${TABLE}."UnitPriceLC" ;;
  }

  dimension: gross_unit_price_lc {
    type: number
    sql: ${TABLE}."GrossUnitPriceLC" ;;
  }

  dimension: line_exchange_rate {
    type: number
    sql: ${TABLE}."LineExchangeRate" ;;
  }

  dimension: price_currency {
    type: string
    sql: ${TABLE}."PriceCurrency" ;;
  }

  dimension_group: posting_date {
    type: time
    sql: ${TABLE}."PostingDate" ;;
  }

  dimension: posting_year {
    type: string
    sql: ${TABLE}."PostingYear" ;;
  }

  dimension: posting_quarter {
    type: string
    sql: ${TABLE}."PostingQuarter" ;;
  }

  dimension: posting_month {
    type: string
    sql: ${TABLE}."PostingMonth" ;;
  }

  dimension: posting_week {
    type: string
    sql: ${TABLE}."PostingWeek" ;;
  }

  dimension: posting_date_sql {
    type: date
    sql: ${TABLE}."PostingDateSQL" ;;
  }

  dimension: posting_year_and_quarter {
    type: string
    sql: ${TABLE}."PostingYearAndQuarter" ;;
  }

  dimension: posting_year_and_month {
    type: string
    sql: ${TABLE}."PostingYearAndMonth" ;;
  }

  dimension: posting_year_and_week {
    type: string
    sql: ${TABLE}."PostingYearAndWeek" ;;
  }

  dimension_group: due_date {
    type: time
    sql: ${TABLE}."DueDate" ;;
  }

  dimension: due_year {
    type: string
    sql: ${TABLE}."DueYear" ;;
  }

  dimension: due_quarter {
    type: string
    sql: ${TABLE}."DueQuarter" ;;
  }

  dimension: due_month {
    type: string
    sql: ${TABLE}."DueMonth" ;;
  }

  dimension: due_week {
    type: string
    sql: ${TABLE}."DueWeek" ;;
  }

  dimension: due_date_sql {
    type: date
    sql: ${TABLE}."DueDateSQL" ;;
  }

  dimension: due_year_and_quarter {
    type: string
    sql: ${TABLE}."DueYearAndQuarter" ;;
  }

  dimension: due_year_and_month {
    type: string
    sql: ${TABLE}."DueYearAndMonth" ;;
  }

  dimension: due_year_and_week {
    type: string
    sql: ${TABLE}."DueYearAndWeek" ;;
  }

  dimension_group: document_date {
    type: time
    sql: ${TABLE}."DocumentDate" ;;
  }

  dimension: document_year {
    type: string
    sql: ${TABLE}."DocumentYear" ;;
  }

  dimension: document_quarter {
    type: string
    sql: ${TABLE}."DocumentQuarter" ;;
  }

  dimension: document_month {
    type: string
    sql: ${TABLE}."DocumentMonth" ;;
  }

  dimension: document_week {
    type: string
    sql: ${TABLE}."DocumentWeek" ;;
  }

  dimension: document_date_sql {
    type: date
    sql: ${TABLE}."DocumentDateSQL" ;;
  }

  dimension: document_year_and_quarter {
    type: string
    sql: ${TABLE}."DocumentYearAndQuarter" ;;
  }

  dimension: document_year_and_month {
    type: string
    sql: ${TABLE}."DocumentYearAndMonth" ;;
  }

  dimension: document_year_and_week {
    type: string
    sql: ${TABLE}."DocumentYearAndWeek" ;;
  }

  dimension: document_type_code {
    type: string
    sql: ${TABLE}."DocumentTypeCode" ;;
  }

  dimension: document_type_display_name {
    type: string
    sql: ${TABLE}."DocumentTypeDisplayName" ;;
  }

  dimension: document_type_group {
    type: string
    sql: ${TABLE}."DocumentTypeGroup" ;;
  }

  dimension: sales_employee_or_buyer_number {
    type: number
    sql: ${TABLE}."SalesEmployeeOrBuyerNumber" ;;
  }

  dimension: sales_employee_or_buyer_name {
    type: string
    sql: ${TABLE}."SalesEmployeeOrBuyerName" ;;
  }

  dimension: employee_is_active {
    type: string
    sql: ${TABLE}."EmployeeIsActive" ;;
  }

  dimension: user_code {
    type: string
    sql: ${TABLE}."UserCode" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."UserName" ;;
  }

  dimension: employee_branch {
    type: string
    sql: ${TABLE}."EmployeeBranch" ;;
  }

  dimension: employee_department {
    type: string
    sql: ${TABLE}."EmployeeDepartment" ;;
  }

  dimension: manager {
    type: string
    sql: ${TABLE}."Manager" ;;
  }

  dimension: business_partner_code {
    type: string
    sql: ${TABLE}."BusinessPartnerCode" ;;
  }

  dimension: business_partner_name {
    type: string
    sql: ${TABLE}."BusinessPartnerName" ;;
  }

  dimension: business_partner_name_and_code {
    type: string
    sql: ${TABLE}."BusinessPartnerNameAndCode" ;;
  }

  dimension: business_partner_type {
    type: string
    sql: ${TABLE}."BusinessPartnerType" ;;
  }

  dimension: business_partner_group_name {
    type: string
    sql: ${TABLE}."BusinessPartnerGroupName" ;;
  }

  dimension: industry_name {
    type: string
    sql: ${TABLE}."IndustryName" ;;
  }

  dimension: industry_description {
    type: string
    sql: ${TABLE}."IndustryDescription" ;;
  }

  dimension: business_partner_is_active {
    type: string
    sql: ${TABLE}."BusinessPartnerIsActive" ;;
  }

  dimension: is_company_or_private {
    type: string
    sql: ${TABLE}."IsCompanyOrPrivate" ;;
  }

  dimension: dunning_term_code {
    type: string
    sql: ${TABLE}."DunningTermCode" ;;
  }

  dimension: dunning_term_name {
    type: string
    sql: ${TABLE}."DunningTermName" ;;
  }

  dimension: business_partner_territory {
    type: string
    sql: ${TABLE}."BusinessPartnerTerritory" ;;
  }

  dimension: item_code {
    type: string
    sql: ${TABLE}."ItemCode" ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."ItemDescription" ;;
  }

  dimension: item_description_and_code {
    type: string
    sql: ${TABLE}."ItemDescriptionAndCode" ;;
    drill_fields: [country_name,document_date_date,business_partner_name,item_group]
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

  dimension: warehouse_code {
    type: string
    sql: ${TABLE}."WarehouseCode" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WarehouseName" ;;
  }

  dimension: warehouse_name_and_code {
    type: string
    sql: ${TABLE}."WarehouseNameAndCode" ;;
  }

  dimension: warehouse_branch_code {
    type: number
    sql: ${TABLE}."WarehouseBranchCode" ;;
  }

  dimension: warehouse_branch_name {
    type: string
    sql: ${TABLE}."WarehouseBranchName" ;;
  }

  dimension: warehouse_location {
    type: string
    sql: ${TABLE}."WarehouseLocation" ;;
  }

  dimension: warehouse_is_active {
    type: string
    sql: ${TABLE}."WarehouseIsActive" ;;
  }

  dimension: is_drop_ship_warehouse {
    type: string
    sql: ${TABLE}."IsDropShipWarehouse" ;;
  }

  dimension: is_nettable_warehouse {
    type: string
    sql: ${TABLE}."IsNettableWarehouse" ;;
  }

  dimension: warehouse_country {
    type: string
    sql: ${TABLE}."WarehouseCountry" ;;
  }

  dimension: bin_location_is_enabled {
    type: string
    sql: ${TABLE}."BinLocationIsEnabled" ;;
  }

  dimension: warehouse_default_bin_location {
    type: string
    sql: ${TABLE}."WarehouseDefaultBinLocation" ;;
  }

  dimension: project_code {
    type: string
    sql: ${TABLE}."ProjectCode" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."ProjectName" ;;
  }

  dimension: project_name_and_code {
    type: string
    sql: ${TABLE}."ProjectNameAndCode" ;;
  }

  dimension: project_is_active {
    type: string
    sql: ${TABLE}."ProjectIsActive" ;;
  }

  dimension: line_status {
    type: string
    sql: ${TABLE}."LineStatus" ;;
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

  dimension: line_total_amount_lc {
    type: number
    sql: ${TABLE}."LineTotalAmountLC" ;;
  }

  dimension: country_name {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."CountryName" ;;
    drill_fields: [country_name,document_date_date,business_partner_name,item_group]
  }


  set: detail {
    fields: [
      document_number,
      owner,
      shipping_type,
      uo_mcode,
      line_delivery_date_time,
      document_row_number,
      unit_price,
      unit_price_lc,
      gross_unit_price_lc,
      line_exchange_rate,
      price_currency,
      posting_date_time,
      posting_year,
      posting_quarter,
      posting_month,
      posting_week,
      posting_date_sql,
      posting_year_and_quarter,
      posting_year_and_month,
      posting_year_and_week,
      due_date_time,
      due_year,
      due_quarter,
      due_month,
      due_week,
      due_date_sql,
      due_year_and_quarter,
      due_year_and_month,
      due_year_and_week,
      document_date_time,
      document_year,
      document_quarter,
      document_month,
      document_week,
      document_date_sql,
      document_year_and_quarter,
      document_year_and_month,
      document_year_and_week,
      document_type_code,
      document_type_display_name,
      document_type_group,
      sales_employee_or_buyer_number,
      sales_employee_or_buyer_name,
      employee_is_active,
      user_code,
      user_name,
      employee_branch,
      employee_department,
      manager,
      business_partner_code,
      business_partner_name,
      business_partner_name_and_code,
      business_partner_type,
      business_partner_group_name,
      industry_name,
      industry_description,
      business_partner_is_active,
      is_company_or_private,
      dunning_term_code,
      dunning_term_name,
      business_partner_territory,
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
      company_maximum_item_quantity,
      warehouse_code,
      warehouse_name,
      warehouse_name_and_code,
      warehouse_branch_code,
      warehouse_branch_name,
      warehouse_location,
      warehouse_is_active,
      is_drop_ship_warehouse,
      is_nettable_warehouse,
      warehouse_country,
      bin_location_is_enabled,
      warehouse_default_bin_location,
      project_code,
      project_name,
      project_name_and_code,
      project_is_active,
      line_status,
      quantity,
      open_quantity,
      quantity_in_inventory_uo_m,
      open_quantity_in_inventory_uo_m,
      item_cost_lc,
      tax_amount_lc,
      gross_profit_lc,
      line_total_amount_lc,
      country_name
    ]
  }
}
