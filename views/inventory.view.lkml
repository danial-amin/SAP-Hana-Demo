view: inventory {
  derived_table: {
    sql: SELECT * FROM "_SYS_BIC"."sap.sbodemoau.stock/InventoryTransactionDocumentsQuery"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: sum_inbound {
    type: sum
    sql: ${inbound_inventory_quantity} ;;
    drill_fields: [detail*]
  }

  measure: sum_outbound {
    type: sum
    sql: ${outbound_inventory_quantity};;
    drill_fields: [detail*]
  }

  measure: sum_inbound_val {
    type: sum
    sql: ${inbound_inventory_value_lc} ;;
    drill_fields: [detail*]
  }

  measure: sum_outbound_val {
    type: sum
    sql: ${outbound_inventory_value_lc};;
    drill_fields: [detail*]
  }

  measure: in_stock {
    type: number
    sql: ${sum_outbound}-${sum_inbound} ;;
    drill_fields: [detail*]
  }
  dimension: docment_number {
    type: string
    sql: ${TABLE}."DocmentNumber" ;;
  }

  dimension: document_line_internal_key {
    type: number
    sql: ${TABLE}."DocumentLineInternalKey" ;;
  }

  dimension: inventory_posting_account {
    type: string
    sql: ${TABLE}."InventoryPostingAccount" ;;
  }

  dimension: document_creator_name {
    type: string
    sql: ${TABLE}."DocumentCreatorName" ;;
  }

  dimension: inbound_item_cost_lc {
    type: number
    sql: ${TABLE}."InboundItemCostLC" ;;
  }

  dimension: outbound_item_cost_lc {
    type: number
    sql: ${TABLE}."OutboundItemCostLC" ;;
  }

  dimension_group: system_date {
    type: time
    sql: ${TABLE}."SystemDate" ;;
  }

  dimension: system_date_sql {
    type: date
    sql: ${TABLE}."SystemDateSQL" ;;
  }

  dimension: system_year {
    type: string
    sql: ${TABLE}."SystemYear" ;;
  }

  dimension: system_quarter {
    type: string
    sql: ${TABLE}."SystemQuarter" ;;
  }

  dimension: system_month {
    type: string
    sql: ${TABLE}."SystemMonth" ;;
  }

  dimension: system_week {
    type: string
    sql: ${TABLE}."SystemWeek" ;;
  }

  dimension: system_year_and_quarter {
    type: string
    sql: ${TABLE}."SystemYearAndQuarter" ;;
  }

  dimension: system_year_and_month {
    type: string
    sql: ${TABLE}."SystemYearAndMonth" ;;
  }

  dimension: system_year_and_week {
    type: string
    sql: ${TABLE}."SystemYearAndWeek" ;;
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

  dimension: document_type_code {
    type: string
    sql: ${TABLE}."DocumentTypeCode" ;;
  }

  dimension: document_type_short_name {
    type: string
    sql: ${TABLE}."DocumentTypeShortName" ;;
  }

  dimension: document_type_display_name {
    type: string
    sql: ${TABLE}."DocumentTypeDisplayName" ;;
  }

  dimension: document_type_group {
    type: string
    sql: ${TABLE}."DocumentTypeGroup" ;;
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

  dimension: federal_tax_id {
    type: string
    sql: ${TABLE}."FederalTaxID" ;;
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

  dimension: business_partner_group_code {
    type: number
    sql: ${TABLE}."BusinessPartnerGroupCode" ;;
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

  dimension: payment_method_code {
    type: string
    sql: ${TABLE}."PaymentMethodCode" ;;
  }

  dimension: business_partner_currency {
    type: string
    sql: ${TABLE}."BusinessPartnerCurrency" ;;
  }

  dimension: business_partner_territory {
    type: string
    sql: ${TABLE}."BusinessPartnerTerritory" ;;
  }

  dimension: bill_to_or_pay_to_street {
    type: string
    sql: ${TABLE}."BillToOrPayToStreet" ;;
  }

  dimension: business_partner_federal_tax_id {
    type: string
    sql: ${TABLE}."BusinessPartner_FederalTaxID" ;;
  }

  dimension: mail_country {
    type: string
    sql: ${TABLE}."MailCountry" ;;
  }

  dimension: bill_to_or_pay_to_city {
    type: string
    sql: ${TABLE}."BillToOrPayToCity" ;;
  }

  dimension: bill_to_or_pay_to_country {
    type: string
    sql: ${TABLE}."BillToOrPayToCountry" ;;
  }

  dimension: additional_id {
    type: string
    sql: ${TABLE}."AdditionalID" ;;
  }

  dimension: withholding_tax_code {
    type: string
    sql: ${TABLE}."WithholdingTaxCode" ;;
  }

  dimension: unified_federal_tax_id {
    type: string
    sql: ${TABLE}."UnifiedFederalTaxID" ;;
  }

  dimension: residence_number_type {
    type: string
    sql: ${TABLE}."ResidenceNumberType" ;;
  }

  dimension: financial_period_internal_key {
    type: number
    sql: ${TABLE}."FinancialPeriodInternalKey" ;;
  }

  dimension: financial_period_code {
    type: string
    sql: ${TABLE}."FinancialPeriodCode" ;;
  }

  dimension: financial_period_name {
    type: string
    sql: ${TABLE}."FinancialPeriodName" ;;
  }

  dimension: period_start {
    type: number
    sql: ${TABLE}."PeriodStart" ;;
  }

  dimension: period_end {
    type: number
    sql: ${TABLE}."PeriodEnd" ;;
  }

  dimension_group: period_start2 {
    type: time
    sql: ${TABLE}."PeriodStart2" ;;
  }

  dimension_group: period_end2 {
    type: time
    sql: ${TABLE}."PeriodEnd2" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FiscalYear" ;;
  }

  dimension_group: fiscal_year_start_date {
    type: time
    sql: ${TABLE}."FiscalYearStartDate" ;;
  }

  dimension: period_status {
    type: string
    sql: ${TABLE}."PeriodStatus" ;;
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}."SubType" ;;
  }

  dimension: period_indicator {
    type: string
    sql: ${TABLE}."PeriodIndicator" ;;
  }

  dimension: inbound_inventory_quantity {
    type: number
    sql: ${TABLE}."InboundInventoryQuantity" ;;
  }

  dimension: outbound_inventory_quantity {
    type: number
    sql: ${TABLE}."OutboundInventoryQuantity" ;;
  }

  dimension: inbound_inventory_value_lc {
    type: number
    sql: ${TABLE}."InboundInventoryValueLC" ;;
  }

  dimension: outbound_inventory_value_lc {
    type: number
    sql: ${TABLE}."OutboundInventoryValueLC" ;;
  }


  set: detail {
    fields: [
      posting_date_time,
      item_code,
      item_description,
      item_group,
      item_type,
      item_manufacturer,
      default_preferred_vendor,
      inventory_is_managed_by_warehouse,
      company_required_item_quantity,
      company_minimum_item_quantity,
      company_maximum_item_quantity,
      warehouse_name,
      warehouse_location,
      warehouse_is_active,
      is_drop_ship_warehouse,
      is_nettable_warehouse,
      warehouse_country,
      business_partner_name,
      business_partner_type,
      industry_name,
      business_partner_territory,
      mail_country,
      fiscal_year,
      inbound_inventory_quantity,
      outbound_inventory_quantity,
      inbound_inventory_value_lc,
      outbound_inventory_value_lc
    ]
  }
}
