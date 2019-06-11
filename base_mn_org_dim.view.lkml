view: mn_org_dim {
  sql_table_name: MN_ORG_DIM_VW ;;

  dimension: currency {
    type: string
    group_label: "Organization"
    label: "Org Currency"
    sql: ${TABLE}.CURRENCY ;;
  }

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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: description {
    group_label: "Organization"
    type: string
    label: "Org Description"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: org_display_name {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.ORG_DISPLAY_NAME ;;
  }

  dimension: org_name {
    group_label: "Organization"
    label: "Org ID"
    type: string
    sql: ${TABLE}.ORG_NAME ;;
  }

  dimension: org_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: parent_org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PARENT_ORG_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_org_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_ORG_ID ;;
  }

  measure: org_count {
    hidden: yes
    group_label: "Organization"
    type: count
    drill_fields: [org_name, org_display_name]
  }
}
