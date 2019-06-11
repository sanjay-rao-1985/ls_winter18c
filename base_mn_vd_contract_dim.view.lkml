view: mn_vd_contract_dim {
  derived_table: {
    sql: SELECT
      CONTRACT_WID AS CONTRACT_WID,
      'C' || CONTRACT_WID AS CONTRACT_PK,
      SRC_SYS_CONTRACT_ID AS CONTRACT_KEY,
      CONTRACT_NAME AS CONTRACT_TITLE,
      CONTRACT_NUMBER AS CONTRACT_INTERNAL_ID,
      EFF_START_DATE AS START_DATE,
      EFF_END_DATE AS END_DATE,
     'Commercial' as CTRT_TYPE_NAME,
      MDS_NUM,
      OWNER_WID
FROM MN_CONTRACT_HEADER_DIM_VW

UNION ALL

SELECT
       PROGRAM_WID AS CONTRACT_WID,
       'M' || PROGRAM_WID AS CONTRACT_PK,
       SRC_SYS_PROGRAM_ID AS CONTRACT_KEY,
       PROGRAM_NAME AS CONTRACT_TITLE,
       PROGRAM_ID_NUM AS CONTRACT_INTERNAL_ID,
       PROGRAM_START_QTR AS START_DATE,
       PROGRAM_END_QTR AS END_DATE,
       'Medicaid' as CTRT_TYPE_NAME,
       MDS_NUM,
       OWNER_WID
FROM MN_MCD_PROGRAM_DIM_VW
 ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: contract_pk {
    type: number
    primary_key: yes
    sql: ${TABLE}.CONTRACT_PK ;;
  }

  dimension: contract_key {
    type: number
    value_format: "0"
    label: "Key"
    sql: ${TABLE}.CONTRACT_KEY ;;
  }

  dimension: contract_title {
    type: string
    label: "Title"
    sql: ${TABLE}.CONTRACT_TITLE ;;
  }

  dimension: contract_internal_id {
    type: string
    label: "Internal ID"
    sql: ${TABLE}.CONTRACT_INTERNAL_ID ;;
  }

  dimension_group: start_date {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension_group: end_date {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: ctrt_type_name {
    type: string
    label: "Type"
    sql: ${TABLE}.CTRT_TYPE_NAME ;;
  }

  dimension: mds_num {
    type: string
    sql: ${TABLE}.MDS_NUM ;;
  }

  dimension: owner_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.OWNER_WID ;;
  }
  # *** Alias naming for Reversals
  dimension: rev_tx_itm_ctrt_key {
    type: number
    value_format: "0"
    label: "Rev Contract Key"
    view_label: "Reversals"
    sql: ${contract_key} ;;
  }
  # *** Alias naming for Duplicates
  dimension: dup_tx_itm_ctrt_key {
    type: number
    value_format: "0"
    label: "Contract Key"
    view_label: "File with Duplicates"
    sql: ${contract_key} ;;
  }

  # *** Alias naming for History

  dimension: hist_ctrt_int_id {
    type: string
    label: "Contract"
    sql: ${contract_internal_id} ;;
  }

  # *** Alias naming for Transaction-CG Data Details BEGIN

  dimension: cgd_tx_det_ctrt_key {
    type: number
    value_format: "0"
    label: "Contract Key"
    view_label: "Transactions-CG Data Files"
    sql: ${contract_key} ;;
  }

 # *** Alias naming for Transaction-CG Data Details ENDS

# *** Alias naming for Transaction-CG Data File History BEGIN

  dimension: cgd_file_hist_ctrt_key {
    type: number
    value_format: "0"
    label: "Contract Key"
    sql: ${contract_key} ;;
  }
# *** Alias naming for Transaction-CG Data File History ENDS

# *** Alias naming for Transaction-CG Invoice File History BEGIN

  dimension: cgi_fh_ctrt_key {
    type: number
    value_format: "0"
    label: "Contract Key"
    sql: ${contract_key} ;;
  }

  dimension: cgi_fh_ctrt_title {
    type: string
    label: "Contract"
    sql: ${TABLE}.CONTRACT_TITLE ;;
  }
# *** Alias naming for Transaction-CG Invoice File History ENDS

  set: vd_contract_set {
    fields: [contract_key,contract_title,contract_internal_id,start_date_date,start_date_week_of_year,start_date_month,start_date_quarter,
      start_date_year,start_date_time,end_date_date,end_date_week_of_year,end_date_month,end_date_quarter,end_date_year,end_date_time,ctrt_type_name]
  }

  set: vd_rev_ctrt_set {
    fields: [contract_key,contract_title,contract_internal_id,start_date_date,start_date_week_of_year,start_date_month,start_date_quarter,
      start_date_year,start_date_time,end_date_date,end_date_week_of_year,end_date_month,end_date_quarter,end_date_year,end_date_time,ctrt_type_name,rev_tx_itm_ctrt_key]
  }

  set: vd_dup_ctrt_set {
    fields: [contract_key,contract_title,contract_internal_id,start_date_date,start_date_week_of_year,start_date_month,start_date_quarter,
      start_date_year,start_date_time,end_date_date,end_date_week_of_year,end_date_month,end_date_quarter,end_date_year,end_date_time,ctrt_type_name,dup_tx_itm_ctrt_key]
  }

  set: vd_hist_ctrt_set {
    fields: [hist_ctrt_int_id]
  }

  set: vd_cgd_dup_ctrt_set {
    fields: [contract_key,contract_title,contract_internal_id,start_date_date,start_date_week_of_year,start_date_month,start_date_quarter,
      start_date_year,start_date_time,end_date_date,end_date_week_of_year,end_date_month,end_date_quarter,end_date_year,end_date_time,ctrt_type_name,dup_tx_itm_ctrt_key]
  }

  set: vd_cgd_det_ctrt_set {
    fields: [contract_key,contract_title,contract_internal_id,start_date_date,start_date_week_of_year,start_date_month,start_date_quarter,
      start_date_year,start_date_time,end_date_date,end_date_week_of_year,end_date_month,end_date_quarter,end_date_year,end_date_time,ctrt_type_name,cgd_tx_det_ctrt_key]
  }

  set: vd_cgd_file_hist_ctrt_set {
    fields: [cgd_file_hist_ctrt_key]
  }

  set: vd_cgi_fh_ctrt_set {
    fields: [cgi_fh_ctrt_key,cgi_fh_ctrt_title]
  }
}
