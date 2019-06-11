view: mn_vd_file_header_fact_reuse {
  sql_table_name: MN_VD_FILE_HEADER_FACT_VW ;;

  dimension: file_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: contract_comb_pk {
    type: number
    hidden: yes
    sql: CASE WHEN ${TABLE}.TRANSACTION_TYPE = 'Medicaid' THEN 'M' ||  ${TABLE}.CONTRACT_WID
      WHEN ${TABLE}.TRANSACTION_TYPE = 'Commercial' THEN 'C' ||  ${TABLE}.CONTRACT_WID ELSE NULL END ;;
  }

  dimension: pbm_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PBM_WID ;;
  }

  dimension: file_name {
    type: string
    label: "File Name"
    sql: ${TABLE}.FILE_NAME ;;
  }

  dimension: file_status {
    type: string
    label: "Status"
    sql: ${TABLE}.FILE_STATUS ;;
  }

  dimension: source_id {
    type: string
    label: "Source ID"
    sql: ${TABLE}.SOURCE_ID ;;
  }

  dimension: file_source {
    type: string
    label: "Source"
    sql: ${TABLE}.FILE_SOURCE ;;
  }

  dimension: transaction_type {
    type: string
    label: "Type"
    sql: ${TABLE}.TRANSACTION_TYPE ;;
  }

  dimension: file_mapping_set_version {
    type: string
    label: "Mapping Set & Version"
    sql: ${TABLE}.FILE_MAPPING_SET_VERSION ;;
  }

  dimension: file_contract_id {
    type: string
    label: "Contract ID"
    sql: ${TABLE}.FILE_CONTRACT_ID ;;
  }

  dimension_group: file_date_received {
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
    sql: ${TABLE}.FILE_DATE_RECEIVED ;;
  }

  dimension_group: file_start_date {
    type: time
    label: "Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_START_DATE ;;
  }

  dimension_group: file_end_date {
    type: time
    label: "End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_END_DATE ;;
  }

  dimension: file_last_modified_user {
    type: string
    label: "Last Modified User"
    sql: ${TABLE}.FILE_LAST_MODIFIED_USER ;;
  }

  dimension_group: file_last_modified_date {
    type: time
    label: "Last Modified"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_LAST_MODIFIED_DATE ;;
  }

  dimension: last_action {
    type: string
    label: "Last Action"
    sql: ${TABLE}.LAST_ACTION ;;
  }

  dimension: file_division {
    type: string
    label: "Division"
    sql: ${TABLE}.FILE_DIVISION ;;
  }

  dimension: std_file_level_error {
    type: string
    label: "File Level Error"
    sql: ${TABLE}.STD_FILE_LEVEL_ERROR ;;
  }

  dimension: file_segment {
    type: string
    label: "Segment"
    sql: ${TABLE}.FILE_SEGMENT ;;
  }

  dimension: std_file_caused_reversal {
    type: string
    label: "Caused Reversal"
    sql: ${TABLE}.STD_FILE_CAUSED_REVERSAL ;;
  }

  dimension: std_file_contains_reversal {
    type: string
    label: "Contains Reversal"
    sql: ${TABLE}.STD_FILE_CONTAINS_REVERSAL ;;
  }

  dimension: file_dup_processed_flag {
    type: string
    label: "Duplicate Processing Flag"
    sql: ${TABLE}.FILE_DUP_PROCESSED_FLAG ;;
  }

  dimension: replaced_flg {
    type: string
    label: "Replaced"
    sql: ${TABLE}.REPLACED_FLG ;;
  }

  dimension: tricare_flg {
    type: string
    label: "Tricare"
    sql: ${TABLE}.TRICARE_FLG ;;
  }

  dimension_group: submitted_start_date {
    type: time
    label: "Submitted Start"
    group_label: "File Attributes"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SUBMITTED_START_DATE ;;
  }

  dimension_group: submitted_end_date {
    type: time
    label: "Submitted End"
    group_label: "File Attributes"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SUBMITTED_END_DATE ;;
  }

  dimension: submitted_source_id_type {
    type: string
    label: "Submitted Source ID Type"
    group_label: "File Attributes"
    sql: ${TABLE}.SUBMITTED_SOURCE_ID_TYPE ;;
  }

  dimension: submitted_source_id {
    type: string
    label: "Submitted Source ID"
    group_label: "File Attributes"
    sql: ${TABLE}.SUBMITTED_SOURCE_ID ;;
  }

  dimension: submitted_provider_id_type {
    type: string
    label: "Submitted Provider ID Type"
    group_label: "File Attributes"
    sql: ${TABLE}.SUBMITTED_PROVIDER_ID_TYPE ;;
  }

  dimension: submitted_provider_id {
    type: string
    label: "Submitted Provider ID"
    group_label: "File Attributes"
    sql: ${TABLE}.SUBMITTED_PROVIDER_ID ;;
  }

  dimension: document {
    type: string
    label: "Document"
    group_label: "File Attributes"
    sql: ${TABLE}.DOCUMENT ;;
  }

  dimension: sub_tot_amt_req {
    type: number
    hidden: yes
    sql: ${TABLE}.SUBMITTED_TOTAL_AMOUNT_REQUEST ;;
  }


  dimension: submitted_total_scripts {
    type: number
    hidden: yes
    sql: ${TABLE}.SUBMITTED_TOTAL_SCRIPTS ;;
  }

  dimension: submitted_total_quantity {
    type: number
    hidden: yes
    sql: ${TABLE}.SUBMITTED_TOTAL_QUANTITY ;;
  }

  dimension: std_file_items_imported {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_ITEMS_IMPORTED ;;
  }

  dimension: std_file_items_excluded {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_ITEMS_EXCLUDED ;;
  }

  dimension: std_file_items_included {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_ITEMS_INCLUDED ;;
  }

  dimension: std_file_items_summarized {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_ITEMS_SUMMARIZED ;;
  }

  dimension: std_file_total_amount_request {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_TOTAL_AMOUNT_REQUEST ;;
  }

  dimension: std_file_total_scripts {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_TOTAL_SCRIPTS ;;
  }

  dimension: file_tot_quantity {
    type: number
    hidden: yes
    sql: ${TABLE}.FILE_TOT_QUANTITY ;;
  }

  dimension: std_file_items_archived {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_ITEMS_ARCHIVED ;;
  }

  dimension: std_file_items_not_archived {
    type: number
    hidden: yes
    sql: ${TABLE}.STD_FILE_ITEMS_NOT_ARCHIVED ;;
  }

  dimension: auto_validation_flg {
    type: string
    hidden: yes
    label: "Automatically Validate"
    sql: ${TABLE}.AUTO_VALIDATION_FLG ;;
  }

  dimension: auto_validation_flg_y_n {
    type: string
    label: "Automatically Validate"
    sql: CASE WHEN ${auto_validation_flg} = 'Y' THEN 'Yes'
              WHEN ${auto_validation_flg} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension_group: auto_vali_start_date {
    type: time
    label: "Validation Period Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.AUTO_VALI_START_DATE ;;
  }

  dimension_group: auto_vali_end_date {
    type: time
    label: "Validation Period End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.AUTO_VALI_END_DATE ;;
  }

  dimension: auto_vali_item_status {
    type: string
    label: "Item Status"
    sql: ${TABLE}.AUTO_VALI_ITEM_STATUS ;;
  }

  dimension: auto_vali_summarization_status {
    type: string
    label: "Summarization Status"
    sql: ${TABLE}.AUTO_VALI_SUMMARIZATION_STATUS ;;
  }

  dimension: auto_vali_dup_check_indicator {
    type: string
    label: "Duplicate Check Indicator"
    sql: ${TABLE}.AUTO_VALI_DUP_CHECK_INDICATOR ;;
  }

  dimension: auto_validation_type {
    type: string
    label: "Type of Validation"
    sql: ${TABLE}.AUTO_VALIDATION_TYPE ;;
  }

  dimension: auto_vali_set_name_ver {
    type: string
    label: "Validation Set and Version"
    sql: ${TABLE}.AUTO_VALI_SET_NAME_VER ;;
  }

  dimension: cgd_file_total_items {
    type: number
    hidden: yes
    sql: ${TABLE}.CGD_FILE_TOTAL_ITEMS ;;
  }

  dimension: cgd_file_items_disputed {
    type: number
    hidden: yes
    sql: ${TABLE}.CGD_FILE_ITEMS_DISPUTED ;;
  }

  dimension: cgd_file_items_submitted {
    type: number
    hidden: yes
    sql: ${TABLE}.CGD_FILE_ITEMS_SUBMITTED ;;
  }

  dimension: cgd_file_items_accepted {
    type: number
    hidden: yes
    sql: ${TABLE}.CGD_FILE_ITEMS_ACCEPTED ;;
  }

  dimension: cgd_file_items_rejected {
    type: number
    hidden: yes
    sql: ${TABLE}.CGD_FILE_ITEMS_REJECTED ;;
  }

  dimension: cgd_file_items_upheld {
    type: number
    hidden: yes
    sql: ${TABLE}.CGD_FILE_ITEMS_UPHELD ;;
  }

  dimension: cgd_file_items_denied {
    type: number
    hidden: yes
    sql: ${TABLE}.CGD_FILE_ITEMS_DENIED ;;
  }

  dimension: file_data_type {
    type: string
    label: "Data Type"
    sql: ${TABLE}.FILE_DATA_TYPE ;;
  }

  dimension: src_sys_file_id {
    type: number
    value_format: "0"
    label: "ID"
    sql: ${TABLE}.SRC_SYS_FILE_ID ;;
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

  dimension: item_src_sys_file_id {
    type: number
    value_format: "0"
    label: "File ID"
    view_label: "Transaction Items"
    sql: ${src_sys_file_id} ;;
  }

#   CG D Transaction Details Explore Dimensions

  dimension: cgd_file_id {
    type: number
    value_format: "0"
    label: "ID"
    sql: ${src_sys_file_id} ;;
  }

  dimension: cgd_file_name {
    type: string
    label: "Name"
    sql: ${file_name} ;;
  }

  dimension: cgd_file_status {
    type: string
    label: "Status"
    sql: ${file_status} ;;
  }

  dimension: cgd_file_source {
    type: string
    label: "Source"
    sql: ${file_source} ;;
  }

  dimension: cgd_transaction_type {
    type: string
    label: "Transaction Type"
    sql: ${transaction_type} ;;
  }

  dimension: cgd_file_map_set_ver {
    type: string
    label: "Mapping Set & Version"
    sql: ${file_mapping_set_version} ;;
  }

  dimension: cgd_file_ctrt_id {
    type: string
    label: "Contract ID"
    sql: ${file_contract_id} ;;
  }

  dimension_group: cgd_file_date_recvd {
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
    sql: ${TABLE}.FILE_DATE_RECEIVED ;;
  }

  dimension_group: cgd_file_start_date {
    type: time
    label: "Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_START_DATE ;;
  }

  dimension_group: cgd_file_end_date {
    type: time
    label: "End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_END_DATE ;;
  }

  dimension: cgd_file_last_mod_user {
    type: string
    label: "Last Modified User"
    sql: ${TABLE}.FILE_LAST_MODIFIED_USER ;;
  }

  dimension_group: cgd_file_last_mod_date {
    type: time
    label: "Last Modified"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_LAST_MODIFIED_DATE ;;
  }

  dimension: cgd_last_action {
    type: string
    label: "Last Action"
    sql: ${last_action} ;;
  }

  dimension: cgd_file_division {
    type: string
    label: "Division"
    sql: ${file_division} ;;
  }

  dimension: cgd_std_file_level_error {
    type: string
    hidden: yes
    label: "Level Error"
    sql: ${std_file_level_error} ;;
  }

  dimension: cgd_file_segment {
    type: string
    label: "Segment"
    sql: ${file_segment} ;;
  }

  dimension: cgd_item_file_id {
    type: number
    value_format: "0"
    label: "File ID"
    view_label: "Transaction Item-CG Data"
    sql: ${src_sys_file_id} ;;
  }

  dimension: cgd_item_file_name {
    type: string
    label: "File Name"
    view_label: "Transaction Item-CG Data"
    sql: ${TABLE}.FILE_NAME ;;
  }

  dimension: cgd_source_key {
    type: string
    label: "Source Key"
    sql: ${TABLE}.SOURCE_ID ;;
  }

#   CG D Transaction Details Explore Dimensions End

#   CG I Explores Dimensions Begin


  dimension: cgi_file_id {
    type: number
    value_format: "0"
    label: "ID"
    sql: ${src_sys_file_id} ;;
  }

  #Contract Key
  #File Source key

  dimension: cgi_file_name {
    type: string
    label: "Name"
    sql: ${file_name} ;;
  }

  dimension: cgi_file_status {
    type: string
    label: "Status"
    sql: ${file_status} ;;
  }

  dimension: cgi_file_source {
    type: string
    label: "Source"
    sql: ${file_source} ;;
  }

  dimension: cgi_file_trans_type {
    type: string
    label: "Transaction Type"
    sql: ${transaction_type} ;;
  }

  dimension: cgi_file_map_set_ver {
    type: string
    label: "Mapping Set & Version"
    sql: ${file_mapping_set_version} ;;
  }

  dimension: cgi_file_ctrt_id {
    type: string
    label: "Contract ID"
    sql: ${file_contract_id} ;;
  }

  dimension_group: cgi_file_recvd {
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
    sql: ${TABLE}.FILE_DATE_RECEIVED ;;
  }

  dimension_group: cgi_file_start {
    type: time
    label: "Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_START_DATE ;;
  }

  dimension_group: cgi_file_end {
    type: time
    label: "End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_END_DATE ;;
  }

  dimension: cgi_file_last_mod_user {
    type: string
    label: "Last Modified User"
    sql: ${TABLE}.FILE_LAST_MODIFIED_USER ;;
  }

  dimension_group: cgi_file_last_mod {
    type: time
    label: "Last Modified"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FILE_LAST_MODIFIED_DATE ;;
  }

  dimension: cgi_file_last_action {
    type: string
    label: "Last Action"
    sql: ${last_action} ;;
  }

  dimension: cgi_file_division {
    type: string
    label: "Division"
    sql: ${file_division} ;;
  }

#   CG I Explores Dimensions End

# Transaction Details Related Measures Begin

  measure: submitted_tot_amt_req {
    type: sum
    label: "Submitted Total Amount Requested"
    group_label: "File Attributes"
    value_format_name: usd
    sql: ${sub_tot_amt_req};;
  }

  measure: submitted_tot_scripts {
    type: sum
    label: "Submitted Total Scripts"
    group_label: "File Attributes"
    value_format_name: decimal_2
    sql: ${submitted_total_scripts};;
  }

  measure: submitted_total_qty {
    type: sum
    label: "Submitted Total Quantity"
    group_label: "File Attributes"
    value_format_name: decimal_2
    sql: ${submitted_total_quantity} ;;
  }

  measure: tot_std_file_items_imprtd {
    type: sum
    label: "Items in Imported Status"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_imported} ;;
  }

  measure: std_file_items_excl {
    type: sum
    label: "Items in Excluded Status"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_excluded} ;;
  }

  measure: std_file_items_incl {
    type: sum
    label: "Items in Included Status"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_included} ;;
  }

  measure: std_file_items_summ {
    type: sum
    label: "Items Summarized"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_summarized} ;;
  }

  measure: std_file_tot_amount_req {
    type: sum
    label: "Total Amount Requested"
    group_label: "File Measures"
    value_format_name: usd
    sql: ${std_file_total_amount_request} ;;
  }

  measure: std_file_tot_scripts {
    type: sum
    label: "Total Scripts"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_total_scripts} ;;
  }

  measure: file_tot_qty {
    type: sum
    label: "Total Quantity"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${file_tot_quantity} ;;
  }

  measure: std_file_items_arch {
    type: sum
    label: "Items Archived"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_archived} ;;
  }

  measure: std_file_itm_not_arch {
    type: sum
    label: "Items not Archived"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_not_archived} ;;
  }

# Transaction Details Measures End

# CG Details Related Measures Begin

  measure: total_cgd_file_items {
    type: sum
    label: "Total Items"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_total_items} ;;
  }

  measure: tot_cgd_file_items_disp {
    type: sum
    label: "Disputed"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_disputed} ;;
  }

  measure: tot_cgd_file_items_sub {
    type: sum
    label: "Submitted"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_submitted} ;;
  }

  measure: tot_cgd_file_items_accpt {
    type: sum
    label: "Accepted"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_accepted} ;;
  }

  measure: tot_cgd_file_items_rej {
    type: sum
    label: "Rejected"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_rejected} ;;
  }

  measure: tot_cgd_file_itms_upheld {
    type: sum
    label: "Upheld"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_upheld} ;;
  }

  measure: tot_cgd_file_itms_denied {
    type: sum
    label: "Denied"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_denied} ;;
  }

  measure: cgd_total_qty {
    type: sum
    label: "Total Quantity"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${file_tot_quantity} ;;
  }

# CG Details Measures End


  set: tx_include_set {
    fields: [src_sys_file_id,file_name,file_status,source_id,file_source,transaction_type,file_mapping_set_version,file_contract_id,
      file_date_received_date,file_date_received_week_of_year,file_date_received_month,file_date_received_quarter,file_date_received_year,
      file_date_received_time,file_start_date_date,file_start_date_week_of_year,file_start_date_month,file_start_date_quarter,file_start_date_year,
      file_start_date_time,file_end_date_date,file_end_date_week_of_year,file_end_date_month,file_end_date_quarter,
      file_end_date_year,file_end_date_time,file_last_modified_user,file_last_modified_date_date,file_last_modified_date_week_of_year,file_last_modified_date_month,
      file_last_modified_date_quarter,file_last_modified_date_year,file_last_modified_date_time,last_action,
      file_division,std_file_level_error,file_segment,std_file_caused_reversal,std_file_contains_reversal,file_dup_processed_flag,
      replaced_flg,tricare_flg,submitted_start_date_date,submitted_end_date_week_of_year,submitted_end_date_month,submitted_end_date_quarter
      ,submitted_end_date_year,submitted_end_date_time,submitted_end_date_date,submitted_end_date_week_of_year,submitted_end_date_month
      ,submitted_end_date_quarter,submitted_end_date_year,submitted_end_date_time,submitted_source_id_type,submitted_source_id,
      submitted_provider_id_type,submitted_provider_id,document,submitted_tot_amt_req,submitted_tot_scripts,submitted_total_qty,
      tot_std_file_items_imprtd,std_file_items_excl,std_file_items_incl,std_file_items_summ,std_file_tot_amount_req,std_file_tot_scripts,
      file_tot_qty,std_file_items_arch,std_file_itm_not_arch]
  }

  set: tx_det_exclude_set {
    fields: [auto_validation_flg_y_n,auto_vali_start_date_date,auto_vali_start_date_month,auto_vali_start_date_quarter,auto_vali_start_date_raw,
      auto_vali_start_date_week_of_year,auto_vali_start_date_year,auto_vali_start_date_time,auto_vali_end_date_date,auto_vali_end_date_month,auto_vali_end_date_quarter,
      auto_vali_end_date_raw,auto_vali_end_date_time,auto_vali_end_date_week_of_year,auto_vali_end_date_year,auto_vali_item_status,
      auto_vali_summarization_status,auto_vali_dup_check_indicator,auto_validation_type,auto_vali_set_name_ver,cgd_file_total_items,
      cgd_file_items_disputed,cgd_file_items_submitted,cgd_file_items_accepted,cgd_file_items_rejected,cgd_file_items_upheld,
      cgd_file_items_denied,file_data_type,auto_validation_flg_y_n,auto_vali_start_date_date,auto_vali_start_date_week_of_year
      ,auto_vali_start_date_month,auto_vali_start_date_quarter,auto_vali_start_date_year,auto_vali_start_date_time,auto_vali_end_date_date,auto_vali_end_date_week_of_year,
      auto_vali_end_date_month,auto_vali_end_date_quarter,auto_vali_end_date_year,auto_vali_end_date_time,auto_vali_item_status,auto_vali_summarization_status,
      auto_vali_dup_check_indicator,auto_validation_type,auto_vali_set_name_ver,cgd_file_id,cgd_file_name,cgd_file_status,cgd_file_source,
      cgd_transaction_type,cgd_file_map_set_ver,cgd_file_ctrt_id,cgd_file_date_recvd_date,cgd_file_date_recvd_week_of_year,cgd_file_date_recvd_month
      ,cgd_file_date_recvd_quarter,cgd_file_date_recvd_year,cgd_file_date_recvd_time,cgd_file_start_date_date,cgd_file_start_date_week_of_year,
      cgd_file_start_date_month,cgd_file_start_date_quarter,cgd_file_start_date_year,cgd_file_start_date_time,cgd_file_end_date_date,cgd_file_end_date_week_of_year,
      cgd_file_end_date_month,cgd_file_end_date_quarter,cgd_file_end_date_year,cgd_file_end_date_time,
      cgd_file_last_mod_user,cgd_file_last_mod_date_date,cgd_file_last_mod_date_week_of_year,cgd_file_last_mod_date_month,cgd_file_last_mod_date_quarter,
      cgd_file_last_mod_date_year,cgd_file_last_mod_date_time,cgd_last_action,cgd_file_division,cgd_std_file_level_error,cgd_file_segment,cgd_item_file_name,cgd_item_file_id,
      total_cgd_file_items,tot_cgd_file_items_disp,tot_cgd_file_items_sub,tot_cgd_file_items_accpt,tot_cgd_file_items_rej,
      tot_cgd_file_itms_upheld,tot_cgd_file_itms_denied,cgi_file_ctrt_id,cgi_file_recvd_date,cgi_file_recvd_time,
      cgi_file_recvd_week_of_year,cgi_file_recvd_month,cgi_file_recvd_quarter,cgi_file_recvd_year,cgi_file_start_date,cgi_file_start_time,
      cgi_file_start_week_of_year,cgi_file_start_month,cgi_file_start_quarter,cgi_file_start_year,cgi_file_end_time,cgi_file_end_date,
      cgi_file_end_week_of_year,cgi_file_end_month,cgi_file_end_quarter,cgi_file_end_year,cgi_file_last_mod_user,cgi_file_last_mod_date,
      cgi_file_last_mod_time,cgi_file_last_mod_week_of_year,cgi_file_last_mod_month,cgi_file_last_mod_quarter,cgi_file_last_mod_year,
      cgi_file_last_action,cgi_file_division,cgi_file_source,cgi_file_status,cgi_file_id,cgi_file_map_set_ver,
      cgi_file_trans_type,cgi_file_name,cgd_source_key]
  }

  set: tx_cg_det_exclude_set {
    fields: [src_sys_file_id,file_name,file_status,source_id,file_source,transaction_type,file_mapping_set_version,file_contract_id,
      file_date_received_date,file_date_received_week_of_year,file_date_received_month,file_date_received_quarter,file_date_received_year,
      file_date_received_time,file_start_date_date,file_start_date_week_of_year,file_start_date_month,file_start_date_quarter,file_start_date_year,
      file_start_date_time,file_end_date_date,file_end_date_week_of_year,file_end_date_month,file_end_date_quarter,
      file_end_date_year,file_end_date_time,file_last_modified_user,file_last_modified_date_date,file_last_modified_date_week_of_year,file_last_modified_date_month,
      file_last_modified_date_quarter,file_last_modified_date_year,file_last_modified_date_time,last_action,
      file_division,std_file_level_error,file_segment,std_file_caused_reversal,std_file_contains_reversal,file_dup_processed_flag,
      replaced_flg,tricare_flg,submitted_start_date_date,submitted_end_date_week_of_year,submitted_end_date_month,submitted_end_date_quarter
      ,submitted_end_date_year,submitted_end_date_time,submitted_end_date_date,submitted_end_date_week_of_year,submitted_end_date_month
      ,submitted_end_date_quarter,submitted_end_date_year,submitted_end_date_time,submitted_source_id_type,submitted_source_id,
      submitted_provider_id_type,submitted_provider_id,document,submitted_tot_amt_req,submitted_tot_scripts,submitted_total_qty,
      tot_std_file_items_imprtd,std_file_items_excl,std_file_items_incl,std_file_items_summ,std_file_tot_amount_req,std_file_tot_scripts,
      file_tot_qty,std_file_items_arch,std_file_itm_not_arch,submitted_start_date_date,submitted_start_date_month,submitted_start_date_week_of_year,
      submitted_start_date_quarter,submitted_start_date_year,submitted_start_date_time,item_src_sys_file_id,
      cgi_file_ctrt_id,cgi_file_recvd_date,cgi_file_recvd_time,cgi_file_recvd_week_of_year,cgi_file_recvd_month,
      cgi_file_recvd_quarter,cgi_file_recvd_year,cgi_file_start_date,cgi_file_start_time,cgi_file_start_week_of_year,cgi_file_start_month,
      cgi_file_start_quarter,cgi_file_start_year,cgi_file_end_time,cgi_file_end_date,cgi_file_end_week_of_year,cgi_file_end_month,
      cgi_file_end_quarter,cgi_file_end_year,cgi_file_last_mod_user,cgi_file_last_mod_date,cgi_file_last_mod_time,
      cgi_file_last_mod_week_of_year,cgi_file_last_mod_month,cgi_file_last_mod_quarter,cgi_file_last_mod_year,cgi_file_last_action,
      cgi_file_division,cgi_file_source,cgi_file_status,cgi_file_id,cgi_file_map_set_ver,
      cgi_file_trans_type,cgi_file_name]

  }


  set: cgd_tx_details_incl_set {
    fields: [auto_validation_flg_y_n,cgd_file_ctrt_id,file_data_type,cgd_file_division,auto_vali_dup_check_indicator,cgd_file_end_date_date,
      cgd_file_end_date_week_of_year,cgd_file_end_date_month,cgd_file_end_date_quarter,cgd_file_end_date_year,cgd_file_end_date_time,
      cgd_file_id,auto_vali_item_status,cgd_last_action,cgd_file_last_mod_date_date,cgd_file_last_mod_date_week_of_year,
      cgd_file_last_mod_date_month,cgd_file_last_mod_date_quarter,cgd_file_last_mod_date_year,cgd_file_last_mod_date_time,
      cgd_file_last_mod_user,cgd_file_map_set_ver,cgd_file_name,cgd_file_date_recvd_date,cgd_file_date_recvd_week_of_year,
      cgd_file_date_recvd_month,cgd_file_date_recvd_quarter,cgd_file_date_recvd_year,cgd_file_date_recvd_time,cgd_file_segment,
      cgd_file_source,cgd_source_key,cgd_file_start_date_date,cgd_file_start_date_week_of_year,cgd_file_start_date_month,
      cgd_file_start_date_quarter,cgd_file_start_date_year,cgd_file_start_date_time,cgd_file_status,auto_vali_summarization_status,
      cgd_transaction_type,auto_validation_type,auto_vali_end_date_date,auto_vali_end_date_week_of_year,auto_vali_end_date_month,
      auto_vali_end_date_quarter,auto_vali_end_date_year,auto_vali_end_date_time,auto_vali_start_date_date,auto_vali_start_date_week_of_year,
      auto_vali_start_date_month,auto_vali_start_date_quarter,auto_vali_start_date_year,auto_vali_start_date_time,auto_vali_set_name_ver]
  }

  set: vd_cgi_det_incl_set {
    fields: [cgi_file_id,cgi_file_name,cgi_file_status,cgi_file_source,cgi_file_trans_type,cgi_file_map_set_ver,cgi_file_ctrt_id,cgi_file_recvd_date,cgi_file_recvd_time,
      cgi_file_recvd_week_of_year,cgi_file_recvd_month,cgi_file_recvd_quarter,cgi_file_recvd_year,cgi_file_start_date,cgi_file_start_time,cgi_file_start_week_of_year,
      cgi_file_start_month,cgi_file_start_quarter,cgi_file_start_year,cgi_file_end_date,cgi_file_end_time,cgi_file_end_week_of_year,cgi_file_end_month,cgi_file_end_quarter,
      cgi_file_end_year,cgi_file_last_mod_user,cgi_file_last_mod_date,cgi_file_last_mod_time,cgi_file_last_mod_week_of_year,cgi_file_last_mod_month,cgi_file_last_mod_quarter,
      cgi_file_last_mod_year,cgi_file_last_action,cgi_file_division]
  }

# Transaction-CG Invoice File History Sets Begin
  set: vd_cgi_fh_incl_set {
    fields: [cgi_file_id,cgi_file_name,cgi_file_status,cgi_file_source,cgi_file_trans_type,cgi_file_map_set_ver,cgi_file_ctrt_id,cgi_file_recvd_date,cgi_file_recvd_time,
      cgi_file_recvd_week_of_year,cgi_file_recvd_month,cgi_file_recvd_quarter,cgi_file_recvd_year,cgi_file_start_date,cgi_file_start_time,cgi_file_start_week_of_year,
      cgi_file_start_month,cgi_file_start_quarter,cgi_file_start_year,cgi_file_end_date,cgi_file_end_time,cgi_file_end_week_of_year,cgi_file_end_month,cgi_file_end_quarter,
      cgi_file_end_year,cgi_file_last_mod_user,cgi_file_last_mod_time,cgi_file_last_mod_date,cgi_file_last_mod_week_of_year,cgi_file_last_mod_month,cgi_file_last_mod_quarter,
      cgi_file_last_mod_year,cgi_file_last_action,cgi_file_division]
  }

# Transaction-CG Invoice File History Sets End

}
