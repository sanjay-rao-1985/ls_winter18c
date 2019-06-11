view: mn_est_rebate_payment_fact {
  sql_table_name: MN_EST_REBATE_PAYMENT_FACT_VW ;;

  dimension_group: applied_due_customer {
    type: time
    label: "Applied Due to Customer"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.APPLIED_DUE_CUSTOMER_DATE ;;
  }

  dimension_group: calculated_due_customer {
    type: time
    label: "Calc Due to Customer"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CALC_DUE_CUSTOMER_DATE ;;
  }

  dimension: calculated_pmt_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.CALCULATED_PMT_AMT ;;
    value_format_name: usd
    label: "Calculated Payment Amount"
  }

  dimension: calculated_pmt_amt_base {
    type: string
#     hidden: yes
    value_format_name: usd
    sql: ${TABLE}.CALCULATED_PMT_AMT_BASE ;;
    label: "Calculated Payment Amount"
  }

  dimension: calculation_method_name {
    type: string
    label: "Calculation Method"
    sql: ${TABLE}.CALCULATION_METHOD_NAME ;;
  }

  dimension_group: claim_complete {
    type: time
    label: "Data Complete"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLAIM_COMPLETE_DATE ;;
  }

  dimension_group: claim_due {
    type: time
    label: "Payment Due to Customer"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLAIM_DUE_DATE ;;
  }

  dimension_group: claim_invoice {
    type: time
    label: "Claim Invoice"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLAIM_INVOICE_DATE ;;
  }

  dimension_group: claim_postmark {
    type: time
    label: "Postmark"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLAIM_POSTMARK_DATE ;;
  }

  dimension_group: claim_received {
    type: time
    label: "Received"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLAIM_RECEIVED_DATE ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: currency {
    type: string
    hidden: yes
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension_group: date_created {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: effective_timezone {
    type: string
    label: "Time Zone"
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: erp_notes {
    type: string
    label: "ERP Notes"
    sql: ${TABLE}.ERP_NOTES ;;
  }

  dimension: estimate_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.ESTIMATE_AMT ;;
    value_format_name: usd
    label: "Estimated Amount"
  }

  dimension: estimate_amt_base {
    type: string
#     hidden: yes
    value_format_name: usd
    sql: ${TABLE}.ESTIMATE_AMT_BASE ;;
    label: "Estimated Amount"
  }

  dimension: estimate_pmt_amount {
    type: string
    hidden: yes
    sql: ${TABLE}.ESTIMATE_PMT_AMOUNT ;;
    label: "Amount"
  }

  dimension: estimate_pmt_amount_base {
    type: string
    hidden: yes
    sql: ${TABLE}.ESTIMATE_PMT_AMOUNT_BASE ;;
    label: "Estimated Payment Amount Base"
  }

  dimension: estimate_pmt_id_num {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_ID_NUM ;;
    label: "ID"
  }

  dimension_group: estimate_pmt_issued {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ESTIMATE_PMT_ISSUED_DATE ;;
    label: "Issued"
  }

  dimension: estimate_pmt_method {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_METHOD ;;
    label: "Method"
  }

  dimension: estimate_pmt_name {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_NAME ;;
    label: "Name"
  }

  dimension_group: estimate_pmt_needed_by {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ESTIMATE_PMT_NEEDED_BY_DATE ;;
    label: "Needed By"
  }

  dimension: estimate_pmt_number {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_NUMBER ;;
    label: "Number"
  }

  dimension: estimate_pmt_pct {
    type: number
    label: "Percent"
    value_format_name: percent_2
    sql: ${TABLE}.ESTIMATE_PMT_PCT ;;
  }

  dimension: estimate_pmt_rate {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_RATE ;;
    label: "Rate"
  }

  dimension_group: estimate_pmt_request_sent {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ESTIMATE_PMT_REQUEST_SENT_DATE ;;
    label: "Request Sent"
  }

  dimension: estimate_pmt_status {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_STATUS ;;
    label: "Status"
  }

  dimension: estimate_pmt_sub_type {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_SUB_TYPE ;;
    label: "Sub Type"
  }

  dimension: estimate_pmt_type {
    type: string
    sql: ${TABLE}.ESTIMATE_PMT_TYPE ;;
    label: "Type"
  }

  dimension: estimate_pmt_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.ESTIMATE_PMT_WID ;;
  }

  dimension: ext_pmt_type {
    type: string
    label: "External Payment Type"
    sql: ${TABLE}.EXT_PMT_TYPE ;;
  }

  dimension: internal_notes {
    type: string
    label: "Internal Notes"
    sql: ${TABLE}.INTERNAL_NOTES ;;
  }

  dimension_group: invoice {
    type: time
    label: "Invoice"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension_group: invoice_rcvd {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INVOICE_RCVD_DATE ;;
    label: "Invoice Received"
  }

  dimension: org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: overridden_pmt_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.OVERRIDDEN_PMT_AMT ;;
    value_format_name: usd
    label: "Total Amount"
  }

  dimension: overridden_pmt_amt_base {
    type: string
#     hidden: yes
    value_format_name: usd
    sql: ${TABLE}.OVERRIDDEN_PMT_AMT_BASE ;;
    label: "Total Amount"
  }

  dimension_group: paid {
    type: time
    label: "Paid"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PAID_DATE ;;
  }

  dimension: payee_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension_group: period_end {
    type: time
    label: "[GR] Rebate Period End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension_group: published {
    type: time
    label: "Published"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PUBLISHED_DATE ;;
  }

  dimension: pymt_pkg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PYMT_PKG_WID ;;
  }

  dimension_group: released {
    type: time
    label: "Released"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RELEASED_DATE ;;
  }

  dimension: requested_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.REQUESTED_AMT ;;
    value_format_name: usd
    label: "Requested Amount"
  }

  dimension: requested_amt_base {
    type: string
#     hidden: yes
    value_format_name: usd
    sql: ${TABLE}.REQUESTED_AMT_BASE ;;
    label: "Requested Amount"
  }

  dimension: rev_est_pmt_fk {
    type: string
    hidden: yes
    label: "Reversed Estimated Payment ID"
    sql: ${TABLE}.REV_EST_PMT_FK ;;
  }

  dimension_group: rev_published {
    type: time
    label: "Reversal Published"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REV_PUBLISHED_DATE ;;
  }

  dimension_group: reversed {
    type: time
    label: "Reversed"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REVERSED_DATE ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_contract_number {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_NUMBER ;;
  }

  dimension_group: src_sys_date_created {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension_group: src_sys_date_updated {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_estimate_pmt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ESTIMATE_PMT_ID ;;
  }

  dimension: src_sys_org_unit_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ORG_UNIT_ID ;;
  }

  dimension: src_sys_payee_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PAYEE_ID ;;
  }

  dimension: src_sys_pmt_pkg_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PMT_PKG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [calculation_method_name, estimate_pmt_name]
  }

  measure: total_estimated_payment_amount_base {
    type: sum
    label: "Amount"
    value_format_name: usd
    sql: ${estimate_pmt_amount_base} ;;
  }

}
