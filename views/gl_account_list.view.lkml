view: gl_account_list {
  derived_table: {
    sql: SELECT acc."AccountName",acc."ParentAccountCode",acc."ParentAccountName",gl.* FROM
      "_SYS_BIC"."sap.sbodemoau.fin.mgmt/GLAccountPeriodAmount" gl
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/GLAccount" acc
      ON acc."AccountCode"=gl."AccountCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: sum_amount {
    type: sum
    sql: ${amount_lc} ;;
    drill_fields: [detail*]
  }

  measure: avg_amount {
    type: average
    sql: ${amount_lc} ;;
    drill_fields: [detail*]
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."AccountName" ;;
  }

  dimension: parent_account_code {
    type: string
    sql: ${TABLE}."ParentAccountCode" ;;
  }

  dimension: parent_account_name {
    type: string
    sql: ${TABLE}."ParentAccountName" ;;
  }

  dimension: account_code {
    type: string
    sql: ${TABLE}."AccountCode" ;;
  }

  dimension: financial_period_code {
    type: string
    sql: ${TABLE}."FinancialPeriodCode" ;;
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

  dimension: amount_lc {
    type: number
    sql: ${TABLE}."AmountLC" ;;
  }

  dimension: amount_sc {
    type: number
    sql: ${TABLE}."AmountSC" ;;
  }

  set: detail {
    fields: [
      account_name,
      parent_account_code,
      parent_account_name,
      account_code,
      financial_period_code,
      period_start,
      period_end,
      period_start2_time,
      period_end2_time,
      amount_lc,
      amount_sc
    ]
  }
}
