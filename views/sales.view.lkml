view: sales {
  derived_table: {
    sql: SELECT b."BusinessPartnerName",b."IndustryName",b."IsCompanyOrPrivate",c."CountryName",f."FiscalYear",f."PeriodStart2",f."PeriodEnd2",s."PostingDate",s."DueDate",s."DocumentStatus",s."CancellationStatus",s."ShipToCountry",s."GrossProfitLC",s."GrossProfitSC",s."NetSalesAmountLC",s."NetSalesAmountSC" FROM "_SYS_BIC"."sap.sbodemoau.ar.case/SalesAnalysisFact" s
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/FinancialPeriod" f ON
      f."FinancialPeriodInternalKey"=s."FinancialPeriodInternalKey"
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/BusinessPartner" b
      ON b."BusinessPartnerCode"=s."BusinessPartnerCode"
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/Country" c
      ON b."BillToOrPayToCountry"=c."CountryCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: business_partner_name {
    type: string
    sql: ${TABLE}."BusinessPartnerName" ;;
  }

  dimension: industry_name {
    type: string
    sql: ${TABLE}."IndustryName" ;;
  }

  dimension: is_company_or_private {
    type: string
    sql: ${TABLE}."IsCompanyOrPrivate" ;;
  }

  dimension: countryname {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."CountryName" ;;
    drill_fields: [detail*]
    }
  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FiscalYear" ;;
  }

  dimension_group: period_start2 {
    type: time
    sql: ${TABLE}."PeriodStart2" ;;
  }

  dimension_group: period_end2 {
    type: time
    sql: ${TABLE}."PeriodEnd2" ;;
  }

  dimension_group: posting_date {
    type: time
    sql: ${TABLE}."PostingDate" ;;
    drill_fields: [detail*]
  }

  dimension_group: due_date {
    type: time
    sql: ${TABLE}."DueDate" ;;
  }

  dimension: document_status {
    type: string
    sql: ${TABLE}."DocumentStatus" ;;
  }

  dimension: cancellation_status {
    type: string
    sql: ${TABLE}."CancellationStatus" ;;
  }

  dimension: ship_to_country {
    type: string
    sql: ${TABLE}."ShipToCountry" ;;
  }

  dimension: gross_profit_lc {
    type: number
    sql: ${TABLE}."GrossProfitLC" ;;
    drill_fields: [detail*]
  }

  dimension: gross_profit_sc {
    type: number
    sql: ${TABLE}."GrossProfitSC" ;;
  }

  dimension: net_sales_amount_lc {
    type: number
    sql: ${TABLE}."NetSalesAmountLC" ;;
    drill_fields: [detail*]
  }

  dimension: net_sales_amount_sc {
    type: number
    sql: ${TABLE}."NetSalesAmountSC" ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      business_partner_name,
      industry_name,
      is_company_or_private,
      countryname,
      fiscal_year,
      period_start2_time,
      period_end2_time,
      posting_date_time,
      due_date_time,
      document_status,
      cancellation_status,
      ship_to_country,
      gross_profit_lc,
      gross_profit_sc,
      net_sales_amount_lc,
      net_sales_amount_sc
    ]
  }
}
