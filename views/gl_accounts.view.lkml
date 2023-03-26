view: gl_accounts {
  derived_table: {
    sql: SELECT acc."AccountName",acc."ParentAccountCode",acc."ParentAccountName",gl.*,gl."ClosingBalanceLC"-gl."OpeningBalanceLC"
          AS "transaction_amount" FROM "_SYS_BIC"."sap.sbodemoau.fin.mgmt/GLAccountPeriodBalance" gl
          JOIN "_SYS_BIC"."sap.sbodemoau.adm/GLAccount" acc
          ON acc."AccountCode"=gl."AccountCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sum_closing {
    type: sum
    sql: ${closing_balance_lc} ;;
    drill_fields: [detail*]
  }

  measure: avg_closing {
    type: average
    sql: ${closing_balance_lc} ;;
    drill_fields: [detail*]
  }
  measure: sum_trans {
    type: sum
    sql: ${transaction_amount} ;;
    drill_fields: [detail*]
  }

  measure: avg_trans {
    type: average
    sql: ${transaction_amount} ;;
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

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FiscalYear" ;;
  }

  dimension: opening_balance_lc {
    type: number
    sql: ${TABLE}."OpeningBalanceLC" ;;
  }

  dimension: closing_balance_lc {
    type: number
    sql: ${TABLE}."ClosingBalanceLC" ;;
  }

  dimension: opening_balance_sc {
    type: number
    sql: ${TABLE}."OpeningBalanceSC" ;;
  }

  dimension: closing_balance_sc {
    type: number
    sql: ${TABLE}."ClosingBalanceSC" ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}."transaction_amount" ;;
  }

  set: detail {
    fields: [
      account_name,
      parent_account_code,
      parent_account_name,
      account_code,
      financial_period_code,
      fiscal_year,
      opening_balance_lc,
      closing_balance_lc,
      opening_balance_sc,
      closing_balance_sc,
      transaction_amount
    ]
  }
}
