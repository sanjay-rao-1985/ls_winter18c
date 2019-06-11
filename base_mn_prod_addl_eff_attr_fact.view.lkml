view: mn_prod_addl_eff_attr_fact {
  sql_table_name: MN_PROD_ADDL_EFF_ATTR_FACT_VW ;;

  dimension: cfp_effective {
    type: string
    label: "Is Clotting Factor/Pediatric?"
    sql: ${TABLE}.CFP_EFFECTIVE ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    hidden: yes
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: end_ver_num {
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension_group: entry_end_date {
    type: time
    hidden: yes
    label: "Clotting Factor End"
    group_label: "Clotting Factor/Exclusive Pediatric"
    timeframes: [quarter,date,raw]
    sql: ${TABLE}.ENTRY_END_DATE ;;
  }

  dimension_group: entry_start_date {
    type: time
    hidden: yes
    label: "Clotting Factor Start"
    group_label: "Clotting Factor/Exclusive Pediatric"
    timeframes: [quarter,date,raw]
    sql: ${TABLE}.ENTRY_START_DATE ;;
  }

  dimension: product_cfp_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.PRODUCT_CFP_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }


  dimension: intial_drug_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.INITIAL_DRUG_WID ;;
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

  dimension: src_sys_product_cfp_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PRODUCT_CFP_ID ;;
  }

  dimension: ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension: attr_type {
    type: string
    hidden: yes
    sql:  ${TABLE}.ATTR_TYPE ;;
  }

  #####################################Clotting Factor set########################################
  set: clotting_factor_set {
    fields: [
      cfp_effective
    ]
  }


  set: detail {
    fields: [
      cfp_effective,
      date_created_time,
      date_updated_time,
      end_ver_num,
      entry_end_date_quarter,
      entry_start_date_quarter,
      product_cfp_wid,
      product_wid,
      run_id,
      source_system_id,
      src_sys_product_cfp_id,
      ver_num
    ]
  }
}
