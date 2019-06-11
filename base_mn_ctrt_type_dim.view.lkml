view: mn_ctrt_type_dim {
  sql_table_name: MN_CTRT_TYPE_DIM_VW ;;

  dimension: ctrt_type_desc {
    type: string
    hidden: yes
    label: "Contract Type Description"
    sql: ${TABLE}.CTRT_TYPE_DESC ;;
#     group_label: "Contract Type"
  }

  dimension: ctrt_type_name {
    type: string
    label: "Type"
    sql: ${TABLE}.CTRT_TYPE_NAME ;;
#     group_label: "Contract Type"
  }

  dimension: ctrt_type_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.CTRT_TYPE_WID ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
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
    group_label: "Contract Type"
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
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_ctrt_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CTRT_TYPE_CODE ;;
    group_label: "Contract Type"
  }

#   Transaction Explore Contract atttributes start
  dimension: tx_ctrt_type {
    type: string
    label: "Type"
    sql: ${TABLE}.CTRT_TYPE_NAME ;;
  }

  #   Transaction Explore Contract atttributes start

  measure: count {
    hidden: yes
    type: count
    drill_fields: [ctrt_type_name]
    group_label: "Contract Type"
  }

  set: tx_ctrt_type_set {
    fields: [tx_ctrt_type]
  }
}
