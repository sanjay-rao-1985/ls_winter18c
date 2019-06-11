view: mn_vd_file_header_fact {
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
    sql: CASE WHEN ${TABLE}.TRICARE_FLG = 'Y' THEN 'Yes' ELSE 'No' END ;;
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
    sql: ${TABLE}.AUTO_VALIDATION_FLG ;;
  }

  dimension_group: auto_vali_start_date {
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
    sql: ${TABLE}.AUTO_VALI_START_DATE ;;
  }

  dimension_group: auto_vali_end_date {
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
    sql: ${TABLE}.AUTO_VALI_END_DATE ;;
  }

  dimension: auto_vali_item_status {
    type: string
    sql: ${TABLE}.AUTO_VALI_ITEM_STATUS ;;
  }

  dimension: auto_vali_summarization_status {
    type: string
    sql: ${TABLE}.AUTO_VALI_SUMMARIZATION_STATUS ;;
  }

  dimension: auto_vali_dup_check_indicator {
    type: string
    sql: ${TABLE}.AUTO_VALI_DUP_CHECK_INDICATOR ;;
  }

  dimension: auto_validation_type {
    type: string
    sql: ${TABLE}.AUTO_VALIDATION_TYPE ;;
  }

  dimension: auto_vali_set_name_ver {
    type: string
    sql: ${TABLE}.AUTO_VALI_SET_NAME_VER ;;
  }

  dimension: cgd_file_total_items {
    type: number
    sql: ${TABLE}.CGD_FILE_TOTAL_ITEMS ;;
  }

  dimension: cgd_file_items_disputed {
    type: number
    sql: ${TABLE}.CGD_FILE_ITEMS_DISPUTED ;;
  }

  dimension: cgd_file_items_submitted {
    type: number
    sql: ${TABLE}.CGD_FILE_ITEMS_SUBMITTED ;;
  }

  dimension: cgd_file_items_accepted {
    type: number
    sql: ${TABLE}.CGD_FILE_ITEMS_ACCEPTED ;;
  }

  dimension: cgd_file_items_rejected {
    type: number
    sql: ${TABLE}.CGD_FILE_ITEMS_REJECTED ;;
  }

  dimension: cgd_file_items_upheld {
    type: number
    sql: ${TABLE}.CGD_FILE_ITEMS_UPHELD ;;
  }

  dimension: cgd_file_items_denied {
    type: number
    sql: ${TABLE}.CGD_FILE_ITEMS_DENIED ;;
  }

  dimension: file_data_type {
    type: string
    sql: ${TABLE}.FILE_DATA_TYPE ;;
  }

  dimension: src_sys_file_id {
    type: number
    value_format: "0"
    label: "File ID"
    sql: ${TABLE}.SRC_SYS_FILE_ID ;;
  }

  dimension: cgd_hist_itm_file_id {
    type: number
    value_format: "0"
    label: "Transaction File ID"
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

#   Alias column names for Reversal set
  dimension: Rev_Reversed_File {
    type: string
    label: "Rev Reversed File"
    sql: ${file_name} ;;
  }

  dimension: Rev_Reversed_Transaction_Type {
    type: string
    label: "Rev Reversed Transaction Type"
    sql: ${transaction_type} ;;
  }

  dimension: Rev_Reversed_File_Division {
    type: string
    label: "Rev Reversed File Division"
    sql: ${file_division} ;;
  }

  dimension: Rev_Reversing_File {
    type: string
    label: "Rev Reversing File"
    sql: ${file_name} ;;
  }

  dimension: Rev_Reversing_Transaction_Type {
    type: string
    label: "Rev Reversing Transaction Type"
    sql: ${transaction_type} ;;
  }

  dimension: Rev_Reversing_File_Division {
    type: string
    label: "Rev Reversing File Division"
    sql: ${file_division} ;;
  }

  dimension: Rev_Source {
    type: string
    label: "Rev Source"
    sql: ${file_source} ;;
  }

  dimension: Rev_Segment {
    type: string
    label: "Rev Segment"
    sql: ${file_segment} ;;
  }

  #   Alias column names for Duplicates set BEGIN
  dimension: dup_file_name {
    type: string
    label: "Name"
    sql: ${file_name} ;;
  }

  dimension: file_source_id {
    type: string
    label: "Source ID"
    sql: ${source_id} ;;
  }

  dimension: dup_file_source {
    type: string
    label: "Source"
    sql: ${file_source} ;;
  }

  dimension: file_transaction_type {
    type: string
    label: "Transaction Type"
    sql: ${transaction_type} ;;
  }

  dimension: dup_file_mapping_set_version {
    type: string
    label: "Mapping Set & Version"
    sql: ${file_mapping_set_version} ;;
  }

  dimension: dup_file_contract_id {
    type: string
    label: "Contract ID"
    sql: ${file_contract_id} ;;
  }

  dimension_group: dup_file_date_received {
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

  dimension_group: dup_file_start_date {
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

  dimension_group: dup_file_end_date {
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

  dimension: dup_file_last_modified_user {
    type: string
    label: "Last Modified User"
    sql: ${file_last_modified_user} ;;
  }

  dimension_group: dup_file_last_modified_date {
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

  dimension: file_last_action {
    type: string
    label: "Last Action"
    sql: ${last_action} ;;
  }

  dimension: dup_file_segment {
    type: string
    label: "Segment Name"
    sql: ${file_segment} ;;
  }

  dimension: dup_file_dup_processed_flag {
    type: string
    label: "Duplicate Processed Flag"
    sql: CASE WHEN ${file_dup_processed_flag} = 'Y' THEN 'Yes' ELSE 'No' END ;;
  }

  dimension: dup_file_id {
    type: number
    value_format: "0"
    label: "ID"
    view_label: "File with Duplicates"
    sql: ${src_sys_file_id} ;;
  }

  dimension: itm_dup_file_id {
    type: number
    value_format: "0"
    label: "File ID"
    view_label: "Items in the Duplicate Set"
    sql: ${src_sys_file_id} ;;
  }

  dimension: rev_file_id {
    type: number
    value_format: "0"
    label: "Rev File ID"
    view_label: "Reversals"
    sql: ${src_sys_file_id} ;;
  }

  dimension: ref_file_id {
    type: number
    value_format: "0"
    label: "Rev Ref File ID"
    view_label: "Reversals"
    sql: ${src_sys_file_id} ;;
  }

  dimension: item_src_sys_file_id {
    type: number
    value_format: "0"
    label: "File ID"
    view_label: "Transaction Items"
    sql: ${src_sys_file_id} ;;
  }

  dimension: itm_hist_src_file_id {
    type: number
    value_format: "0"
    label: "File ID"
    view_label: "Transaction Items"
    sql: ${src_sys_file_id} ;;
  }

  dimension: itm_tx_hist_file_id {
    type: number
    value_format: "0"
    label: "Transaction File ID"
    view_label: "Transaction Items History"
    sql: ${src_sys_file_id} ;;
  }


  measure: dup_file_items_imp_status {
    type: sum
    label: "Items in Imported Status"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_imported} ;;
  }

  measure: dup_file_items_excl_status {
    type: sum
    label: "Items in Excluded Status"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_excluded} ;;
  }

  measure: dup_file_items_incl_status {
    type: sum
    label: "Items in Included Status"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_included} ;;
  }

  measure: dup_file_items_summ {
    type: sum
    label: "Items Summarized"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_summarized} ;;
  }

  measure: dup_file_tot_amount_req {
    type: sum
    label: "Total Amount Requested"
    group_label: "File Measures"
    value_format_name: usd
    sql: ${std_file_total_amount_request} ;;
  }

  measure: dup_file_tot_scripts {
    type: sum
    label: "Total Scripts"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_total_scripts} ;;
  }

  measure: dup_file_tot_qty {
    type: sum
    label: "Total Quantity"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${file_tot_quantity} ;;
  }

  measure: dup_file_items_arch {
    type: sum
    label: "Items Archived"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_archived} ;;
  }

  measure: dup_file_itm_not_arch {
    type: sum
    label: "Items Not Archived"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${std_file_items_not_archived} ;;
  }
  #   Alias column names for Duplicates set ENDS

  #   Alias column names for Transaction History BEGIN

  dimension: hist_file_name {
    type: string
    label: "Name"
    sql: ${file_name} ;;
  }

  dimension: hist_file_mapping_set_version {
    type: string
    label: "Mapping Set"
    sql: ${file_mapping_set_version} ;;
  }

  #   Alias column names for Transaction History ENDS

#   Alias column names for Transaction-CG Data History set BEGIN

  dimension: cgd_file_hist_id {
    type: number
    value_format: "0"
    label: "ID"
    sql: ${src_sys_file_id} ;;
  }

  dimension: cgd_file_hist_name {
    type: string
    label: "Name"
    sql: ${file_name} ;;
  }

  dimension: cgd_file_hist_file_status {
    type: string
    label: "Status"
    sql: ${file_status} ;;
  }

  dimension: cgd_file_hist_source {
    type: string
    label: "Source"
    sql: ${file_source} ;;
  }

  dimension: cgd_file_hist_trns_type {
    type: string
    label: "Transaction Type"
    sql: ${transaction_type} ;;
  }

  dimension: cgd_file_hist_map_set_version {
    type: string
    label: "Mapping Set & Version"
    sql: ${file_mapping_set_version} ;;
  }

  dimension: cgd_file_hist_contract_id {
    type: string
    label: "Contract ID"
    sql: ${file_contract_id} ;;
  }

  dimension_group: cgd_file_hist_date_received {
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

  dimension_group: cgd_file_hist_start_date {
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

  dimension_group: cgd_file_hist_end_date {
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

  dimension: cgd_file_hist_last_mod_user {
    type: string
    label: "Last Modified User"
    sql: ${file_last_modified_user} ;;
  }

  dimension_group: cgd_file_hist_last_mod_date {
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

  dimension: cgd_file_hist_last_action {
    type: string
    label: "Last Action"
    sql: ${last_action} ;;
  }

  dimension: cgd_file_hist_division {
    type: string
    label: "Division"
    sql: ${file_division} ;;
  }

  dimension: cgd_file_hist_segment {
    type: string
    label: "Segment"
    sql: ${file_segment} ;;
  }

  dimension: cgd_file_hist_auto_validate {
    type: string
    label: "Automatically Validate"
    sql: CASE WHEN ${auto_validation_flg} = 'Y' THEN 'Yes' ELSE 'No' END ;;
  }

  dimension_group: cgd_file_hist_vali_start_date {
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

  dimension_group: cgd_file_hist_vali_end_date {
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

  dimension: cgd_file_hist_vali_item_status {
    type: string
    label: "Item Status"
    sql: ${auto_vali_item_status} ;;
  }

  dimension: cgd_file_hist_vali_summ_status {
    type: string
    label: "Summarization Status"
    sql: ${auto_vali_summarization_status} ;;
  }

  dimension: cgd_file_hist_vali_dup_check_ind {
    type: string
    label: "Duplicate Check Indicator"
    sql: ${auto_vali_dup_check_indicator} ;;
  }

  dimension: cgd_file_hist_vali_type {
    type: string
    label: "Type of Validation"
    sql: ${auto_validation_type} ;;
  }

  dimension: cgd_file_hist_vali_set_name_ver {
    type: string
    label: "Validation Set and Version"
    sql: ${auto_vali_set_name_ver} ;;
  }

#   Alias column names for Transaction-CG Data History set ENDS

#   Alias column names for Transcation-CG Data Item History Set BEGINS
  dimension: cgd_itm_hist_file_id {
    type: number
    value_format: "0"
    label: "Transaction File ID"
    sql: ${src_sys_file_id} ;;
  }

#   Alias column names for Transcation-CG Data Item History Set ENDS

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
    label: "Items Summerized"
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

# Alias name for Transaction-CG Data Duplicates Begins

  measure: cgd_dup_file_total_items {
    type: sum
    label: "Total Items"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_total_items} ;;
  }

  measure: cgd_dup_file_items_disputed {
    type: sum
    label: "Items Disputed"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_disputed} ;;
  }

  measure: cgd_dup_file_items_submitted {
    type: sum
    label: "Items Submitted"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_submitted} ;;
  }

  measure: cgd_dup_file_items_accepted {
    type: sum
    label: "Items Accepted"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_accepted} ;;
  }

  measure: cgd_dup_file_items_rejected {
    type: sum
    label: "Items Rejected"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_rejected} ;;
  }

  measure: cgd_dup_file_items_upheld {
    type: sum
    label: "Items Upheld"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_upheld} ;;
  }

  measure: cgd_dup_file_items_denied {
    type: sum
    label: "Items Denied"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_denied} ;;
  }

# Alias name for Transaction-CG Data Duplicates Ends

#   Alias measure names for Transaction-CG Data History set BEGIN
  measure: cgd_file_hist_total_items {
    type: sum
    label: "Total Items"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_total_items} ;;
  }

  measure: cgd_file_hist_items_disputed {
    type: sum
    label: "Items Disputed"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_disputed} ;;
  }

  measure: cgd_file_hist_items_submitted {
    type: sum
    label: "Items Submitted"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_submitted} ;;
  }

  measure: cgd_file_hist_items_accepted {
    type: sum
    label: "Items Accepted"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_accepted} ;;
  }

  measure: cgd_file_hist_items_rejected {
    type: sum
    label: "Items Rejected"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_rejected} ;;
  }

  measure: cgd_file_hist_items_upheld {
    type: sum
    label: "Items Upheld"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_upheld} ;;
  }

  measure: cgd_file_hist_items_denied {
    type: sum
    label: "Items Denied"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${cgd_file_items_denied} ;;
  }

  measure: cgd_file_hist_tot_qty {
    type: sum
    label: "Total Quantity"
    group_label: "File Measures"
    value_format_name: decimal_2
    sql: ${file_tot_quantity} ;;
  }
#   Alias measure names for Transaction-CG Data History set ENDS

#    CDG Transaction Details Explore Dimensions and Measures Bigin

  dimension: auto_validation_flg_y_n {
    type: string
    label: "Automatically Validate"
    sql: CASE WHEN ${auto_validation_flg} = 'Y' THEN 'Yes'
      WHEN ${auto_validation_flg} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: cgd_auto_vali_dup_check_ind {
    type: string
    label: "Duplicate Check Indicator"
    sql: ${auto_vali_dup_check_indicator} ;;
  }

  dimension_group: cgd_auto_vali_start {
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

  dimension_group: cgd_auto_vali_end {
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

  dimension: cgd_auto_vali_item_status {
    type: string
    label: "Item Status"
    sql: ${auto_vali_item_status} ;;
  }

  dimension: cgd_auto_vali_summ_status {
    type: string
    label: "Summarization Status"
    sql: ${auto_vali_summarization_status} ;;
  }

  dimension: cgd_auto_valid_type {
    type: string
    label: "Type of Validation"
    sql: ${auto_validation_type} ;;
  }

  dimension: cgd_auto_name_ver {
    type: string
    label: "Validation Set and Version"
    sql: ${auto_vali_set_name_ver} ;;
  }


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

  dimension: cgd_file_data_type {
    type: string
    label: "Data Type"
    sql: ${file_data_type} ;;
  }


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

#    CGD Transaction Details Explore Dimensions and Measures End

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


  set: transactionincludeset {
    fields: [src_sys_file_id,file_name,file_status,source_id,file_source,transaction_type,file_mapping_set_version,file_contract_id,
      file_date_received_date,file_date_received_week_of_year,file_date_received_month,file_date_received_quarter,file_date_received_year,
      file_date_received_time,file_start_date_date,file_start_date_week_of_year,file_start_date_month,file_start_date_quarter,file_start_date_year,
      file_start_date_time,file_end_date_date,file_end_date_week_of_year,file_end_date_month,file_end_date_quarter,
      file_end_date_year,file_end_date_time,file_last_modified_user,file_last_modified_date_date,file_last_modified_date_week_of_year,file_last_modified_date_month,
      file_last_modified_date_quarter,file_last_modified_date_year,file_last_modified_date_time,last_action,
      file_division,std_file_level_error,file_segment,std_file_caused_reversal,std_file_contains_reversal,file_dup_processed_flag,
      replaced_flg,tricare_flg,submitted_start_date_date,submitted_start_date_week_of_year,submitted_start_date_month,submitted_start_date_quarter
      ,submitted_start_date_year,submitted_start_date_time,submitted_end_date_week_of_year,submitted_end_date_month,submitted_end_date_quarter
      ,submitted_end_date_year,submitted_end_date_time,submitted_end_date_date,submitted_end_date_week_of_year,submitted_end_date_month
      ,submitted_end_date_quarter,submitted_end_date_year,submitted_end_date_time,submitted_source_id_type,submitted_source_id,
      submitted_provider_id_type,submitted_provider_id,document,submitted_tot_amt_req,submitted_tot_scripts,submitted_total_qty,
      tot_std_file_items_imprtd,std_file_items_excl,std_file_items_incl,std_file_items_summ,std_file_tot_amount_req,std_file_tot_scripts,
      file_tot_qty,std_file_items_arch,std_file_itm_not_arch]
  }

# CGD Data Details Explore Transactions - CG Data Files group Set
  set: cgd_tx_details_incl_set {
    fields: [auto_validation_flg_y_n,cgd_file_ctrt_id,cgd_file_data_type,cgd_file_division,cgd_auto_vali_dup_check_ind,cgd_file_end_date_date,
      cgd_file_end_date_week_of_year,cgd_file_end_date_month,cgd_file_end_date_quarter,cgd_file_end_date_year,cgd_file_end_date_time,
      cgd_file_id,cgd_auto_vali_item_status,cgd_last_action,cgd_file_last_mod_date_date,cgd_file_last_mod_date_week_of_year,
      cgd_file_last_mod_date_month,cgd_file_last_mod_date_quarter,cgd_file_last_mod_date_year,cgd_file_last_mod_date_time,
      cgd_file_last_mod_user,cgd_file_map_set_ver,cgd_file_name,cgd_file_date_recvd_date,cgd_file_date_recvd_week_of_year,
      cgd_file_date_recvd_month,cgd_file_date_recvd_quarter,cgd_file_date_recvd_year,cgd_file_date_recvd_time,cgd_file_segment,
      cgd_file_source,cgd_source_key,cgd_file_start_date_date,cgd_file_start_date_week_of_year,cgd_file_start_date_month,
      cgd_file_start_date_quarter,cgd_file_start_date_year,cgd_file_start_date_time,cgd_file_status,cgd_auto_vali_summ_status,
      cgd_transaction_type,cgd_auto_valid_type,cgd_auto_vali_end_date,cgd_auto_vali_end_week_of_year,cgd_auto_vali_end_month,
      cgd_auto_vali_end_quarter,cgd_auto_vali_end_year,cgd_auto_vali_end_time,cgd_auto_vali_start_date,cgd_auto_vali_start_week_of_year,
      cgd_auto_vali_start_month,cgd_auto_vali_start_quarter,cgd_auto_vali_start_year,cgd_auto_vali_start_time,cgd_auto_name_ver,
      total_cgd_file_items,tot_cgd_file_items_disp,tot_cgd_file_items_sub,tot_cgd_file_items_accpt,tot_cgd_file_items_rej,
      tot_cgd_file_itms_upheld,tot_cgd_file_itms_denied,cgd_total_qty]
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

  set: tx_item_hist_incl_set {
    fields: [src_sys_file_id,itm_hist_src_file_id,file_name,file_status,source_id,file_source,transaction_type,file_mapping_set_version,file_contract_id,
      file_date_received_date,file_date_received_week_of_year,file_date_received_month,file_date_received_quarter,file_date_received_year,
      file_date_received_time,file_start_date_date,file_start_date_week_of_year,file_start_date_month,file_start_date_quarter,file_start_date_year,
      file_start_date_time,file_end_date_date,file_end_date_week_of_year,file_end_date_month,file_end_date_quarter,
      file_end_date_year,file_end_date_time,file_last_modified_user,file_last_modified_date_date,file_last_modified_date_week_of_year,file_last_modified_date_month,
      file_last_modified_date_quarter,file_last_modified_date_year,file_last_modified_date_time,last_action,
      file_division,std_file_level_error,file_segment,std_file_caused_reversal,std_file_contains_reversal,file_dup_processed_flag,
      replaced_flg,tricare_flg,submitted_start_date_date,submitted_end_date_date,submitted_source_id_type,submitted_source_id,
      submitted_provider_id_type,submitted_provider_id,document,submitted_tot_amt_req,submitted_tot_scripts,submitted_total_qty,
      tot_std_file_items_imprtd,std_file_items_excl,std_file_items_incl,std_file_items_summ,std_file_tot_amount_req,std_file_tot_scripts,
      file_tot_qty,std_file_items_arch,std_file_itm_not_arch]
  }

# Transaction Reversal Sets Begin
  set: transactionreversed {
    fields: [Rev_Reversed_File,Rev_Reversed_Transaction_Type,Rev_Reversed_File_Division,Rev_Source,Rev_Segment,ref_file_id]
  }

  set: transactionreversing {
    fields: [Rev_Reversing_File,Rev_Reversing_Transaction_Type,Rev_Reversing_File_Division,rev_file_id]
  }
# Transaction Reversal Sets End

# Transaction Duplicates Sets Begin
  set: header_filewithduplicates {
    fields: [dup_file_id,dup_file_name,file_source_id,dup_file_source,file_transaction_type,dup_file_mapping_set_version,dup_file_contract_id,dup_file_date_received_raw,
      dup_file_date_received_time,dup_file_date_received_date,dup_file_date_received_week_of_year,dup_file_date_received_month,dup_file_date_received_quarter,
      dup_file_date_received_year,dup_file_start_date_raw,dup_file_start_date_time,dup_file_start_date_date,dup_file_start_date_week_of_year,dup_file_start_date_month,
      dup_file_start_date_quarter,dup_file_start_date_year,dup_file_end_date_raw,dup_file_end_date_time,dup_file_end_date_date,dup_file_end_date_week_of_year,dup_file_end_date_month,
      dup_file_end_date_quarter,dup_file_end_date_year,dup_file_last_modified_user,dup_file_last_modified_date_raw,dup_file_last_modified_date_time,dup_file_last_modified_date_date,
      dup_file_last_modified_date_week_of_year,dup_file_last_modified_date_month,dup_file_last_modified_date_quarter,dup_file_last_modified_date_year,file_last_action,file_division,
      std_file_level_error,dup_file_segment,std_file_caused_reversal,std_file_contains_reversal,dup_file_dup_processed_flag,dup_file_items_imp_status,dup_file_items_excl_status,
      dup_file_items_incl_status,dup_file_items_summ,dup_file_tot_amount_req,dup_file_tot_scripts,dup_file_tot_qty,dup_file_items_arch,dup_file_itm_not_arch]
  }

  set: header_itemsintheduplicateset {
    fields: [itm_dup_file_id]
  }
# Transaction Duplicates Sets End

# Transaction File History Sets Begin
#   set: header_filehist {
#     fields: [hist_file_name,transaction_type,file_source,hist_file_mapping_set_version]
#   }
# Transaction File History Sets End

# Transaction-CG Data Duplicates Sets Begin
  set: header_cgd_filewithduplicates {
    fields: [dup_file_id,dup_file_name,file_source_id,dup_file_source,file_transaction_type,dup_file_mapping_set_version,dup_file_contract_id,dup_file_date_received_raw,
      dup_file_date_received_time,dup_file_date_received_date,dup_file_date_received_week_of_year,dup_file_date_received_month,dup_file_date_received_quarter,
      dup_file_date_received_year,dup_file_start_date_raw,dup_file_start_date_time,dup_file_start_date_date,dup_file_start_date_week_of_year,dup_file_start_date_month,
      dup_file_start_date_quarter,dup_file_start_date_year,dup_file_end_date_raw,dup_file_end_date_time,dup_file_end_date_date,dup_file_end_date_week_of_year,dup_file_end_date_month,
      dup_file_end_date_quarter,dup_file_end_date_year,dup_file_last_modified_user,dup_file_last_modified_date_raw,dup_file_last_modified_date_time,dup_file_last_modified_date_date,
      dup_file_last_modified_date_week_of_year,dup_file_last_modified_date_month,dup_file_last_modified_date_quarter,dup_file_last_modified_date_year,file_last_action,file_division,
      dup_file_segment,dup_file_dup_processed_flag,cgd_dup_file_total_items,dup_file_tot_qty,cgd_dup_file_items_disputed,cgd_dup_file_items_submitted,cgd_dup_file_items_accepted,
      cgd_dup_file_items_rejected,cgd_dup_file_items_upheld,cgd_dup_file_items_denied]
  }

  set: header_cgd_itemsintheduplicateset {
    fields: [itm_dup_file_id]
  }

# Transaction-CG Data Duplicates Sets End

# Transaction-CG Data File History Sets Begin
#   set: header_cgd_filehist {
#     fields: [hist_file_name,file_source,hist_file_mapping_set_version]
#   }

  set: trns_cgd_filehist_includeset {
    fields: [cgd_file_hist_id,cgd_file_hist_name,cgd_file_hist_file_status,cgd_file_hist_source,cgd_file_hist_trns_type,cgd_file_hist_map_set_version,cgd_file_hist_contract_id,
      cgd_file_hist_date_received_raw,cgd_file_hist_date_received_time,cgd_file_hist_date_received_date,cgd_file_hist_date_received_week_of_year,cgd_file_hist_date_received_month,
      cgd_file_hist_date_received_quarter,cgd_file_hist_date_received_year,cgd_file_hist_start_date_raw,cgd_file_hist_start_date_time,cgd_file_hist_start_date_date,cgd_file_hist_start_date_week_of_year,
      cgd_file_hist_start_date_month,cgd_file_hist_start_date_quarter,cgd_file_hist_start_date_year,cgd_file_hist_end_date_raw,cgd_file_hist_end_date_time,cgd_file_hist_end_date_date,
      cgd_file_hist_end_date_week_of_year,cgd_file_hist_end_date_month,cgd_file_hist_end_date_quarter,cgd_file_hist_end_date_year,cgd_file_hist_last_mod_user,cgd_file_hist_last_mod_date_raw,
      cgd_file_hist_last_mod_date_time,cgd_file_hist_last_mod_date_date,cgd_file_hist_last_mod_date_week_of_year,cgd_file_hist_last_mod_date_month,cgd_file_hist_last_mod_date_quarter,
      cgd_file_hist_last_mod_date_year,cgd_file_hist_last_action,cgd_file_hist_division,cgd_file_hist_segment,cgd_file_hist_total_items,cgd_file_hist_items_disputed,cgd_file_hist_items_submitted,cgd_file_hist_items_accepted,
      cgd_file_hist_items_rejected,cgd_file_hist_items_upheld,cgd_file_hist_items_denied,cgd_file_hist_tot_qty,cgd_file_hist_auto_validate,cgd_file_hist_vali_start_date_raw,cgd_file_hist_vali_start_date_time,
      cgd_file_hist_vali_start_date_date,cgd_file_hist_vali_start_date_week_of_year,cgd_file_hist_vali_start_date_month,cgd_file_hist_vali_start_date_quarter,cgd_file_hist_vali_start_date_year,
      cgd_file_hist_vali_end_date_raw,cgd_file_hist_vali_end_date_time,cgd_file_hist_vali_end_date_date,cgd_file_hist_vali_end_date_week_of_year,cgd_file_hist_vali_end_date_month,cgd_file_hist_vali_end_date_quarter,
      cgd_file_hist_vali_end_date_year,cgd_file_hist_vali_item_status,cgd_file_hist_vali_summ_status,cgd_file_hist_vali_dup_check_ind,cgd_file_hist_vali_type,cgd_file_hist_vali_set_name_ver
      ]
  }
# Transaction-CG Data File History Sets End

# Transacation-CG Data Item History Sets BEGIN
  set: trns_cgd_itm_hist_incl_set {
    fields: [cgd_itm_hist_file_id,file_name]
  }

  set: trns_cgd_itm_incl_set {
    fields: [src_sys_file_id,file_name]
  }

# Transacation-CG Data Item History Sets BEGIN
}
