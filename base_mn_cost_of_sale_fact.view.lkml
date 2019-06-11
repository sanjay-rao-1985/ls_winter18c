view: mn_cost_of_sale_fact {
  sql_table_name: MN_COST_OF_SALE_FACT_VW ;;

  dimension: accrued_cost_amt {
    type: number
    label: "Accrued Cost Amount"
    sql: ${TABLE}.ACCRUED_COST_AMT ;;
  }

  dimension: accrued_cost_amt_base {
    type: number
    label: "Accrued Cost Amount Base"
    sql: ${TABLE}.ACCRUED_COST_AMT_BASE ;;
  }

  dimension: accrued_cost_amt_curr {
    type: string
    label: "Accrued Cost Amount Currency"
    sql: ${TABLE}.ACCRUED_COST_AMT_CURR ;;
  }

  dimension: bill_to_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.BILL_TO_CUSTOMER_WID ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: cost_line_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.COST_LINE_WID ;;
  }

  dimension: cost_source {
    type: string
    label: "Cost Source"
    sql: ${TABLE}.COST_SOURCE ;;
  }

  dimension: cost_type2_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.COST_TYPE2_WID ;;
  }

  dimension: cost_type3_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.COST_TYPE3_WID ;;
  }

  dimension: cost_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.COST_TYPE_WID ;;
  }

  dimension: cot_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.COT_WID ;;
  }

  dimension: customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: deal_doc_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.DEAL_DOC_WID ;;
  }

  dimension: exchange_rate {
    type: string
    label: "Exchange Rate"
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: external_cost_type {
    type: string
    sql: ${TABLE}.EXTERNAL_COST_TYPE ;;
  }

  dimension: free_good_type {
    type: string
    sql: ${TABLE}.FREE_GOOD_TYPE ;;
  }

  dimension: inclusion_type {
    type: string
    sql: ${TABLE}.INCLUSION_TYPE ;;
  }

  dimension: inv_date_wid {
    type: number
    sql: ${TABLE}.INV_DATE_WID ;;
  }

  dimension: org_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: paid_cost_amt {
    type: number
    hidden: no
    label: "Paid Cost Amount"
    sql: ${TABLE}.PAID_COST_AMT ;;
  }

  dimension: paid_cost_amt_base {
    type: number
    label: "Paid Cost Amount Base"
    sql: ${TABLE}.PAID_COST_AMT_BASE ;;
  }

  dimension: paid_cost_amt_curr {
    type: string
    sql: ${TABLE}.PAID_COST_AMT_CURR ;;
  }

  dimension: paid_cost_qty {
    type: number
    sql: ${TABLE}.PAID_COST_QTY ;;
  }

  dimension: paid_date_wid {
    type: number
    hidden: no
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: parent_distr_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PARENT_DISTR_WID ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.PAYMENT_STATUS ;;
  }

  dimension: pg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: product_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: rebate_line_ref_num {
    type: string
    label: "Rebate Line Reference Number"
    sql: ${TABLE}.REBATE_LINE_REF_NUM ;;
  }

  dimension: rebate_pmt_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_PMT_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_cot_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SALE_COT_WID ;;
  }

  dimension: sale_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SALE_CUSTOMER_WID ;;
  }

  dimension: sale_external_line_ref_id {
    type: string
    sql: ${TABLE}.SALE_EXTERNAL_LINE_REF_ID ;;
  }

  dimension: sale_external_ref_id {
    type: string
    sql: ${TABLE}.SALE_EXTERNAL_REF_ID ;;
  }

  dimension: sale_line_ref_num {
    type: string
    label: "Sale Line Reference Number"
    sql: ${TABLE}.SALE_LINE_REF_NUM ;;
  }

  dimension: sale_type {
    type: string
    label: "Sale Type"
    sql: ${TABLE}.SALE_TYPE ;;
  }

  dimension: ship_to_customer_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.SHIP_TO_CUSTOMER_WID ;;
  }

  dimension: sold_to_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SOLD_TO_CUSTOMER_WID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_line_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_LINE_ID ;;
  }

  dimension: src_sys_pmt_benefit_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PMT_BENEFIT_ID ;;
  }

  dimension: src_sys_rebate_pmt_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_REBATE_PMT_ID ;;
  }

  measure: cost_sale_count {
    type: count
    hidden: yes
    drill_fields: []
  }

}
