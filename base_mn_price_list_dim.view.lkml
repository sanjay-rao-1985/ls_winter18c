view: mn_price_list_dim {
  sql_table_name: MN_PRICE_LIST_DIM_VW ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension_group: date_created {
    type: time
    hidden:  yes
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
    hidden:  yes
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

  dimension: org_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_end_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension_group: period_start {
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
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: period_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: price_list_id_num {
    type: string
    label: "ID"
    sql: ${TABLE}.PRICE_LIST_ID_NUM ;;
  }

  dimension: price_list_name {
    type: string
    label: "Name"
    sql: ${TABLE}.PRICE_LIST_NAME ;;
  }

  dimension: price_list_status {
    type: string
    label: "Status"
    sql: ${TABLE}.PRICE_LIST_STATUS ;;
  }

  dimension: price_list_sys_type {
    type: string
    label: "Price List System Type"
    sql: ${TABLE}.PRICE_LIST_SYS_TYPE ;;
  }

  dimension: price_list_type_name {
    type: string
    label: "Type"
    sql: ${TABLE}.PRICE_LIST_TYPE_NAME ;;
  }

  dimension: price_list_wid {
    hidden:  yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PRICE_LIST_WID ;;
  }

  dimension: qual_type {
    type: string
    label: "Qualification Type"
    sql: ${TABLE}.QUAL_TYPE ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_price_list_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PRICE_LIST_ID ;;
  }

  dimension: mcd_program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_PROGRAM_WID ;;
  }

  dimension: period_year_qtr {
    type: string
    hidden: yes
    sql: ${period_end_year}||'Q'||TO_CHAR(${TABLE}.PERIOD_END_DATE,'Q') ;;
  }

  ################################ Government Explore Aliasing ######################################
  dimension: mcd_period_year_quarter {
    type: string
    label: "Quarter"
    sql: CASE WHEN ${period_end_date} IS NOT NULL THEN ${period_end_year}||'-Q'||TO_CHAR(${TABLE}.PERIOD_END_DATE,'Q') ELSE NULL END;;
  }


  set: mcdpricelistdim_set {
    fields: [price_list_name,currency,price_list_status,mcd_period_year_quarter]
  }

  set: providerpricelistdim_set {
    fields: [currency,price_list_status,period_end_date,period_end_month,period_end_quarter,period_end_time,period_end_week_of_year,period_end_year,period_start_date,period_start_month,
      period_start_quarter,period_start_time,period_start_week_of_year,period_start_year,price_list_id_num,price_list_name,price_list_status,price_list_sys_type,price_list_type_name,qual_type]
  }


  # measure: count {
  #   type: count
  #   drill_fields: [price_list_name, price_list_type_name]
  # }
}
