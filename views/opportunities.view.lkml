view: opportunities {
  derived_table: {
    sql: SELECT seb."SalesEmployeeOrBuyerName",seb."EmployeeDepartment",o.*, b."BusinessPartnerName",b."BusinessPartnerType",b."BusinessPartnerTerritory"
      FROM "_SYS_BIC"."sap.sbodemoau.crm/OpportunityFact" o
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/BusinessPartner" b
      ON b."BusinessPartnerCode"=o."BusinessPartnerCode"
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/SalesEmployeeOrBuyer" seb
      ON seb."SalesEmployeeOrBuyerNumber"=o."SalesEmployeeOrBuyerNumber"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [latest_stage_name,days_stay_in_pipeline,potential_amount_lc,weighted_amount_sc,gross_profit_margin]
  }

  measure: sum_gross {
    type: sum
    sql:  ${gross_profit_margin};;
    drill_fields: [latest_stage_name,days_stay_in_pipeline,potential_amount_lc,weighted_amount_sc,gross_profit_margin]
  }

  measure: sum_value {
    type: sum
    sql:  ${potential_amount_lc};;
    drill_fields: [latest_stage_name,days_stay_in_pipeline,potential_amount_lc,weighted_amount_sc,gross_profit_margin]
  }

  measure: sum_weighted {
    type: sum
    sql:  ${weighted_amount_lc};;
    drill_fields: [latest_stage_name,days_stay_in_pipeline,potential_amount_lc,weighted_amount_sc,gross_profit_margin]
  }

  measure: sum_days {
    type: average
    sql:  ${days_stay_in_pipeline};;
    drill_fields: [latest_stage_name,days_stay_in_pipeline,potential_amount_lc,weighted_amount_sc,gross_profit_margin]
  }

  measure: potential_gross_profit {
    type: number
    sql:  (${sum_gross}*(MAX(${closing_percentage})/100)/${sum_weighted})*100;;
    drill_fields: [latest_stage_name,days_stay_in_pipeline,potential_amount_lc,weighted_amount_sc,gross_profit_margin]
  }

  dimension: sales_employee_or_buyer_name {
    type: string
    sql: ${TABLE}."SalesEmployeeOrBuyerName" ;;
  }

  dimension: employee_department {
    type: string
    sql: ${TABLE}."EmployeeDepartment" ;;
  }

  dimension: business_partner_code {
    type: string
    sql: ${TABLE}."BusinessPartnerCode" ;;
  }

  dimension: opportunity_type {
    type: string
    sql: ${TABLE}."OpportunityType" ;;
  }

  dimension: opportunity_number {
    type: number
    primary_key: yes
    sql: ${TABLE}."OpportunityNumber" ;;
  }

  dimension: opportunity_name {
    type: string
    sql: ${TABLE}."OpportunityName" ;;
  }

  dimension: opportunity_status {
    type: string
    sql: ${TABLE}."OpportunityStatus" ;;
  }

  dimension: sales_employee_or_buyer_number {
    type: number
    sql: ${TABLE}."SalesEmployeeOrBuyerNumber" ;;
  }

  dimension: opportunity_contact_person {
    type: string
    sql: ${TABLE}."OpportunityContactPerson" ;;
  }

  dimension: opportunity_owner {
    type: string
    sql: ${TABLE}."OpportunityOwner" ;;
  }

  dimension_group: opportunity_start_date {
    type: time
    sql: ${TABLE}."OpportunityStartDate" ;;
  }

  dimension_group: opportunity_closing_date {
    type: time
    sql: ${TABLE}."OpportunityClosingDate" ;;
  }

  dimension_group: opportunity_predicted_closing_date {
    type: time
    sql: ${TABLE}."OpportunityPredictedClosingDate" ;;
  }

  dimension: opportunity_interest {
    type: string
    sql: ${TABLE}."OpportunityInterest" ;;
  }

  dimension: business_partner_channel_partner {
    type: string
    sql: ${TABLE}."BusinessPartnerChannelPartner" ;;
  }

  dimension: business_partner_channel_industry {
    type: string
    sql: ${TABLE}."BusinessPartnerChannelIndustry" ;;
  }

  dimension: latest_stage_name {
    type: string
    sql: ${TABLE}."LatestStageName" ;;
  }

  dimension: opportunity_close_reason {
    type: string
    sql: ${TABLE}."OpportunityCloseReason" ;;
  }

  dimension: information_source {
    type: string
    sql: ${TABLE}."InformationSource" ;;
  }

  dimension: potential_amount_lc {
    type: number
    sql: ${TABLE}."PotentialAmountLC" ;;
  }

  dimension: potential_amount_sc {
    type: number
    sql: ${TABLE}."PotentialAmountSC" ;;
  }

  dimension: weighted_amount_lc {
    type: number
    sql: ${TABLE}."WeightedAmountLC" ;;
  }

  dimension: weighted_amount_sc {
    type: number
    sql: ${TABLE}."WeightedAmountSC" ;;
  }

  dimension: closing_percentage {
    type: number
    sql: ${TABLE}."ClosingPercentage" ;;
  }

  dimension: gross_profit_margin {
    type: number
    sql: ${TABLE}."GrossProfitMargin" ;;
  }

  dimension: gross_profit_lc {
    type: number
    sql: ${TABLE}."GrossProfitLC" ;;
  }

  dimension: gross_profit_sc {
    type: number
    sql: ${TABLE}."GrossProfitSC" ;;
  }

  dimension: days_stay_in_pipeline {
    type: number
    sql: ${TABLE}."DaysStayInPipeline" ;;
  }

  dimension: business_partner_name {
    type: string
    sql: ${TABLE}."BusinessPartnerName" ;;
  }

  dimension: business_partner_type {
    type: string
    sql: ${TABLE}."BusinessPartnerType" ;;
  }

  dimension: business_partner_territory {
    type: string
    sql: ${TABLE}."BusinessPartnerTerritory" ;;
  }

  set: detail {
    fields: [
      sales_employee_or_buyer_name,
      employee_department,
      business_partner_code,
      opportunity_type,
      opportunity_number,
      opportunity_name,
      opportunity_status,
      sales_employee_or_buyer_number,
      opportunity_contact_person,
      opportunity_owner,
      opportunity_start_date_time,
      opportunity_closing_date_time,
      opportunity_predicted_closing_date_time,
      opportunity_interest,
      business_partner_channel_partner,
      business_partner_channel_industry,
      latest_stage_name,
      opportunity_close_reason,
      information_source,
      potential_amount_lc,
      potential_amount_sc,
      weighted_amount_lc,
      weighted_amount_sc,
      closing_percentage,
      gross_profit_margin,
      gross_profit_lc,
      gross_profit_sc,
      days_stay_in_pipeline,
      business_partner_name,
      business_partner_type,
      business_partner_territory
    ]
  }
}
