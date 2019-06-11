view: mn_bid_award_whole_fact {
  sql_table_name: MN_BID_AWARD_WHOLE_FACT_VW ;;

  dimension: bid_award_whole_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.BID_AWARD_WHOLE_WID ;;
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


  dimension: edi_enabled_flag {
    type: string
    sql: ${TABLE}.EDI_ENABLED ;;
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

  dimension: non_edi {
    type: string
    sql: ${TABLE}.NON_EDI ;;
  }

  dimension: resend {
    type: string
    sql: ${TABLE}.RESEND ;;
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
    hidden: yes
    type: string
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
  dimension: src_sys_ba_whole_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_BA_WHOLE_ID ;;
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
