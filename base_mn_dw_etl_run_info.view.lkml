view: mn_dw_etl_run_info {
  sql_table_name: MN_DW_ETL_FULL_RUN_INFO_VW ;;

  dimension_group: etl_start {
    label: "ETL Run Start (DB Time)"
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
    sql: ${TABLE}.RUN_START_DATE ;;
  }

  dimension_group: last_successful_run {
    label: "ETL Last Successfull Date (GMT Time)"
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

  dimension: project_name {
    hidden: yes
    type: string
    sql: ${TABLE}.PROJECT_NAME ;;
  }

  dimension: run_date_timezone {
    type: string
    sql: DBTIMEZONE ;;
  }

  dimension_group: run_end {
    label: "ETL Run End (DB Time)"
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

  dimension: elapsed_timestamp {
    label: "Days Since Last Refreshed"
    type: string
    sql: (sysdate - run_end_date) ;;
  }



  dimension: run_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: run_status {
    type: string
    sql: ${TABLE}.RUN_STATUS ;;
  }

  dimension: run_type {
    type: string
    sql: ${TABLE}.RUN_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name, module_name]
  }

}
