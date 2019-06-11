view: mn_bid_award_cust_fact {
  sql_table_name: MN_BID_AWARD_CUST_FACT_VW ;;

  dimension: bid_award_cust_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.BID_AWARD_CUST_WID ;;
  }

  dimension: bid_award_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.BID_AWARD_WID ;;
  }

  dimension: customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
