view: mn_rbt_ql_mb_prod_nms_fact {
 sql_table_name: MN_RBT_QL_MB_PROD_NMS_FACT_VW ;;

  dimension: rbt_ql_mb_prod_nms_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.RBT_QL_MB_PROD_NMS_WID ;;
  }

  dimension: program_qual_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_QUAL_WID ;;
  }

  dimension: basket_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.BASKET_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: payer_segment {
    type: string
    label: "NMS Payment Segment"
    sql: ${TABLE}.PAYER_SEGMENT ;;
  }

  dimension: start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.START_DATE_WID ;;
  }

  dimension_group: start {
    type: time
    label: "Start"
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.END_DATE_WID ;;
  }


  dimension_group: end {
    type: time
    label: "End"
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: nms {
    type: number
    hidden: yes
    sql: ${TABLE}.NMS ;;
  }

  measure: natinal_mkt_share {
    type: average
    label: "National Market Share"
    value_format_name: percent_2
    sql: ${nms} ;;
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

}
