view: rec_ageing {
  derived_table: {
    sql: SELECT va.* ,bp."BusinessPartnerName",bp."IndustryName",bp."MailCountry",bp."IsCompanyOrPrivate"
      FROM "_SYS_BIC"."sap.sbodemoau.ar.case/CustomerReceivableAgingFact" va
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/BusinessPartner" bp
      ON bp."BusinessPartnerCode"=va."BusinessPartnerCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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

  dimension: account_code {
    type: string
    sql: ${TABLE}."AccountCode" ;;
  }

  dimension: project_code {
    type: string
    sql: ${TABLE}."ProjectCode" ;;
  }

  dimension: business_partner_code {
    type: string
    sql: ${TABLE}."BusinessPartnerCode" ;;
  }

  dimension: base_document_type_code {
    type: string
    sql: ${TABLE}."BaseDocumentTypeCode" ;;
  }

  dimension: base_document_internal_key {
    type: number
    sql: ${TABLE}."BaseDocumentInternalKey" ;;
  }

  dimension: base_document_number {
    type: string
    sql: ${TABLE}."BaseDocumentNumber" ;;
  }

  dimension: installment_number {
    type: number
    sql: ${TABLE}."InstallmentNumber" ;;
  }

  dimension: sales_employee_or_buyer_number {
    type: number
    sql: ${TABLE}."SalesEmployeeOrBuyerNumber" ;;
  }

  dimension: number_of_days_outstanding {
    type: number
    sql: ${TABLE}."NumberOfDaysOutstanding" ;;
  }

  dimension: consolidated_bpcode {
    type: string
    sql: ${TABLE}."ConsolidatedBPCode" ;;
  }

  dimension: consolidated_bpname {
    type: string
    sql: ${TABLE}."ConsolidatedBPName" ;;
  }

  dimension: branch_name {
    type: string
    sql: ${TABLE}."BranchName" ;;
  }

  dimension: business_partner_reference_num {
    type: string
    sql: ${TABLE}."BusinessPartnerReferenceNum" ;;
  }

  dimension: future_remit_lc {
    type: number
    sql: ${TABLE}."FutureRemitLC" ;;
  }

  dimension: original_amount_lc {
    type: number
    sql: ${TABLE}."OriginalAmountLC" ;;
  }

  dimension: aging_balance_due_lc {
    type: number
    sql: ${TABLE}."AgingBalanceDueLC" ;;
  }

  dimension: overdue_lc {
    type: number
    sql: ${TABLE}."OverdueLC" ;;
  }

  dimension: business_partner_name {
    type: string
    sql: ${TABLE}."BusinessPartnerName" ;;
  }

  dimension: industry_name {
    type: string
    sql: ${TABLE}."IndustryName" ;;
  }

  dimension: mail_country {
    type: string
    sql: ${TABLE}."MailCountry" ;;
  }

  dimension: is_company_or_private {
    type: string
    sql: ${TABLE}."IsCompanyOrPrivate" ;;
  }

  set: detail {
    fields: [
      posting_date_time,
      due_date_time,
      document_date_time,
      account_code,
      project_code,
      business_partner_code,
      base_document_type_code,
      base_document_internal_key,
      base_document_number,
      installment_number,
      sales_employee_or_buyer_number,
      number_of_days_outstanding,
      consolidated_bpcode,
      consolidated_bpname,
      branch_name,
      business_partner_reference_num,
      future_remit_lc,
      original_amount_lc,
      aging_balance_due_lc,
      overdue_lc,
      business_partner_name,
      industry_name,
      mail_country,
      is_company_or_private
    ]
  }
}
