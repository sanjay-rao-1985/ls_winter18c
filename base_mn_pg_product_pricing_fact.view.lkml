view: mn_pg_product_pricing_fact {
  sql_table_name: MN_PG_PRODUCT_PRICING_FACT_VW ;;

  dimension_group: added {
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
    sql: ${TABLE}.ADDED_ON ;;
  }

  dimension: adj_high {
    type: string
    sql: ${TABLE}.ADJ_HIGH ;;
  }

  dimension: adj_low {
    type: string
    sql: ${TABLE}.ADJ_LOW ;;
  }

  dimension: adjustment_operator {
    type: string
    sql: ${TABLE}.ADJ_OPERATOR ;;
  }

  dimension: adjust_by {
    type: string
    sql: ${TABLE}.ADJUST_BY ;;
  }

  dimension: awarded_status {
    type: string
    sql: ${TABLE}.AWARDED_STATUS ;;
  }

  dimension: base_price {
    type: number
    value_format_name: usd
    sql: ${TABLE}.BASE_PRICE ;;
  }

  dimension: base_price_currency {
    type: string
    sql: ${TABLE}.BASE_PRICE_CURR ;;
  }

  dimension_group: billing_start {
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
    sql: ${TABLE}.BILLING_START_DATE ;;
  }
  dimension: category_product_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CATEGORY_PRODUCT_WID ;;
  }

  dimension: current_price {
    type: number
    value_format_name: usd
    sql: ${TABLE}.CURRENT_PRICE ;;
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

  dimension: distribution_method {
    type: string
    sql: ${TABLE}.DISTRIBUTION_METHOD ;;
  }

  dimension: eff_adj {
    type: number
    value_format_name: percent_2
    sql: ${TABLE}.EFF_ADJ ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: freight_code {
    type: string
    sql: ${TABLE}.FREIGHT_CODE ;;
  }

  dimension: handling {
    type: string
    sql: ${TABLE}.HANDLING ;;
  }

  dimension: instrument_name {
    type: string
    sql: ${TABLE}.INSTRUMENT_NAME ;;
  }

  dimension: instrument_number {
    type: string
    label: "Instrument #"
    sql: ${TABLE}.INSTRUMENT_NUMBER ;;
  }

  dimension: min_order_amount {
    type: number
    label: "Minimum Order Amount"
    value_format_name: usd
    sql: ${TABLE}.MIN_ORDER_AMT ;;
  }

  dimension: min_order_amount_currency {
    type: string
    label: "Minimum Order Amount Currency"
    sql: ${TABLE}.MIN_ORDER_AMT_CURR ;;
  }

  dimension: min_order_block {
    type: string
    hidden: yes
    sql: ${TABLE}.MIN_ORDER_BLOCK ;;
  }

  dimension: min_order_block_yes_no {
    type: string
    label: "Minimum Order Block"
    sql: CASE WHEN ${min_order_block} = 1 THEN 'Yes'
              WHEN ${min_order_block} = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: min_order_penalty {
    type: number
    label: "Minimum Order Penalty"
    value_format_name: usd
    sql: ${TABLE}.MIN_ORDER_PENALTY ;;
  }

  dimension: min_order_penalty_currency {
    type: string
    label: "Minimum Order Penalty Currency"
    sql: ${TABLE}.MIN_ORDER_PENALTY_CURR ;;
  }

  dimension: min_order_quantity {
    type: string
    label: "Minimum Order Quantity"
    sql: ${TABLE}.MIN_ORDER_QTY ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}.OWNERSHIP ;;
  }

  dimension: payment_code {
    type: string
    sql: ${TABLE}.PAYMENT_CODE ;;
  }

  dimension: payment_term {
    type: string
    label: "Payment Terms"
    sql: ${TABLE}.PAYMENT_TERM ;;
  }

  dimension: pg_end_ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.PG_END_VER_NUM ;;
  }

  dimension: pg_prod_pricing_wid {
    hidden:  yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PG_PROD_PRICING_WID ;;
  }

  dimension: pg_ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.PG_VER_NUM ;;
  }

  dimension: pg_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: prc_high {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.PRC_HIGH ;;
  }

  dimension: price_basis {
    type: string
    sql: ${TABLE}.PRICE_BASIS ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: product_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: rental_id {
    type: string
    sql: ${TABLE}.RENTAL_ID ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_lag_li_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_LAG_LI_ID ;;
  }

  dimension: src_sys_li_prcs_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_LI_PRCS_ID ;;
  }

  dimension: src_sys_pmli_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SRC_SYS_PMLI_ID ;;
  }

  dimension: src_sys_struct_li_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: surcharge {
    type: string
    sql: ${TABLE}.SURCHARGE ;;
  }

  dimension: tax_on {
    type: string
    sql: ${TABLE}.TAX_ON ;;
  }

  dimension: tier_idx {
    type: number
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: tier_volume {
    type: string
    sql: ${TABLE}.TIER_VOLUME ;;
  }

  dimension: tiered_flag {
    type: string
    sql: ${TABLE}.TIERED_FLAG ;;
  }

  dimension: timezone {
    type: string
    label: "Time Zone"
    sql: ${TABLE}.TIMEZONE ;;
  }

  dimension: total_price {
    type: number
    label: "Tier1 Total Price"
    value_format_name: usd
    sql: ${TABLE}.TOTAL_PRICE ;;
  }

  dimension: up_charge {
    type: number
    label: "Tier1 Upcharge"
    value_format_name: usd
    sql: ${TABLE}.UP_CHARGE ;;
  }

  dimension: up_charge1 {
    type: number
    value_format_name: usd
    sql: ${TABLE}.UP_CHARGE1 ;;
  }

  dimension: up_charge2 {
    type: number
    value_format_name: usd
    sql: ${TABLE}.UP_CHARGE2 ;;
  }

  dimension: up_charge3 {
    type: number
    value_format_name: usd
    sql: ${TABLE}.UP_CHARGE3 ;;
  }

  dimension: warranty {
    type: string
    label: "Instrument Warranty"
    sql: ${TABLE}.WARRANTY ;;
  }

  #*******************************Exclude set
  set: provider_ctrt_exclude_set {
    fields: [added_raw,added_time,added_date,added_week_of_year,added_month,added_quarter,added_year]
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure:  product_price {
    type:  average
    value_format_name:  decimal_2
    sql: ${prc_high} ;;
  }

  measure:  product_base_price {
    type:  average
    value_format_name: decimal_2
    sql: ${base_price} ;;
  }

  measure:  count_contracts {
    type:  count_distinct
    label: "Contracts Count"
    sql: ${mn_contract_header_dim.src_sys_contract_id} ;;
  }
}
