view: mn_prc_method_dim {
  sql_table_name: MN_PRC_METHOD_DIM_VW ;;

  dimension_group: date_created {
    type: time
    hidden:  yes
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
    hidden:  yes
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

  dimension: prc_method_desc {
    type: string
    hidden: yes
    label: "Pricing Method Description"
    sql: ${TABLE}.PRC_METHOD_DESC ;;
  }

  dimension: prc_method_name {
    type: string
    label: "Pricing Method"

    sql: ${TABLE}.PRC_METHOD_NAME ;;
  }

  dimension: prc_method_wid {
    hidden:  yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PRC_METHOD_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_prc_method_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PRC_METHOD_CODE ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [prc_method_name]
#   }
}
