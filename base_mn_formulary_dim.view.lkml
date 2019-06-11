view: mn_formulary_dim {
  sql_table_name: MN_FORMULARY_DIM_VW ;;

  dimension: src_sys_formulary_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_FORMULARY_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: pbm_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PBM_WID ;;
  }

  dimension: national_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.NATIONAL_FLAG ;;
  }

  dimension: national_yes_no {
    type: string
    label: "Is National Formulary?"
    sql: CASE WHEN ${national_flag} = 1 THEN 'Yes'
              WHEN ${national_flag} = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: lifecycle_status {
    type: string
    label: "Status"
    sql: ${TABLE}.LIFECYCLE_STATUS ;;
  }

  dimension: formulary_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.FORMULARY_WID ;;
  }

  dimension: formulary_name {
    type: string
    label: "Name"
    sql: ${TABLE}.FORMULARY_NAME ;;
  }

  dimension_group: eff_start {
    type: time
    label: "Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension_group: eff_end {
    type: time
    label: "End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: default_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.DEFAULT_FLAG ;;
  }

  dimension: default_yes_no {
    type: string
    label: "Is Default Formulary ?"
    sql: CASE WHEN ${default_flag} = 1 THEN 'Yes'
              WHEN ${default_flag} = 0 THEN 'No' ELSE NULL END  ;;
  }

  dimension_group: updated {
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

  dimension: ext_formulary_id {
    type: string
    label: "ID"
    sql: ${TABLE}.EXT_FORMULARY_ID ;;
  }

#*************Master Data Set
  set: md_formulary_set {
    fields: [ext_formulary_id,formulary_name]
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [formulary_name]
  }
}
