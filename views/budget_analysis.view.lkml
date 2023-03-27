view: budget_analysis {
  derived_table: {
    sql: SELECT ba.*,ga."ParentAccountName"
      FROM "_SYS_BIC"."sap.sbodemoau.fin.bca/BudgetAnalysisQuery" ba
      JOIN "_SYS_BIC"."sap.sbodemoau.adm/GLAccount" ga
      ON
      ga."AccountCode"=ba."AccountCode"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_code {
    type: string
    sql: ${TABLE}."AccountCode" ;;
  }

  dimension: segmentation_account_code {
    type: string
    sql: ${TABLE}."SegmentationAccountCode" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."AccountName" ;;
  }

  dimension: parent_account_code {
    type: string
    sql: ${TABLE}."ParentAccountCode" ;;
  }

  dimension: bdgt_scenario_acct_internal_key {
    type: number
    sql: ${TABLE}."BdgtScenarioAcctInternalKey" ;;
  }

  dimension: bdgt_scenario_acct_row_number {
    type: number
    sql: ${TABLE}."BdgtScenarioAcctRowNumber" ;;
  }

  dimension: budget_scenario_internalkey {
    type: number
    sql: ${TABLE}."BudgetScenarioInternalkey" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."Quarter" ;;
  }

  dimension: budget_effective_year {
    type: number
    sql: ${TABLE}."BudgetEffectiveYear" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."Month" ;;
  }

  dimension: account_foreign_name {
    type: string
    sql: ${TABLE}."AccountForeignName" ;;
  }

  dimension: monthly_budget_amount_lc {
    type: number
    sql: ${TABLE}."MonthlyBudgetAmountLC" ;;
    drill_fields: [detail*]
  }

  dimension: monthly_budget_amount_sc {
    type: number
    sql: ${TABLE}."MonthlyBudgetAmountSC" ;;
  }

  dimension: monthly_actual_amount_lc {
    type: number
    sql: ${TABLE}."MonthlyActualAmountLC" ;;
  }

  dimension: monthly_actual_amount_sc {
    type: number
    sql: ${TABLE}."MonthlyActualAmountSC" ;;
  }

  dimension: parent_account_name {
    type: string
    sql: ${TABLE}."ParentAccountName" ;;
  }

  set: detail {
    fields: [
      account_code,
      segmentation_account_code,
      account_name,
      parent_account_code,
      bdgt_scenario_acct_internal_key,
      bdgt_scenario_acct_row_number,
      budget_scenario_internalkey,
      quarter,
      budget_effective_year,
      month,
      account_foreign_name,
      monthly_budget_amount_lc,
      monthly_budget_amount_sc,
      monthly_actual_amount_lc,
      monthly_actual_amount_sc,
      parent_account_name
    ]
  }
}
