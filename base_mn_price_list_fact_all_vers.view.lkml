view: mn_price_list_fact_all_vers {

    sql_table_name: MN_PRICE_LIST_FACT_ALL_VERS_VW ;;


  dimension: price_list_fact_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICE_LIST_FACT_WID ;;
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

  dimension: exchange_rate {
    type: number
    hidden: yes
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: period_end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension: period_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: price {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICE ;;
  }

  dimension: price_base {
    type: number
    label: "Price Versioned"
    value_format_name: usd_6
    sql: ${TABLE}.PRICE_BASE ;;
  }

  dimension: price_base_lf {
    type: number
    label: "Price"
    value_format_name: usd_6
    sql: ${TABLE}.PRICE_BASE ;;
  }

  dimension: price_curr {
    type: string
    hidden: yes
    sql: ${TABLE}.PRICE_CURR ;;
  }

  dimension: price_list_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICE_LIST_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
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

  dimension_group: period_start {
    type: time
    label: "Start Effective"
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

  dimension_group: period_end {
    type: time
    label: "End Effective"
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

  dimension: src_sys_li_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_LI_ID ;;
  }

  dimension: boqawp {
    type: number
    hidden: yes
    sql: ${TABLE}.BOQAWP ;;
  }

  dimension: eoqawp {
    type: number
    hidden: yes
    sql: ${TABLE}.EOQAWP ;;
  }

  dimension: boqwac {
    type: number
    hidden: yes
    sql: ${TABLE}.BOQWAC ;;
  }

  dimension: eoqwac {
    type: number
    hidden: yes
    sql: ${TABLE}.EOQWAC ;;
  }

  dimension: pa_prior_amp {
    type: number
    hidden: yes
    sql: ${TABLE}.PA_PRIOR_AMP ;;
  }

  dimension: disc_cap_rate {
    type: number
    hidden: yes
    sql: ${TABLE}.DISC_CAP_RATE ;;
  }

  dimension: sidrug_min_rate {
    type: number
    hidden: yes
    sql: ${TABLE}.SIDRUG_MIN_RATE ;;
  }

  dimension: cfpdrug_min_rate {
    type: number
    hidden: yes
    sql: ${TABLE}.CFPDRUG_MIN_RATE ;;
  }

  dimension: ndrug_min_rate {
    type: number
    hidden: yes
    sql: ${TABLE}.NDRUG_MIN_RATE ;;
  }

  dimension: cpiu {
    type: number
    hidden: yes
    sql: ${TABLE}.CPIU ;;
  }

  dimension: bcpiu {
    type: number
    hidden: yes
    sql: ${TABLE}.BCPIU ;;
  }

  dimension: pacpiu {
    type: number
    hidden: yes
    sql: ${TABLE}.PACPIU ;;
  }

  dimension: pa_prior_cpiu {
    type: number
    hidden: yes
    sql: ${TABLE}.PA_PRIOR_CPIU ;;
  }

  dimension: prog_amt_1 {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_AMT_1 ;;
  }

  dimension: prog_amt_2 {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_AMT_2 ;;
  }

  dimension: prog_amt_3 {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_AMT_3 ;;
  }

  dimension: prog_perc_1 {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_PERC_1 ;;
  }

  dimension: prog_perc_2 {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_PERC_2 ;;
  }

  dimension: prog_perc_3 {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_PERC_3 ;;
  }

  dimension: initial_amp {
    type: number
    hidden: yes
    sql: ${TABLE}.INITIAL_AMP ;;
  }

  dimension: initial_bamp {
    type: number
    hidden: yes
    sql: ${TABLE}.INITIAL_BAMP ;;
  }

  dimension: initial_bp {
    type: number
    hidden: yes
    sql: ${TABLE}.INITIAL_BP ;;
  }

  dimension: amp {
    type: number
    hidden: yes
    sql: ${TABLE}.AMP ;;
  }

  dimension: bp {
    type: number
    hidden: yes
    sql: ${TABLE}.BP ;;
  }

  dimension: bamp {
    type: number
    hidden: yes
    sql: ${TABLE}.BAMP ;;
  }

  dimension: asp {
    type: number
    hidden: yes
    sql: ${TABLE}.ASP ;;
  }

  dimension: external_ura {
    type: number
    hidden: yes
    sql: ${TABLE}.EXTERNAL_URA ;;
  }

  dimension: ver_num {
    type: number
    hidden: yes
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension: end_ver_num {
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension_group: added {
    type: time
    label: "Added On"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension_group: last_updated {
    type: time
    label: "Last Updated On"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension_group: ver_start_date {
    type: time
    hidden: yes
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension_group: ver_end_date {
    type: time
    hidden: yes
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: workbook_name {
    type: string
    label: "Workbook Name"
    sql: ${TABLE}.WORKBOOK_NAME ;;
  }

  dimension: latest_flag {
    type: string
    hidden: yes
    label: "Latest Version Only"
    sql: ${TABLE}.LATEST_FLAG ;;
  }


  dimension: latest_flag_yn {
    type: string
    label: "Latest Version Only"
    sql: CASE WHEN ${latest_flag} = 'Y' THEN 'Yes'
              WHEN ${latest_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: price_list_fact_pk {
    type: string
    hidden: yes
    primary_key: yes
    sql: concat(${price_list_fact_wid},${latest_flag}) ;;
  }

  dimension: src_sys_price_list_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PRICE_LIST_ID ;;
  }

  measure: tot_price_base {
    type: average
    value_format_name: usd_6
    label: "Price Versioned"
    sql: ${price_base} ;;
  }

  measure: tot_price_base_lf {
    type: average
    value_format_name: usd_6
    label: "Price"
    sql: ${price_base_lf} ;;
  }


  set: pricelist_fact_set {
    fields: [period_start_time,period_start_date,period_start_week_of_year,period_start_month,period_start_quarter,period_start_year,
             period_end_time,period_end_date,period_end_week_of_year,period_end_month,period_end_quarter,period_end_year,
             added_time,added_date,added_week_of_year,added_month,added_quarter,added_year,workbook_name,price_base,latest_flag_yn,
             tot_price_base]
  }

  set: pricelist_fact_lf_set {
    fields: [last_updated_time,last_updated_date,last_updated_week_of_year,last_updated_month,last_updated_quarter,last_updated_year,
             price_base_lf,tot_price_base_lf]
  }

}
