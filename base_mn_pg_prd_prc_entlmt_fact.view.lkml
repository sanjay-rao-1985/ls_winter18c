view: mn_pg_prd_prc_entlmt_fact {
  sql_table_name: MN_PG_PRD_PRC_ENTLMT_FACT_VW ;;

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
    type: string
    label: "Entitlement Description"
    group_label: "Entitlements"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: end_ver_num {
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: entitlement_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.ENTITLEMENT_WID ;;
  }

  dimension: entitlement_included_excluded {
    type: string
    label: "Entitlement Included/Excluded"
    group_label: "Entitlements"
    sql: ${TABLE}.INC_EXC ;;
  }

  dimension: entitlement_name {
    type: string
    label: "Entitlement Name"
    group_label: "Entitlements"
    sql: ${TABLE}.NAME ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_entitlement_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_ENTITLEMENT_ID ;;
  }

  dimension: src_sys_struct_li_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

  dimension: entitlement_value {
    type: string
    label: "Entitlement Value"
    group_label: "Entitlements"
    sql: ${TABLE}.VALUE ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

}
