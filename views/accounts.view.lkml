view: accounts {
  derived_table: {
    sql: SELECT gl.* ,acc."AccountName",acc."ParentAccountName"
      FROM "_SYS_BIC"."sap.sbodemoau.fin.mgmt/GLAccountPeriodAmount" gl
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/GLAccount" acc
      ON gl."AccountCode"=acc."AccountCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_code {
    type: string
    primary_key: yes
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

  dimension: account_name {
    type: string
    sql: ${TABLE}."AccountName" ;;
  }

  dimension: parent_account_name {
    type: string
    sql: ${TABLE}."ParentAccountName" ;;
  }

  set: detail {
    fields: [
      account_code,
      financial_period_code,
      period_start,
      period_end,
      period_start2_time,
      period_end2_time,
      amount_lc,
      amount_sc,
      account_name,
      parent_account_name
    ]
  }
}
