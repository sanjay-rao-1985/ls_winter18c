view: mn_contract_fact {
  sql_table_name: MN_CONTRACT_FACT_VW ;;

  dimension: base_price {
    type: number
    sql: ${TABLE}.BASE_PRICE ;;
  }

  dimension: base_price_base {
    type: number
    sql: ${TABLE}.BASE_PRICE_BASE ;;
  }

  dimension: best_price {
    type: number
    sql: ${TABLE}.BEST_PRICE ;;
  }

  dimension: best_price_base {
    type: number
    sql: ${TABLE}.BEST_PRICE_BASE ;;
  }

  dimension: commercial_price {
    type: number
    sql: ${TABLE}.COMMERCIAL_PRICE ;;
  }

  dimension: commercial_price_base {
    type: number
    sql: ${TABLE}.COMMERCIAL_PRICE_BASE ;;
  }

  dimension: commit_type {
    type: string
    sql: ${TABLE}.COMMIT_TYPE ;;
  }

  dimension_group: commit_ver_end {
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
    sql: ${TABLE}.COMMIT_VER_END_DATE ;;
  }

  dimension_group: commit_ver_start {
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
    sql: ${TABLE}.COMMIT_VER_START_DATE ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: ctrt_fact_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CTRT_FACT_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: fss_price {
    type: string
    sql: ${TABLE}.FSS_PRICE ;;
  }

  dimension: fss_price_base {
    type: string
    sql: ${TABLE}.FSS_PRICE_BASE ;;
  }

  dimension: line_product_wid {
    hidden: yes
    type: number

    sql: ${TABLE}.LINE_PRODUCT_WID ;;
  }

  dimension: part_type {
    type: string
    sql: ${TABLE}.PART_TYPE ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: price_curr {
    type: string
    sql: ${TABLE}.PRICE_CURR ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number

    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: record_type {
    type: number
    sql: ${TABLE}.RECORD_TYPE ;;
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

  dimension: src_sys_commit_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

#   measure: count {
#     type: count
#     drill_fields: []
#   }
}
