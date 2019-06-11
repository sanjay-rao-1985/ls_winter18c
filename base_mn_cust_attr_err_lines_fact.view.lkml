view: mn_cust_attr_err_lines_fact {
  sql_table_name: MN_CUST_ATTR_ERR_LINES_FACT_VW ;;

  dimension: attribute_type {
    type: string
    sql: ${TABLE}.ATTRIBUTE_TYPE ;;
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

  dimension: ext_ben_design {
    type: string
    label: "External Benefit Design"
    sql: ${TABLE}.EXT_BEN_DESIGN ;;
  }

  dimension: ext_eff_end_date {
    type: string
    label: "External Effective End Date"
    sql: ${TABLE}.EXT_EFF_END_DATE ;;
  }

  dimension: ext_eff_start_date {
    type: string
    label: "External Effective Start Date"
    sql: ${TABLE}.EXT_EFF_START_DATE ;;
  }

  dimension: ext_num_of_lives {
    type: string
    label: "Number of Lives"
    sql: ${TABLE}.EXT_NUM_OF_LIVES ;;
  }

  dimension: ext_plan_id {
    type: string
    label: "External PBM Plan ID"
    sql: ${TABLE}.EXT_PLAN_ID ;;
  }

  dimension: ext_plan_name {
    type: string
    label: "External PBM Plan Name"
    sql: ${TABLE}.EXT_PLAN_NAME ;;
  }

  dimension: invalid_plan_attr_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.INVALID_PLAN_ATTR_WID ;;
  }

  dimension: pbm_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PBM_WID ;;
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

  dimension: src_sys_inv_plan_attr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_INV_PLAN_ATTR_ID ;;
  }

#*************Master Data Benefit Design Set
  set: md_benefit_design_set {
    fields: [ext_plan_id,ext_plan_name,ext_ben_design,ext_eff_start_date,ext_eff_end_date]
  }

#*************Master Data Number Of Lives Set
  set: md_num_lives_set {
    fields: [ext_plan_id,ext_num_of_lives,ext_eff_start_date,ext_eff_end_date]
  }

}
