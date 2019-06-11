view: mn_distrib_mthd_dim {
  sql_table_name: MN_DISTRIB_MTHD_DIM_VW ;;

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

  dimension: dist_method_desc {
    type: string
    hidden: yes
    label: "Description"
    sql: ${TABLE}.DIST_METHOD_DESC ;;
  }

  dimension: dist_method_name {
    type: string
    label: "Distribution Method"
    sql: ${TABLE}.DIST_METHOD_NAME ;;
  }

  dimension: dist_method_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.DIST_METHOD_WID ;;
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

  dimension: src_sys_dist_method_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_DIST_METHOD_CODE ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [dist_method_name]
#   }
}
