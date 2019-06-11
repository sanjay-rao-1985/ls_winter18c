view: mn_mcd_claim_dim {

  sql_table_name: MN_MCD_CLAIM_DIM_VW ;;


  dimension_group: claim_created {
    type: time
    label: "Created"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLAIM_CREATED_DATE ;;
  }

  dimension: claim_created_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_CREATED_DATE_WID ;;
  }

  dimension: claim_num {
    type: string
    label: "ID"
    sql: ${TABLE}.CLAIM_NUM ;;

    # Navigation link to RC
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }
  }

  dimension: claim_owner_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_OWNER_WID ;;
  }

  dimension: claim_status {
    type: string
    label: "Status"
    sql: ${TABLE}.CLAIM_STATUS ;;
  }

  dimension: claim_type {
    type: string
    label: "Type"
    sql: ${TABLE}.CLAIM_TYPE ;;
  }

  dimension: claim_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.CLAIM_WID ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
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
    type: time
    hidden: yes
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

  dimension_group: due {
    type: time
    label: "Original Due"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DUE_DATE ;;
  }

  dimension: due_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.DUE_DATE_WID ;;
  }

  dimension_group: invoice {
    type: time
    label: "Original Invoice"
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

  dimension: labeler {
    type: string
    label: "Labeler Code"
    hidden: yes
    sql: ${TABLE}.LABELER ;;
  }

  dimension_group: original_qtr {
    type: time
    label: "Original"
    group_label: "Original Quarter"
    timeframes: [
      quarter
    ]
    sql: ${TABLE}.ORIGINAL_QTR ;;
  }

  dimension_group: original_qtr_yr {
    type: time
    label: "Original Quarter"
    group_label: "Original Quarter"
    timeframes: [
      year
    ]
    sql: ${TABLE}.ORIGINAL_QTR ;;
  }

  dimension_group: original_qtr_reuse {
    type: time
    hidden: yes
    timeframes: [
      month_num
    ]
    sql: ${TABLE}.ORIGINAL_QTR ;;
  }

  dimension: org_qtr_half_year {
    type: string
    label: "Original Quarter Semi Year"
    group_label: "Original Quarter"
    sql:case when ${original_qtr_reuse_month_num} <=6 then concat(${original_qtr_yr_year},'-H1') else concat(${original_qtr_yr_year},'-H2') end  ;;
  }

  dimension: original_qtr_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORIGINAL_QTR_DATE_WID ;;
  }

  dimension: original_qtr_str {
    type: string
    hidden: yes
    sql: ${TABLE}.ORIGINAL_QTR_STR ;;
  }

  dimension_group: postmark {
    type: time
    label: "Original Postmark"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.POSTMARK_DATE ;;
  }

  dimension: program_wid {
    type: number
    hidden : yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: rebate_due_amt {
    type: number
    hidden: yes
    label: "Amount Due"
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: rebate_due_amt_curr {
    type: string
    hidden: yes
    sql: ${TABLE}.REBATE_DUE_AMT_CURR ;;
  }

  dimension_group: receipt {
    type: time
    label: "Original Receipt"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RECEIPT_DATE ;;
  }

  dimension: rev_num {
    type: number
    label: "Revision Number"
    sql: ${TABLE}.REV_NUM ;;
  }

  dimension: row_deleted_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_DELETED_FLAG ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: spap_qualified {
    type: string
    label: "SPAP Qualified"
    sql: ${TABLE}.SPAP_QUALIFIED ;;
  }

  dimension: src_sys_claim_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CLAIM_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden:yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

#   dimension: state_short_desc {
#     type: string
#     label: "Claim State Short Description"
#     hidden: yes
#     sql: SUBSTR(${TABLE}.state,1,2) ;;
#   }
#
#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }


  measure: Claim_Amount_Due {
    type: sum
    label: "Amount Due"
    value_format_name: usd_6
    sql: ${rebate_due_amt} ;;
  }

  measure: number_of_claims {
    type: count_distinct
    label: "# of Claims"
    value_format_name: decimal_0
    sql: ${claim_wid} ;;
  }

  set: detail {
    fields: [
      claim_created_time,
      claim_created_date_wid,
      claim_num,
      claim_owner_wid,
      claim_status,
      claim_type,
      claim_wid,
      date_created_time,
      date_updated_time,
      due_time,
      due_date_wid,
      invoice_time,
      labeler,
      original_qtr_quarter,
      original_qtr_date_wid,
      original_qtr_str,
      postmark_time,
      program_wid,
      rebate_due_amt,
      rebate_due_amt_base,
      rebate_due_amt_curr,
      receipt_time,
      rev_num,
      row_deleted_flag,
      run_id,
      source_system_id,
      spap_qualified,
      src_sys_claim_id,
      src_sys_mgr_id,
      src_sys_pk_id,
      state
    ]
  }
}
