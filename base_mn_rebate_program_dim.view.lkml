view: mn_rebate_program_dim {
  sql_table_name: MN_REBATE_PROGRAM_DIM_VW ;;

  dimension: accru_cust_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ACCRU_CUST_WID ;;
  }

  dimension: accrual_rate {
    type: string
    sql: ${TABLE}.ACCRUAL_RATE ;;
  }

  dimension: accrual_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ACCRUAL_TYPE_WID ;;
  }

  dimension: benefit_calc_rule {
    type: string
    sql: ${TABLE}.BENEFIT_CALC_RULE ;;
  }

  dimension: calc_level {
    type: string
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: calc_obj_type {
    type: string
    sql: ${TABLE}.CALC_OBJ_TYPE ;;
  }

  dimension: contract_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
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

  dimension: effective_timezone {
    type: string
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: flat_program {
    type: string
    sql: ${TABLE}.FLAT_PROGRAM ;;
  }

  dimension: grp_name {
    type: string
    sql: ${TABLE}.GRP_NAME ;;
  }

  dimension: late_date_lag {
    type: string
    sql: ${TABLE}.LATE_DATE_LAG ;;
  }

  dimension: latest_flag {
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: market_basket_type {
    type: string
    sql: ${TABLE}.MARKET_BASKET_TYPE ;;
  }

  dimension: module_type {
    type: string
    sql: ${TABLE}.MODULE_TYPE ;;
  }

  dimension: non_std_program {
    type: string
    sql: ${TABLE}.NON_STD_PROGRAM ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: num_tiers {
    type: string
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_idx {
    type: string
    sql: ${TABLE}.ORDER_IDX ;;
  }

  dimension: org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_cust_type {
    type: string
    sql: ${TABLE}.PAYMENT_CUST_TYPE ;;
  }

  dimension: payment_freq {
    type: string
    sql: ${TABLE}.PAYMENT_FREQ ;;
  }

  dimension: payment_grace_freq {
    type: string
    sql: ${TABLE}.PAYMENT_GRACE_FREQ ;;
  }

  dimension: payment_level {
    type: string
    sql: ${TABLE}.PAYMENT_LEVEL ;;
  }

  dimension: pmt_method_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PMT_METHOD_WID ;;
  }

  dimension: pmt_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PMT_TYPE_WID ;;
  }

  dimension: processing_date_lag {
    type: string
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}.PROGRAM_NAME ;;
  }

  dimension: program_sub_type {
    type: string
    sql: ${TABLE}.PROGRAM_SUB_TYPE ;;
  }

  dimension: program_sub_type_name {
    type: string
    sql: ${TABLE}.PROGRAM_SUB_TYPE_NAME ;;
  }

  dimension: program_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: qual_method {
    type: string
    sql: ${TABLE}.QUAL_METHOD ;;
  }



  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: rx_norm_method {
    type: string
    sql: ${TABLE}.RX_NORM_METHOD ;;
  }

  dimension: sale_line_from {
    type: string
    sql: ${TABLE}.SALE_LINE_FROM ;;
  }

  dimension: sale_line_type {
    type: string
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: schedule_basis {
    type: string
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_strategy_name {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NAME ;;
  }

  dimension: src_strategy_num {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_NUM ;;
  }

  dimension: src_strategy_type {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_TYPE ;;
  }

  dimension: src_strategy_ver_num {
    type: string
    sql: ${TABLE}.SRC_STRATEGY_VER_NUM ;;
  }

  dimension: src_sys_contract_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension: src_sys_mgr_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_program_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: system_accrue {
    type: string
    sql: ${TABLE}.SYSTEM_ACCRUE ;;
  }

  dimension: tb_calc_rule {
    type: string
    sql: ${TABLE}.TB_CALC_RULE ;;
  }

  dimension: tier_mgmt_type {
    type: string
    sql: ${TABLE}.TIER_MGMT_TYPE ;;
  }

  dimension: util_type {
    type: string
    sql: ${TABLE}.UTIL_TYPE ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension: rbt_price_prog_name {
    type: string
    view_label: "Rebates"
    label: "Pricing Program Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${TABLE}.PROGRAM_NAME ELSE NULL END ;;
  }

  dimension: rbt_price_strategy_name {
    type: string
    view_label: "Rebates"
    label: "Pricing Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${TABLE}.SRC_STRATEGY_NAME ELSE NULL END ;;
  }

  dimension: rbt_rebate_strategy_name {
    type: string
    view_label: "Rebates"
    label: "Rebate Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${TABLE}.PROGRAM_NAME ELSE NULL END ;;
  }

  dimension: pr_price_prog_name {
    type: string
    view_label: "Projected Rebates"
    label: "Pricing Program Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.PROGRAM_NAME ELSE NULL END ;;
  }

  dimension: pr_price_strategy_name {
    type: string
    view_label: "Projected Rebates"
    label: "Pricing Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.SRC_STRATEGY_NAME ELSE NULL END ;;
  }

  dimension: pr_rebate_strategy_name {
    type: string
    view_label: "Projected Rebates"
    label: "Rebate Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.PROGRAM_NAME ELSE NULL END ;;
  }

  dimension: mco_price_prog_name {
    type: string
    view_label: "MCO Utilization"
    label: "Program Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${TABLE}.PROGRAM_NAME ELSE NULL END ;;
  }

  dimension: mco_price_strategy_name {
    type: string
    view_label: "MCO Utilization"
    label: "Program ID"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${TABLE}.SRC_SYS_PROGRAM_ID ELSE NULL END ;;
  }

  dimension: mco_rebate_strategy_name {
    type: string
    view_label: "MCO Utilization"
    label: "Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${TABLE}.PROGRAM_NAME ELSE NULL END ;;
  }

  dimension: cst_price_strategy_name {
    type: string
    view_label: "Custom Sales"
    label: "Pricing Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${TABLE}.SRC_STRATEGY_NAME ELSE NULL END ;;
  }


  measure: count {
    type: count
    drill_fields: [program_name, grp_name, src_strategy_name, program_sub_type_name]
  }

   set: rebate_st_set {
     fields: [rbt_rebate_strategy_name,pr_rebate_strategy_name,mco_rebate_strategy_name]
   }

  set: rebate_non_st_set {
    fields: [pr_price_prog_name,rbt_price_strategy_name,pr_price_prog_name,pr_price_strategy_name,mco_price_prog_name,mco_price_strategy_name,cst_price_strategy_name]
  }
}
