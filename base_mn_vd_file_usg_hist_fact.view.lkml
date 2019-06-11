view: mn_vd_file_usg_hist_fact {
    sql_table_name: MN_VD_FILE_USG_HIST_FACT_VW ;;

  dimension: file_history_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.FILE_HISTORY_WID ;;
  }

  dimension: file_wid {
    type: number
    hidden: yes
    label: "File ID"
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: request_id {
    type: number
    value_format: "0"
    label: "Request ID"
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: action {
    type: string
    label: "Action"
    sql: ${TABLE}.ACTION ;;
  }

  dimension: chain_validation_set {
    type: string
    label: "Chained Validation Set"
    sql: ${TABLE}.CHAIN_VALIDATION_SET ;;
  }

  dimension: validation_set {
    type: string
    label: "Validation Set"
    sql: ${TABLE}.VALIDATION_SET ;;
  }

  dimension: validation_options {
    type: string
    label: "Validation Options"
    sql: ${TABLE}.VALIDATION_OPTIONS ;;
  }

  dimension: export_options {
    type: string
    label: "Export Options"
    sql: ${TABLE}.EXPORT_OPTIONS ;;
  }

  dimension_group: date_time {
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
    sql: ${TABLE}.DATE_TIME ;;
  }

  dimension: modified_by {
    type: string
    label: "Last Modified user"
    sql: ${TABLE}.MODIFIED_BY ;;
  }

  dimension_group: modified_at {
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
    sql: ${TABLE}.MODIFIED_AT ;;
  }

  dimension: tpa_file_type {
    type: string
    label: "TPA File Type"
    sql: ${TABLE}.TPA_FILE_TYPE ;;
  }

  dimension: tpa_filename {
    type: string
    label: "TPA File Name"
    sql: ${TABLE}.TPA_FILENAME ;;
  }

  dimension: file_data_type {
    type: string
    hidden: yes
    sql: ${TABLE}.FILE_DATA_TYPE ;;
  }

  dimension: file_hist_id {
    type: number
    value_format: "0"
    label: "ID"
    sql: ${TABLE}.SRC_SYS_FILE_HIST_ID ;;
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

  set: Exc_Trns_File_Hist{
    fields: [tpa_file_type,tpa_filename]
  }

  set: Exc_Trns_CGD_File_Hist{
    fields: [request_id]
  }

  set: vd_cgi_fh_incl_set {
    fields: [action,chain_validation_set,validation_set,validation_options,export_options,date_time_time,date_time_date,date_time_week_of_year,date_time_month,
      date_time_quarter,date_time_year,modified_by,modified_at_time,modified_at_date,modified_at_week_of_year,modified_at_month,modified_at_quarter,modified_at_year,
      file_hist_id]
  }

}
