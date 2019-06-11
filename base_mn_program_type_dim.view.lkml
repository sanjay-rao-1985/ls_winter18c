view: mn_program_type_dim {
  sql_table_name: MN_PROGRAM_TYPE_DIM_VW ;;

  dimension_group: date_created {
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
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: program_type_desc {
#     group_label: "Program Type"
    label: "Description"
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_DESC ;;
  }

  dimension: program_type_name {
#     group_label: "Type"
    label: "Type"
    type: string
    sql: ${TABLE}.PROGRAM_TYPE_NAME ;;
  }

  dimension: program_type_wid {
    hidden:  yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_program_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PROGRAM_TYPE_CODE ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [program_type_name]
  }
}
