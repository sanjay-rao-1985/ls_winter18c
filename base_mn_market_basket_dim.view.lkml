view: mn_market_basket_dim {

  sql_table_name: MN_MARKET_BASKET_DIM_VW ;;

  dimension: market_basket_name {
    type: string
    label: "Market Basket Name"
    sql: ${TABLE}.BASKET_NAME;;
  }

  dimension: market_basket_number {
    type: string
    label: "Market Basket ID"
    sql: ${TABLE}.BASKET_NUM;;
  }

  dimension: market_basket_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.BASKET_WID;;
  }

  dimension_group: market_basket_created_date {
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
    sql: ${TABLE}.DATE_CREATED;;
  }

  dimension_group: market_basket_updated_date {
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
    sql: ${TABLE}.DATE_UPDATED;;
  }

  dimension_group: market_basket_end_date {
    label: "Market Basket End"
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
    sql: ${TABLE}.END_DATE;;
  }

  dimension: market_basket_run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID;;
  }

  dimension: market_basket_source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID;;
  }

  dimension: market_basket_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_BASKET_ID;;
  }

  dimension_group: market_basket_start_date {
    label: "Market Basket Start"
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
    sql: ${TABLE}.START_DATE;;
  }

  dimension: market_basket_therapeutic_class {
    type: string
    label: "Therapeutic Class"
    sql: ${TABLE}.THERA_CLASS;;
  }

  dimension: market_basket_therapeutic_class_description {
    type: string
    label: "Therapeutic Class Description"
    sql: ${TABLE}.THERA_CLASS_DESC;;
  }

}
