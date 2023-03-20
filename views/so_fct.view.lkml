view: so_fct {
  derived_table: {
    sql: SELECT * FROM "_SYS_BIC"."sap.sbodemoau.ar.case/SalesOrderFulfillmentCycleTimeFact"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: document_internal_key {
    type: number
    sql: ${TABLE}."DocumentInternalKey" ;;
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

  dimension: sales_employee_or_buyer_number {
    type: number
    sql: ${TABLE}."SalesEmployeeOrBuyerNumber" ;;
  }

  dimension: document_status {
    type: string
    sql: ${TABLE}."DocumentStatus" ;;
  }

  dimension: business_partner_code {
    type: string
    sql: ${TABLE}."BusinessPartnerCode" ;;
  }

  dimension: document_owner {
    type: string
    sql: ${TABLE}."DocumentOwner" ;;
  }

  dimension: branch_code {
    type: number
    sql: ${TABLE}."BranchCode" ;;
  }

  dimension: business_partner_channel_partner {
    type: string
    sql: ${TABLE}."BusinessPartnerChannelPartner" ;;
  }

  dimension: payment_term_code {
    type: string
    sql: ${TABLE}."PaymentTermCode" ;;
  }

  dimension: bill_to_country {
    type: string
    sql: ${TABLE}."BillToCountry" ;;
  }

  dimension: ship_to_country {
    type: string
    sql: ${TABLE}."ShipToCountry" ;;
  }

  dimension: order_fulfillment_days {
    type: number
    sql: ${TABLE}."OrderFulfillmentDays" ;;
  }

  set: detail {
    fields: [
      document_internal_key,
      posting_date_time,
      due_date_time,
      document_date_time,
      sales_employee_or_buyer_number,
      document_status,
      business_partner_code,
      document_owner,
      branch_code,
      business_partner_channel_partner,
      payment_term_code,
      bill_to_country,
      ship_to_country,
      order_fulfillment_days
    ]
  }
}
