view: mn_user_org_map {
sql_table_name: MN_USER_ORG_MAP_VW ;;

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

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: org_wid {
    type: number
    hidden:  yes

    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: run_id {
    type: number
    hidden:  yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: user_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.USER_WID ;;
  }

  dimension: src_sys_user_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_USER_ID ;;
  }

  dimension: access_user_id {
    hidden: yes
    type: string
    sql: ${TABLE}.MEMBER_NAME ;;
  }

  dimension: user_name {
    hidden: yes
    type: string
    sql: ${TABLE}.MEMBER_NAME ;;
  }

#   measure: count {
#     type: count
#     drill_fields: []
#   }
}
