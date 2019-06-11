view: mn_rbt_qual_prod_map_all {
  sql_table_name: MN_RBT_QUAL_PROD_MAP_ALL_VW ;;

  dimension: basket_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BASKET_WID ;;
  }

  dimension: contract_type {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
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

  dimension: eff_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_END_DATE_WID ;;
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

  dimension: eff_start_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension: excluded_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.EXCLUDED_FLAG ;;
  }

  dimension: excluded_flag_yes_no {
    type: string
    label: "Is Excluded ?"
    sql: CASE WHEN ${excluded_flag} = 'Y' THEN 'Yes'
      WHEN ${excluded_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: included_from_ctrt_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.INCLUDED_FROM_CTRT_FLAG ;;
  }

  dimension: included_from_ctrt_yes_no {
    type: string
    label: "Is Included From Contract ?"
    sql: CASE WHEN ${included_from_ctrt_flag} = 'Y' THEN 'Yes'
      WHEN ${included_from_ctrt_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: included_from_pg_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.INCLUDED_FROM_PG_FLAG ;;
  }

  dimension: included_from_pg_yes_no {
    type: string
    label: "Is Included From Price Program ?"
    sql: CASE WHEN ${included_from_pg_flag} = 'Y' THEN 'Yes'
      WHEN ${included_from_pg_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: override_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.OVERRIDE_FLAG ;;
  }

  dimension: override_yes_no {
    type: string
    sql: CASE WHEN ${override_flag} = 'Y' THEN 'Yes'
      WHEN ${override_flag} = 'N' THEN 'No' ELSE Null END ;;
    label: "Is Override ?"
  }
  dimension: product_type {
    type: string
    label: "Type"
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: prod_added {
    type: time
    label: "Added"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROD_ADDED_DATE ;;
  }

  dimension: prod_added_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
  }

  dimension: program_qual_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_QUAL_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_ctrt_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_CTRT_ID ;;
  }

  dimension: source_pg_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_PG_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_included_li_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_INCLUDED_LI_ID ;;
  }

  dimension: src_sys_struct_li_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

  dimension: rbt_qual_prod_primary_key {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${program_qual_wid} ||'-'|| ${src_sys_struct_li_id} ;;
  }

  measure: no_of_qual_products {
    type: sum
    sql: CASE WHEN (${product_wid} IS NULL OR ${excluded_flag} = 'Y') THEN 0 ELSE 1 END ;;
    label: "# of Qualification Products"
    drill_fields: [detail*]
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }
   set: detail {
    fields: [
      contract_type,
      excluded_flag,
      override_flag,
      product_type,
      product_wid,
      prod_added_time
    ]
  }
}
