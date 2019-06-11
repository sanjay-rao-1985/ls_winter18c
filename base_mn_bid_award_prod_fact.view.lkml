view: mn_bid_award_prod_fact {
  sql_table_name: MN_BID_AWARD_PROD_FACT_VW ;;

  dimension: bid_award_prod_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.BID_AWARD_PROD_WID ;;
  }

  dimension: bid_award_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.BID_AWARD_WID ;;
  }


  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.PRICE ;;
  }

  dimension: price_base {
    type: number
    sql: ${TABLE}.PRICE_BASE ;;
  }

  dimension: price_cur {
    type: string
    sql: ${TABLE}.PRICE_CUR ;;
  }

  dimension: price_type {
    type: string
    sql: ${TABLE}.PRICE_TYPE ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
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

  dimension: deleted_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.DELETED_FLAG ;;
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

  dimension: src_sys_ba_prod_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_BA_PROD_ID ;;
  }

  dimension_group: src_sys_date_updated {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
