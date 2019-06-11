view: mn_gp_price_type_dim {
  sql_table_name: MN_GP_PRICE_TYPE_DIM_VW ;;

  dimension: price_type_wid {
    type: number
    sql: ${TABLE}.PRICE_TYPE_WID ;;
  }

  dimension_group: eff_start_date {
    type: time
    label: "Pricetype Effective Start"
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: eff_start_date_wid {
    type: number
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension_group: eff_end_date {
    type: time
    label: "Pricetype Effective End"
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: eff_end_date_wid {
    type: number
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension: price_type_type {
    type: string
    label: "Pricetype Name"
    sql: ${TABLE}.PRICE_TYPE_TYPE ;;
  }

  dimension: description {
    type: string
    label: "Pricetype Description"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: filing_agency {
    type: string
    sql: ${TABLE}.FILING_AGENCY ;;
  }

  dimension: filing_period {
    type: string
    sql: ${TABLE}.FILING_PERIOD ;;
  }

  dimension: reported_result_type {
    type: string
    sql: ${TABLE}.REPORTED_RESULT_TYPE ;;
  }

  dimension: price_type_status {
    type: string
    sql: ${TABLE}.PRICE_TYPE_STATUS ;;
  }

  dimension: ndc9_rollup_flag {
    type: string
    sql: ${TABLE}.NDC9_ROLLUP_FLAG ;;
  }

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: src_sys_price_type_id {
    type: number
    sql: ${TABLE}.SRC_SYS_PRICE_TYPE_ID ;;
  }

  dimension: version_number {
    type: number
    label: "Pricetype Version"
    sql: ${TABLE}.VERSION_NUMBER ;;
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

  dimension: run_id {
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: date_created {
    type: time
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: price_type_name {
    type: string
    label: "Price Type"
    sql: ${TABLE}.PRICE_TYPE_TYPE ;;
  }

  set:  workbook_mapping_set {
    fields: [price_type_type,
      description,
      version_number,
      eff_start_date_date,
      eff_end_date_date]
  }

  set:  res_wb_set {
    fields: [price_type_name]
  }

}
