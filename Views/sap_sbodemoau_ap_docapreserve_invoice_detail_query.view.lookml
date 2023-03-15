- view: sap_sbodemoau_ap_docapreserve_invoice_detail_query
  sql_table_name: _SYS_BIC."sap.sbodemoau.ap.doc/APReserveInvoiceDetailQuery"

  fields:

  - dimension: bin_location_is_enabled
    type: string
    sql: ${TABLE}."BinLocationIsEnabled"

  - dimension: business_partner_code
    type: string
    sql: ${TABLE}."BusinessPartnerCode"

  - dimension: business_partner_group_name
    type: string
    sql: ${TABLE}."BusinessPartnerGroupName"

  - dimension: business_partner_is_active
    type: string
    sql: ${TABLE}."BusinessPartnerIsActive"

  - dimension: business_partner_name
    type: string
    sql: ${TABLE}."BusinessPartnerName"

  - dimension: business_partner_name_and_code
    type: string
    sql: ${TABLE}."BusinessPartnerNameAndCode"

  - dimension: business_partner_territory
    type: string
    sql: ${TABLE}."BusinessPartnerTerritory"

  - dimension: business_partner_type
    type: string
    sql: ${TABLE}."BusinessPartnerType"

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

  - dimension_group: document
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DocumentDate"

  - dimension_group: document_date_sql
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: false
    datatype: date
    sql: ${TABLE}."DocumentDateSQL"

  - dimension: document_month
    type: string
    sql: ${TABLE}."DocumentMonth"

  - dimension: document_number
    type: number
    sql: ${TABLE}."DocumentNumber"

  - dimension: document_quarter
    type: string
    sql: ${TABLE}."DocumentQuarter"

  - dimension: document_row_number
    type: number
    sql: ${TABLE}."DocumentRowNumber"

  - dimension: document_type_code
    type: string
    sql: ${TABLE}."DocumentTypeCode"

  - dimension: document_type_display_name
    type: string
    sql: ${TABLE}."DocumentTypeDisplayName"

  - dimension: document_type_group
    type: string
    sql: ${TABLE}."DocumentTypeGroup"

  - dimension: document_week
    type: string
    sql: ${TABLE}."DocumentWeek"

  - dimension: document_year
    type: string
    sql: ${TABLE}."DocumentYear"

  - dimension: document_year_and_month
    type: string
    sql: ${TABLE}."DocumentYearAndMonth"

  - dimension: document_year_and_quarter
    type: string
    sql: ${TABLE}."DocumentYearAndQuarter"

  - dimension: document_year_and_week
    type: string
    sql: ${TABLE}."DocumentYearAndWeek"

  - dimension_group: due
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DueDate"

  - dimension_group: due_date_sql
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: false
    datatype: date
    sql: ${TABLE}."DueDateSQL"

  - dimension: due_month
    type: string
    sql: ${TABLE}."DueMonth"

  - dimension: due_quarter
    type: string
    sql: ${TABLE}."DueQuarter"

  - dimension: due_week
    type: string
    sql: ${TABLE}."DueWeek"

  - dimension: due_year
    type: string
    sql: ${TABLE}."DueYear"

  - dimension: due_year_and_month
    type: string
    sql: ${TABLE}."DueYearAndMonth"

  - dimension: due_year_and_quarter
    type: string
    sql: ${TABLE}."DueYearAndQuarter"

  - dimension: due_year_and_week
    type: string
    sql: ${TABLE}."DueYearAndWeek"

  - dimension: dunning_term_code
    type: string
    sql: ${TABLE}."DunningTermCode"

  - dimension: dunning_term_name
    type: string
    sql: ${TABLE}."DunningTermName"

  - dimension: employee_branch
    type: string
    sql: ${TABLE}."EmployeeBranch"

  - dimension: employee_department
    type: string
    sql: ${TABLE}."EmployeeDepartment"

  - dimension: employee_is_active
    type: string
    sql: ${TABLE}."EmployeeIsActive"

  - dimension: gross_unit_price_lc
    type: number
    sql: ${TABLE}."GrossUnitPriceLC"

  - dimension: industry_description
    type: string
    sql: ${TABLE}."IndustryDescription"

  - dimension: industry_name
    type: string
    sql: ${TABLE}."IndustryName"

  - dimension: inventory_is_managed_by_warehouse
    type: string
    sql: ${TABLE}."InventoryIsManagedByWarehouse"

  - dimension: inventory_uo_mname
    type: string
    sql: ${TABLE}."InventoryUoMName"

  - dimension: inventory_valuation_method
    type: string
    sql: ${TABLE}."InventoryValuationMethod"

  - dimension: is_company_or_private
    type: string
    sql: ${TABLE}."IsCompanyOrPrivate"

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

  - dimension_group: line_delivery
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LineDeliveryDate"

  - dimension: line_exchange_rate
    type: number
    sql: ${TABLE}."LineExchangeRate"

  - dimension: line_status
    type: string
    sql: ${TABLE}."LineStatus"

  - dimension: line_total_amount_lc
    type: number
    sql: ${TABLE}."LineTotalAmountLC"

  - dimension: manager
    type: string
    sql: ${TABLE}."Manager"

  - dimension: open_quantity
    type: number
    sql: ${TABLE}."OpenQuantity"

  - dimension: open_quantity_in_inventory_uo_m
    type: number
    sql: ${TABLE}."OpenQuantityInInventoryUoM"

  - dimension: owner
    type: string
    sql: ${TABLE}."Owner"

  - dimension_group: posting
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."PostingDate"

  - dimension_group: posting_date_sql
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: false
    datatype: date
    sql: ${TABLE}."PostingDateSQL"

  - dimension: posting_month
    type: string
    sql: ${TABLE}."PostingMonth"

  - dimension: posting_quarter
    type: string
    sql: ${TABLE}."PostingQuarter"

  - dimension: posting_week
    type: string
    sql: ${TABLE}."PostingWeek"

  - dimension: posting_year
    type: string
    sql: ${TABLE}."PostingYear"

  - dimension: posting_year_and_month
    type: string
    sql: ${TABLE}."PostingYearAndMonth"

  - dimension: posting_year_and_quarter
    type: string
    sql: ${TABLE}."PostingYearAndQuarter"

  - dimension: posting_year_and_week
    type: string
    sql: ${TABLE}."PostingYearAndWeek"

  - dimension: price_currency
    type: string
    sql: ${TABLE}."PriceCurrency"

  - dimension: project_code
    type: string
    sql: ${TABLE}."ProjectCode"

  - dimension: project_is_active
    type: string
    sql: ${TABLE}."ProjectIsActive"

  - dimension: project_name
    type: string
    sql: ${TABLE}."ProjectName"

  - dimension: project_name_and_code
    type: string
    sql: ${TABLE}."ProjectNameAndCode"

  - dimension: quantity
    type: number
    sql: ${TABLE}."Quantity"

  - dimension: quantity_in_inventory_uo_m
    type: number
    sql: ${TABLE}."QuantityInInventoryUoM"

  - dimension: sales_employee_or_buyer_name
    type: string
    sql: ${TABLE}."SalesEmployeeOrBuyerName"

  - dimension: sales_employee_or_buyer_number
    type: number
    sql: ${TABLE}."SalesEmployeeOrBuyerNumber"

  - dimension: shipping_type
    type: string
    sql: ${TABLE}."ShippingType"

  - dimension: tax_amount_lc
    type: number
    sql: ${TABLE}."TaxAmountLC"

  - dimension: unit_price
    type: number
    sql: ${TABLE}."UnitPrice"

  - dimension: unit_price_lc
    type: number
    sql: ${TABLE}."UnitPriceLC"

  - dimension: uo_mcode
    type: string
    sql: ${TABLE}."UoMCode"

  - dimension: uo_mgroup
    type: string
    sql: ${TABLE}."UoMGroup"

  - dimension: user_code
    type: string
    sql: ${TABLE}."UserCode"

  - dimension: user_name
    type: string
    sql: ${TABLE}."UserName"

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
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - warehouse_name
    - warehouse_branch_name
    - user_name
    - sales_employee_or_buyer_name
    - project_name
    - document_type_display_name
    - business_partner_name
    - business_partner_group_name
    - inventory_uo_mname
    - industry_name
    - dunning_term_name

