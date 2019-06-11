view: mn_vd_file_item_error_fact {

 sql_table_name:MN_VD_FILE_ITEM_ERROR_FACT_VW ;;


  dimension: item_error_wid {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.ITEM_ERROR_WID ;;
  }

  dimension: file_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: file_item_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.FILE_ITEM_WID ;;
  }

  dimension: item_error_code {
    type: string
    label: "Error Code"
    group_label: "Item Errors"
    sql: ${TABLE}.ITEM_ERROR_CODE ;;
  }

  dimension: item_error_msg {
    type: string
    label: "Error Description"
    group_label: "Item Errors"
    sql: ${TABLE}.ITEM_ERROR_MSG ;;
  }

  dimension: item_error_severity {
    type: string
    label: "Error Severity"
    group_label: "Item Errors"
    sql: ${TABLE}.ITEM_ERROR_SEVERITY ;;
  }

  dimension: item_error_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.ITEM_ERROR_DESC ;;
  }

  dimension: file_data_type {
    type: string
    hidden: yes
    sql: ${TABLE}.FILE_DATA_TYPE ;;
  }

  dimension: src_sys_item_error_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_ITEM_ERROR_ID ;;
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

  set: itemErrors_set{
    fields: [item_error_code,item_error_msg,item_error_severity]
  }

}
