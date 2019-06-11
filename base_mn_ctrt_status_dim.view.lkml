view: mn_ctrt_status_dim {
  sql_table_name: MN_CTRT_STATUS_DIM_VW ;;

  dimension_group: date_created {
    hidden: yes
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
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    hidden: yes
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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STATUS_CODE ;;
  }

  dimension: status_desc {
    type: string
    hidden: yes
    label: "Status Description"
    sql: ${TABLE}.STATUS_DESC ;;
  }

  dimension: status_name {
    type: string
    label: "Status"
    sql: ${TABLE}.STATUS_NAME ;;
  }

  dimension: status_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.STATUS_WID ;;
  }

}
