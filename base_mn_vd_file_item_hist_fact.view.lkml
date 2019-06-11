view: mn_vd_file_item_hist_fact {

  sql_table_name: MN_VD_FILE_ITEM_HIST_FACT_VW ;;

  dimension: item_history_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.ITEM_HISTORY_WID ;;
  }

  dimension: file_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: file_item_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.FILE_ITEM_WID ;;
  }

  dimension: request_id {
    type: number
    label: "Request ID"
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: source_group_id {
    type: number
    label: "Source Group Key"
    sql: ${TABLE}.SOURCE_GROUP_ID ;;
  }

  dimension: action {
    type: string
    label: "Action"
    sql: ${TABLE}.ACTION ;;
  }

  dimension: options {
    type: string
    label: "Options"
    sql: ${TABLE}.OPTIONS ;;
  }

  dimension: validation_passed {
    type: string
    label: "Validation Passed"
    sql: ${TABLE}.VALIDATION_PASSED ;;
  }

  dimension: validation_failed {
    type: string
    label: "Validation Failed"
    sql: ${TABLE}.VALIDATION_FAILED ;;
  }

  dimension: errors_generated {
    type: string
    label: "Errors Generated"
    sql: ${TABLE}.ERRORS_GENERATED ;;
  }

  dimension: item_status {
    type: string
    label: "Item Status"
    sql: ${TABLE}.ITEM_STATUS ;;
  }

  dimension: reversal_status {
    type: string
    label: "Reversal Status"
    sql: ${TABLE}.REVERSAL_STATUS ;;
  }

  dimension_group: invoked_at {
    type: time
    label: "Date/Time"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INVOKED_AT ;;
  }

  dimension: invoked_by {
    type: string
    label: "Invoked By"
    sql: ${TABLE}.INVOKED_BY ;;
  }

  dimension: dispute_status {
    type: string
    label: "Dispute Status"
    sql: ${TABLE}.DISPUTE_STATUS ;;
  }

  dimension: dispute_reasons {
    type: string
    label: "Dispute Reason Code"
    sql: ${TABLE}.DISPUTE_REASONS ;;
  }

  dimension: dispute_edits {
    type: string
    label: "TPA Dispute Edit Codes"
    sql: ${TABLE}.DISPUTE_EDITS ;;
  }

  dimension: file_data_type {
    type: string
    hidden: yes
    sql: ${TABLE}.FILE_DATA_TYPE ;;
  }

  dimension: tx_type {
    type: string
    label: "Transaction Type"
    sql: CASE WHEN ${file_data_type} = 'TX' THEN 'Commercial' ELSE 'Medicaid' END ;;
  }

  dimension: src_sys_item_hist_id {
    type: number
    label: "Transaction Item History ID"
    sql: ${TABLE}.SRC_SYS_ITEM_HIST_ID ;;
  }

  dimension: date_created {
    type: string
    hidden: yes
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: date_updated {
    type: string
    hidden: yes
    sql: ${TABLE}.DATE_UPDATED ;;
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

  set: tx_hist_item_ìncl_set {
    fields: [request_id,source_group_id,action,options,validation_passed,validation_failed,errors_generated,reversal_status,invoked_by,
      tx_type,src_sys_item_hist_id,invoked_at_date,invoked_at_week_of_year,invoked_at_month,invoked_at_quarter,invoked_at_year,
      invoked_at_time]
  }

  set: tx_hist_item_excl_set {
    fields: [dispute_status,dispute_reasons,dispute_edits]
  }

  set: cgd_hist_item_ìncl_set {
    fields: [src_sys_item_hist_id,request_id,action,options,validation_passed,validation_failed,errors_generated,item_status,dispute_status,
      dispute_reasons,dispute_edits,invoked_at_date,invoked_at_week_of_year,invoked_at_month,invoked_at_quarter,invoked_at_year,
      invoked_at_time,invoked_by]
  }

}
