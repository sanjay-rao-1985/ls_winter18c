view: mn_pg_prod_adhoc_map_exp {
  derived_table: {
    sql: SELECT *
        FROM MN_LKR_PG_PROD_MAP_VW
        WHERE DUPLICATE_FLAG = 0 OR SRC_SYS_INCLUDED_LI_ID IS NOT NULL
 ;;
  }

  dimension: pg_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: product_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: effective_start_date {

    type: time
    label: "Product Effective Start"
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

  dimension_group: effective_end_date {
    type: time
    label: "Product Effective End"
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

  dimension: eff_start_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension: eff_end_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension: prod_added_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
  }

  dimension_group: prod_added_date {

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

  dimension: product_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: product_num {
    type: string
    hidden: yes
    sql: ${TABLE}.PRODUCT_NUM ;;
  }

  dimension: excluded_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.EXCLUDED_FLAG ;;
  }

  dimension: excluded_flag_yes_no {
    type: string
    label: "Is Excluded ?"
    sql: CASE WHEN ${excluded_flag} = 'N' THEN 'No'
      WHEN ${excluded_flag} = 'Y' THEN 'Yes' ELSE NULL END ;;
  }

  dimension: is_market_basket_product {
    type: string
    label: "Is Market Basket Product ?"
    sql: CASE WHEN ${basket_wid} IS NULL THEN 'No' ELSE 'Yes' END ;;
  }

  dimension: level0_prod_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.LEVEL0_PROD_WID ;;
  }

  dimension: basket_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.BASKET_WID ;;
  }

  dimension: src_sys_struct_li_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

  dimension: src_sys_included_li_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_INCLUDED_LI_ID ;;
  }

  dimension: combined_source_system_key {
    type: string
    hidden: yes
    sql: ${TABLE}.COMBINED_SOURCE_SYSTEM_KEY ;;
  }

  dimension: product_type {
    type: string
    hidden: yes
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: duplicate_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.DUPLICATE_FLAG ;;
  }

}
