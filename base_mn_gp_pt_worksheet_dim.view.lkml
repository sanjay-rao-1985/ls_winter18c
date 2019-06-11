view: mn_gp_pt_worksheet_dim {
  sql_table_name:MN_GP_PT_WORKSHEET_DIM_VW;;

  dimension: worksheet_wid {
    type: number
    sql: ${TABLE}.WORKSHEET_WID ;;
  }

  dimension: price_type_wid {
    type: number
    sql: ${TABLE}.PRICE_TYPE_WID ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.DISPLAY_NAME ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: driving_worksheet_name {
    type: string
    sql: ${TABLE}.DRIVING_WORKSHEET_NAME ;;
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

  dimension: src_sys_work_sheet_id {
    type: number
    sql: ${TABLE}.SRC_SYS_WORK_SHEET_ID ;;
  }

  dimension: src_sys_price_type_id {
    type: number
    sql: ${TABLE}.SRC_SYS_PRICE_TYPE_ID ;;
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
      worksheet_wid,
      price_type_wid,
      display_name,
      description,
      name,
      driving_worksheet_name,
      ver_num,
      end_ver_num,
      ver_start_date_time,
      ver_end_date_time,
      src_sys_work_sheet_id,
      src_sys_price_type_id,
      latest_flag,
      date_created_time,
      date_updated_time,
      run_id,
      source_system_id
    ]
  }

}
