view: mn_vd_cgd_item_fact {
    sql_table_name:MN_VD_CGD_ITEM_FACT_VW  ;;


  dimension: cgd_item_wid {
    type: string
    primary_key: yes
    sql: ${TABLE}.CGD_ITEM_WID ;;
  }

  dimension: file_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: product_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: labeler_code {
    type: string
    label: "Labeler Code"
    sql: ${TABLE}.LABELER_CODE ;;
  }

  dimension: status {
    type: string
    label: "Status"
    sql: ${TABLE}.STATUS ;;
  }

  dimension: dup_processed {
    type: string
    hidden: yes
    label: "Dup Processed"
    sql: ${TABLE}.DUP_PROCESSED ;;
  }

  dimension: dup_processed_yn {
    type: string
    label: "Dup Processed"
    sql: CASE WHEN ${dup_processed} = 'Y' THEN 'Yes'
         WHEN ${dup_processed} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: dispute_status {
    type: string
    label: "Dispute Status"
    sql: ${TABLE}.DISPUTE_STATUS ;;
  }

  dimension: dispute_reasons {
    type: string
    label: "Dispute Reason Codes"
    sql: ${TABLE}.DISPUTE_REASONS ;;
  }

  dimension: dispute_edits {
    type: string
    label: "TPA Dispute Edit Codes"
    sql: ${TABLE}.DISPUTE_EDITS ;;
  }

  dimension: product_id {
    type: string
    label: "Product ID"
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension: rx_id {
    type: string
    label: "Prescription Reference Number"
    sql: ${TABLE}.RX_ID ;;
  }

  dimension: dispute_text {
    type: string
    label: "Dispute Text"
    sql: ${TABLE}.DISPUTE_TEXT ;;
  }

  dimension: batch_seq_num {
    type: number
    label: "Sequence Number"
    sql: ${TABLE}.BATCH_SEQ_NUM ;;
  }

  dimension: detail_ref_num {
    type: string
    label: "Detail Reference Number"
    sql: ${TABLE}.DETAIL_REF_NUM ;;
  }

  dimension: report_id {
    type: string
    label: "Report ID"
    sql: ${TABLE}.REPORT_ID ;;
  }

  dimension: prev_rpt_id {
    type: string
    label: "Previous Report ID"
    sql: ${TABLE}.PREV_RPT_ID ;;
  }

  dimension: refill_type {
    type: number
    value_format: "0"
    label: "Fill Number"
    sql: ${TABLE}.REFILL_TYPE ;;
  }

  dimension: rebate_days_supply {
    type: number
    value_format: "0"
    label: "Days Supply"
    sql: ${TABLE}.REBATE_DAYS_SUPPLY ;;
  }

  dimension_group: fill_date {
    type: time
    label: "Fill"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILL_DATE ;;
  }

  dimension_group: cgd_item_service {
    type: time
    label: "Service"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILL_DATE ;;
  }

  dimension: pharmacy_id_qualifier {
    type: string
    label: "Service Provider ID Qualifier"
    sql: ${TABLE}.PHARMACY_ID_QUALIFIER ;;
  }

  dimension: pharmacy_id {
    type: string
    label: "Service Provider ID"
    sql: ${TABLE}.PHARMACY_ID ;;
  }

  dimension: prev_reporting_pd {
    type: string
    label: "Previous Reporting Period"
    sql: ${TABLE}.PREV_REPORTING_PD ;;
  }

  dimension: curr_reporting_pd {
    type: string
    label: "Current Reporting Period"
    sql: ${TABLE}.CURR_REPORTING_PD ;;
  }

  dimension: filler {
    type: string
    label: "Filler"
    sql: ${TABLE}.FILLER ;;
  }

  dimension: quantity {
    type: number
    hidden: yes
    sql: ${TABLE}.QUANTITY ;;
  }

  dimension: gap_amt_prev {
    type: number
    hidden: yes
    sql: ${TABLE}.GAP_AMT_PREV ;;
  }

  dimension: gap_amt_curr {
    type: number
    hidden: yes
    sql: ${TABLE}.GAP_AMT_CURR ;;
  }

  dimension: gap_amt_pd {
    type: number
    hidden: yes
    sql: ${TABLE}.GAP_AMT_PD ;;
  }

  dimension: item_error_code {
    type: string
    sql: ${TABLE}.ITEM_ERROR_CODE ;;
  }

  dimension: item_error_msg {
    type: string
    sql: ${TABLE}.ITEM_ERROR_MSG ;;
  }

  dimension: item_error_severity {
    type: string
    sql: ${TABLE}.ITEM_ERROR_SEVERITY ;;
  }

  dimension: error_desc_concat {
    type: string
    label: "Item Errors Concatenated"
    sql: ${TABLE}.ERROR_DESC_CONCAT ;;
  }

  dimension: src_sys_cgd_item_id {
    type: number
    value_format: "0"
    label: "Key"
    sql: ${TABLE}.SRC_SYS_CGD_ITEM_ID ;;
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
    type: string
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

# Alias column names for Transaction-CG Data Duplicates Begins

  dimension: cgd_dup_status {
    type: string
    label: "Status"
    sql: ${status} ;;
  }

  dimension: cgd_dup_processed {
    type: string
    label: "Dup Processed"
    sql: CASE WHEN ${dup_processed} = 'Y' THEN 'Yes' ELSE 'No' END ;;
  }

  dimension: cgd_dispute_status {
    type: string
    label: "Dispute Status"
    sql: ${dispute_status} ;;
  }

  dimension: cgd_dispute_reasons {
    type: string
    label: "Dispute Reason Codes"
    sql: ${dispute_reasons} ;;
  }

  dimension: cgd_dispute_edits {
    type: string
    label: "TPA Dispute Edit Codes"
    sql: ${dispute_edits} ;;
  }

  dimension: cgd_product_id {
    type: string
    label: "Product ID"
    sql: ${product_id} ;;
  }

  dimension: cgd_rx_id {
    type: string
    label: "Prescription Reference Number"
    sql: ${rx_id} ;;
  }

  dimension: cgd_dispute_text {
    type: string
    label: "Dispute Text"
    sql: ${dispute_text} ;;
  }

  dimension: cgd_batch_seq_num {
    type: number
    value_format: "0"
    label: "Sequence Number"
    sql: ${batch_seq_num} ;;
  }

  dimension: cgd_detail_ref_num {
    type: string
    label: "Detail Reference Number"
    sql: ${detail_ref_num} ;;
  }

  dimension: cgd_report_id {
    type: string
    label: "Report ID"
    sql: ${report_id} ;;
  }

  dimension: cgd_prev_rpt_id {
    type: string
    label: "Previous Report ID"
    sql: ${prev_rpt_id} ;;
  }

  dimension: cgd_refill_type {
    type: number
    value_format: "0"
    label: "Fill Number"
    sql: ${refill_type} ;;
  }

  dimension: cgd_rebate_days_supply {
    type: number
    label: "Days Supply"
    sql: ${rebate_days_supply} ;;
  }

  dimension_group: cgd_fill_date {
    type: time
    label: "Service"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILL_DATE ;;
  }

  dimension: cgd_pharmacy_id_qualifier {
    type: string
    label: "Service Provider ID Qualifier"
    sql: ${pharmacy_id_qualifier} ;;
  }

  dimension: cgd_pharmacy_id {
    type: string
    label: "Service Provider ID"
    sql: ${pharmacy_id} ;;
  }

  dimension: cgd_prev_reporting_pd {
    type: string
    label: "Previous Reporting Period"
    sql: ${prev_reporting_pd} ;;
  }

  dimension: cgd_curr_reporting_pd {
    type: string
    label: "Current Reporting Period"
    sql: ${curr_reporting_pd} ;;
  }

  dimension: cgd_filler {
    type: string
    label: "Filler"
    sql: ${filler} ;;
  }

  dimension: itm_cgd_dup_key {
    type: number
    value_format: "0"
    label: "Key"
    sql: ${src_sys_cgd_item_id} ;;
  }

  dimension: file_cgd_dup_key {
    type: number
    value_format: "0"
    label: "Key"
    sql: ${src_sys_cgd_item_id} ;;
  }

#   Alias column names for Transcation-CG Data Item History Set BEGINS
  dimension: cgd_itm_hist_record_id {
    type: number
    value_format: "0"
    label: "Transaction Record ID"
    sql: ${src_sys_cgd_item_id} ;;
  }
#   Alias column names for Transcation-CG Data Item History Set ENDS

  measure: cgd_dup_item_qty {
    type: sum
    label: "Quantity"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${quantity} ;;
  }

  measure: cgd_dup_tot_gap_amt_prev {
    type: sum
    label: "Reported Gap Discount Previous Amount"
    group_label: "File Measures"
    value_format_name: usd
    sql: ${gap_amt_prev} ;;
  }

  measure: cgd_dup_gap_amt_curr {
    type: sum
    label: "Reported Gap Discount Current Amount"
    group_label: "File Measures"
    value_format_name: usd
    sql: ${gap_amt_curr} ;;
  }

  measure: cgd_dup_gap_amt_pd {
    type: sum
    label: "Gap Amount This Period"
    group_label: "File Measures"
    value_format_name: usd
    sql: ${gap_amt_pd} ;;
  }
# Alias column names for Transaction-CG Data Duplicates Ends

  measure: cgd_item_qty {
    type: sum
    label: "Quantity"
    group_label: "Item Measures"
    value_format_name: decimal_2
    sql: ${quantity} ;;
  }

  measure: tot_gap_amt_prev {
    type: sum
    label: "Reported Gap Discount Previous Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${gap_amt_prev} ;;
  }

  measure: cgd_gap_amt_curr {
    type: sum
    label: "Reported Gap Discount Current Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${gap_amt_curr} ;;
  }

  measure: cgd_gap_amt_pd {
    type: sum
    label: "Gap Amount This Period"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${gap_amt_pd} ;;
  }

  set: cgd_tx_items_set {
    fields: [labeler_code,status,dup_processed_yn,dispute_status,dispute_reasons,dispute_edits,product_id,rx_id,dispute_text,batch_seq_num,
      detail_ref_num,report_id,prev_rpt_id,refill_type,rebate_days_supply,cgd_item_service_date,cgd_item_service_week_of_year,
      cgd_item_service_month,cgd_item_service_quarter,cgd_item_service_year,cgd_item_service_time,pharmacy_id_qualifier,pharmacy_id,
      prev_reporting_pd,curr_reporting_pd,filler,error_desc_concat,src_sys_cgd_item_id,cgd_item_qty,tot_gap_amt_prev,cgd_gap_amt_curr,cgd_gap_amt_pd]
  }

# Transaction-CG Data Duplicates Sets Begin
  set: item_cgd_itemsintheduplicateset {
    fields: [itm_cgd_dup_key,cgd_dup_status,cgd_dup_processed,cgd_dispute_status,cgd_dispute_reasons,cgd_dispute_edits,cgd_product_id,cgd_rx_id,cgd_dispute_text,
      cgd_batch_seq_num,cgd_detail_ref_num,cgd_report_id,cgd_prev_rpt_id,cgd_refill_type,cgd_rebate_days_supply,cgd_fill_date_raw,cgd_fill_date_time,cgd_fill_date_date,
      cgd_fill_date_week_of_year,cgd_fill_date_month,cgd_fill_date_quarter,cgd_fill_date_year,cgd_pharmacy_id_qualifier,cgd_pharmacy_id,cgd_prev_reporting_pd,
      cgd_curr_reporting_pd,cgd_filler,cgd_dup_item_qty,cgd_dup_tot_gap_amt_prev,cgd_dup_gap_amt_curr,cgd_dup_gap_amt_pd]
  }

  set: item_cgd_filewithduplicates {
    fields: [file_cgd_dup_key]
  }
# Transaction-CG Data Duplicates Sets End

# Transaction-CG Data Items Hist Set BEGINS
  set: cgd_itm_hist_incl_set {
    fields: [cgd_itm_hist_record_id]
  }
# Transaction-CG Data Items Hist Set ENDS
}
