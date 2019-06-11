view: mn_chgbk_claim_dim {
  sql_table_name: MN_CHGBK_CLAIM_DIM_VW ;;

  dimension_group: approved {
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
    sql: ${TABLE}.APPROVED_DATE ;;
  }

  dimension: chgbk_claim_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.CHGBK_CLAIM_WID ;;
  }

  dimension_group: chgbk_date_created {
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
    sql: ${TABLE}.CHGBK_DATE_CREATED ;;
  }

  dimension_group: chgbk_date_updated {
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
    sql: ${TABLE}.CHGBK_DATE_UPDATED ;;
  }

  dimension: claim_id_num {
    type: string
    sql: ${TABLE}.CLAIM_ID_NUM ;;
  }

  dimension_group: credit_memo_rcvd {
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
    sql: ${TABLE}.CREDIT_MEMO_RCVD_DATE ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension_group: date_created {
    hidden: yes
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
    hidden: yes
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

  dimension: debit_memo_id {
    type: string
    sql: ${TABLE}.DEBIT_MEMO_ID ;;
  }

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension_group: fiscal_end {
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
    sql: ${TABLE}.FISCAL_END_DATE ;;
  }

  dimension_group: fiscal_start {
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
    sql: ${TABLE}.FISCAL_START_DATE ;;
  }

  dimension: line_count {
    type: string
    sql: ${TABLE}.LINE_COUNT ;;
  }

  dimension: org_unit_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORG_UNIT_WID ;;
  }

  dimension: owner_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.OWNER_WID ;;
  }

  dimension_group: paid {
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
    sql: ${TABLE}.PAID_DATE ;;
  }

  dimension: payee_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension: pmt_amt {
    type: string
    sql: ${TABLE}.PMT_AMT ;;
  }

  dimension: pmt_amt_base {
    type: string
    sql: ${TABLE}.PMT_AMT_BASE ;;
  }

  dimension: pmt_doc_id {
    type: string
    sql: ${TABLE}.PMT_DOC_ID ;;
  }

  dimension: pmt_method {
    type: string
    sql: ${TABLE}.PMT_METHOD ;;
  }

  dimension_group: pmt_requested {
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
    sql: ${TABLE}.PMT_REQUESTED_DATE ;;
  }

  dimension: reversal_amt {
    type: string
    sql: ${TABLE}.REVERSAL_AMT ;;
  }

  dimension: reversal_amt_base {
    type: string
    sql: ${TABLE}.REVERSAL_AMT_BASE ;;
  }

  dimension_group: reversed {
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
    sql: ${TABLE}.REVERSED_DATE ;;
  }

  dimension: row_deleted_flag {
    type: string
    sql: ${TABLE}.ROW_DELETED_FLAG ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_chgbk_claim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CHGBK_CLAIM_ID ;;
  }

  dimension: src_sys_org_unit_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_ORG_UNIT_ID ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.SRC_SYS_OWNER_ID ;;
  }

  dimension: src_sys_payee_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PAYEE_ID ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.STATUS ;;
  }


  dimension: status {
    type: string
    sql: CASE
      WHEN ${TABLE}.STATUS  = 'REJE' THEN 'Rejected'
      WHEN ${TABLE}.STATUS  = 'INPR' THEN 'In Process'
      WHEN ${TABLE}.STATUS  = 'APPR' THEN 'Approved'
      WHEN ${TABLE}.STATUS  = 'PEND' THEN 'Pending Approval'
      WHEN ${TABLE}.STATUS  = 'PMT_RQST' THEN 'Payment Requested'
      WHEN ${TABLE}.STATUS  = 'PAID' THEN 'Paid'
      END
    ;;
  }


  dimension: total_approved_amt {
    type: string
    sql: ${TABLE}.TOTAL_APPROVED_AMT ;;
  }

  dimension: total_approved_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_APPROVED_AMT_BASE ;;
  }

  dimension: total_discrepancy_amt {
    type: string
    sql: ${TABLE}.TOTAL_DISCREPANCY_AMT ;;
  }

  dimension: total_discrepancy_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_DISCREPANCY_AMT_BASE ;;
  }

  dimension: total_requested_amt {
    type: string
    sql: ${TABLE}.TOTAL_REQUESTED_AMT ;;
  }

  dimension: total_requested_amt_base {
    type: string
    sql: ${TABLE}.TOTAL_REQUESTED_AMT_BASE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
