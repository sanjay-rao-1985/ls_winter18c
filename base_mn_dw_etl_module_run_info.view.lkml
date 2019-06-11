view: mn_dw_etl_module_run_info {
  sql_table_name: MN_DW_ETL_REFRESH_INFO_VW ;;

  dimension_group: last_successful_run {
    label: "Module Last Successfull Run Start (DB Time)"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_SUCCESSFUL_RUN_DATE ;;
  }

  dimension: module_name {
    type: string
    sql: ${TABLE}.MODULE_NAME ;;
  }

  dimension_group: run_end {
    label: "Module Last Successfull Run End (DB Time)"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RUN_END_DATE ;;
  }

  dimension: application_flag {
    type: string
    primary_key: yes
    sql: ${TABLE}.APPLICATION_FLAG ;;
  }


  dimension: appl_refresh_flag {
    type: string
    sql: ${TABLE}.APPL_REFRESH_FLAG ;;
  }

  measure: count {
    type: count
    drill_fields: [module_name]
  }
}
