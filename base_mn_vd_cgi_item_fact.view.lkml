view: mn_vd_cgi_item_fact {
  sql_table_name:MN_VD_CGI_ITEM_FACT_VW  ;;

  dimension: cgi_item_wid {
    type: number
    primary_key: yes
    sql: ${TABLE}.CGI_ITEM_WID ;;
  }

  dimension: file_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: batch_seq_num {
    type: number
    label: "Sequence Number"
    sql: ${TABLE}.BATCH_SEQ_NUM ;;
  }

  dimension: report_id {
    type: string
    label: "Report ID"
    sql: ${TABLE}.REPORT_ID ;;
  }

  dimension: manuf_p_num {
    type: string
    label: "Manufacturer P Number"
    sql: ${TABLE}.MANUF_P_NUM ;;
  }

  dimension: subm_contract_num {
    type: string
    label: "Submitting Contract Number"
    sql: ${TABLE}.SUBM_CONTRACT_NUM ;;
  }

  dimension: labeler_code {
    type: string
    label: "Labeler Code"
    sql: ${TABLE}.LABELER_CODE ;;
  }

  dimension: filler {
    type: string
    label: "Filler"
    sql: ${TABLE}.FILLER ;;
  }

  dimension: total_gap_amt_prev {
    type: number
    hidden: yes
    sql: ${TABLE}.TOTAL_GAP_AMT_PREV ;;
  }

  dimension: total_gap_amt_curr {
    type: number
    hidden: yes
    sql: ${TABLE}.TOTAL_GAP_AMT_CURR ;;
  }

  dimension: total_gap_amt_pd {
    type: number
    hidden: yes
    sql: ${TABLE}.TOTAL_GAP_AMT_PD ;;
  }

  dimension: src_sys_cgi_item_id {
    type: number
    label: "Key"
    sql: ${TABLE}.SRC_SYS_CGI_ITEM_ID ;;
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

  measure: tot_gap_amt_prev {
    type: sum
    label: "Total Reported Gap Discount Previous Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${total_gap_amt_prev} ;;
  }

  measure: tot_gap_amt_curr {
    type: sum
    label: "Total Reported Gap Discount Current Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${total_gap_amt_curr} ;;
  }

  measure: tot_gap_amt_pd {
    type: sum
    label: "Total Gap Discount Amount This Period"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${total_gap_amt_pd} ;;
  }

  set: vd_cgi_items_incl_set {
    fields: [batch_seq_num,report_id,manuf_p_num,subm_contract_num,labeler_code,filler,src_sys_cgi_item_id,tot_gap_amt_prev,tot_gap_amt_curr,tot_gap_amt_pd]
  }

}
