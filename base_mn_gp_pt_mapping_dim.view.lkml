view: mn_gp_pt_mapping_dim {
  sql_table_name:MN_GP_PT_MAPPING_DIM_VW;;

  dimension: pt_mapping_wid {
    type: number
    sql: ${TABLE}.PT_MAPPING_WID ;;
  }

  dimension: worksheet_wid {
    type: number
    sql: ${TABLE}.WORKSHEET_WID ;;
  }

  dimension: name {
    type: string
    label: "Database Column Name"
    sql: ${TABLE}.NAME ;;
  }

  dimension: display_name {
    type: string
    label: "Model N Field Name"
    sql: ${TABLE}.DISPLAY_NAME ;;
  }

  dimension: ver_num {
    type: number
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension: end_ver_num {
    type: number
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension_group: ver_start_date {
    type: time
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension_group: ver_end_date {
    type: time
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: data_source_type {
    type: string
    label: "Data Source Type"
    sql: ${TABLE}.DATA_SOURCE_TYPE ;;
  }

  dimension: workbook_data_type {
    type: string
    label: "Workbook Result Type"
    sql: ${data_source_type} ;;
  }

  dimension: src_sys_pt_mapping_id {
    type: number
    sql: ${TABLE}.SRC_SYS_PT_MAPPING_ID ;;
  }

  dimension: src_sys_worksheet_id {
    type: number
    sql: ${TABLE}.SRC_SYS_WORKSHEET_ID ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension_group: date_created {
    type: time
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  set: detail {
    fields: [
      pt_mapping_wid,
      worksheet_wid,
      name,
      display_name,
      ver_num,
      end_ver_num,
      ver_start_date_time,
      ver_end_date_time,
      data_source_type,
      src_sys_pt_mapping_id,
      src_sys_worksheet_id,
      latest_flag,
      date_created_time,
      date_updated_time,
      run_id,
      source_system_id
    ]
  }

  set: workbook_mapping_set {
    fields: [name, display_name, workbook_data_type]
  }
}
