view: mn_customer_cot_dim_dt {
  derived_table: {
    sql: SELECT CCOT.COT_WID,
                CCOT.CUSTOMER_COT_WID,
                CCOT.CUSTOMER_WID,
                CCOT.EFF_END_DATE,
                CCOT.EFF_START_DATE,
                COT.CLASS_OF_TRADE,
                COT.DESCRIPTION,
                COT.COT_TYPE
         FROM MN_CUSTOMER_COT_DIM_VW CCOT
         LEFT JOIN MN_COT_DIM_VW COT ON CCOT.COT_WID = COT.COT_WID
 ;;
  }

  dimension: cot_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.COT_WID ;;
  }

  dimension: customer_cot_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.CUSTOMER_COT_WID ;;
  }

  dimension: customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension_group: eff_end_date {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start_date {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: class_of_trade {
    type: string
    hidden: yes
    sql: ${TABLE}.CLASS_OF_TRADE ;;
  }

  dimension: class_of_trade_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: cot_type {
    type: string
    hidden: yes
    sql: ${TABLE}.COT_TYPE ;;
  }

  dimension: bill_cust_inv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: bill_cust_appr_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: bill_cust_paid_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: bill_cust_process_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: bill_cust_recv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: bill_cust_req_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: bill_cust_tx_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.transaction_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.transaction_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: bill_cust_clm_due_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} >= ${mn_bill_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} <= ${mn_bill_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_inv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_appr_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_paid_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_process_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_recv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_req_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_tx_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.transaction_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.transaction_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: sold_cust_clm_due_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} >= ${mn_sold_to_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} <= ${mn_sold_to_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }


  dimension: cust_inv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: cust_appr_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: cust_paid_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: cust_process_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: cust_recv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: cust_req_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: cust_tx_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.transaction_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.transaction_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: cust_clm_due_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} >= ${mn_customer_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} <= ${mn_customer_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: ws_inv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} >= ${mn_wholesaler_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} <= ${mn_wholesaler_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: ws_appr_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} >= ${mn_wholesaler_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} <= ${mn_wholesaler_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: ws_paid_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} >= ${mn_wholesaler_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} <= ${mn_wholesaler_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: ws_process_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} >= ${mn_wholesaler_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} <= ${mn_wholesaler_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: ws_recv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} >= ${mn_wholesaler_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} <= ${mn_wholesaler_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: ws_req_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} >= ${mn_wholesaler_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} <= ${mn_wholesaler_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: ws_tx_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.transaction_date_raw} >= ${mn_wholesaler_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.transaction_date_raw} <= ${mn_wholesaler_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_inv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_appr_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_paid_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_process_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_recv_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_req_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_tx_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.transaction_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.transaction_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: plan_cust_clm_due_date_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} >= ${mn_plan_cust_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} <= ${mn_plan_cust_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }


  dimension: pbm_start_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.mco_util_start_raw} >= ${mn_pbm_tx_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.mco_util_start_raw} <= ${mn_pbm_tx_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: pbm_end_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.mco_util_end_raw} >= ${mn_pbm_tx_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.mco_util_end_raw} <= ${mn_pbm_tx_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }

  dimension: pbm_due_date_tx_cot {
    type: string
    hidden: yes
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} >= ${mn_pbm_tx_cot_dim.eff_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_claim_due_date_raw} <= ${mn_pbm_tx_cot_dim.eff_end_date_raw})
      THEN ${TABLE}.DESCRIPTION ELSE NULL END;;
  }


# Direct Sales Customer transactional COTs attributes Start
  dimension: dir_bill_cust_inv_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Bill To Customer Transactional COT (Invoice Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${bill_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_bill_cust_appr_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Bill To Customer Transactional COT (Approve Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${bill_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_bill_cust_paid_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Bill To Customer Transactional COT (Paid Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${bill_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_bill_cust_process_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Bill To Customer Transactional COT (Process Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${bill_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_bill_cust_recv_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Bill To Customer Transactional COT (Receive Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${bill_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_bill_cust_req_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Bill To Customer Transactional COT (Request Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${bill_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_bill_cust_tx_date_cot {
    type: string
    view_label: "Direct Sales"
    label: "Bill To Customer Transactional COT (Transaction Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${bill_cust_tx_date_cot} ELSE NULL END  ;;
  }


  dimension: dir_sold_cust_inv_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Sold To Customer Transactional COT (Invoice Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${sold_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_sold_cust_appr_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Sold To Customer Transactional COT (Approve Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${sold_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_sold_cust_paid_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Sold To Customer Transactional COT (Paid Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${sold_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_sold_cust_process_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Sold To Customer Transactional COT (Process Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${sold_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_sold_cust_recv_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Sold To Customer Transactional COT (Receive Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${sold_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_sold_cust_req_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Sold To Customer Transactional COT (Request Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${sold_cust_req_tx_cot} ELSE NULL END  ;;
  }
  dimension: dir_sold_cust_tx_date_cot {
    type: string
    view_label: "Direct Sales"
    label: "Sold To Customer Transactional COT (Transaction Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${sold_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: dir_customer_inv_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Customer Transactional COT (Invoice Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_customer_appr_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Customer Transactional COT (Approve Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_customer_paid_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Customer Transactional COT (Paid Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_customer_process_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Customer Transactional COT (Process Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_customer_recv_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Customer Transactional COT (Receive Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_customer_req_tx_cot {
    type: string
    view_label: "Direct Sales"
    label: "Customer Transactional COT (Request Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: dir_customer_tx_date_cot {
    type: string
    view_label: "Direct Sales"
    label: "Customer Transactional COT (Transaction Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${cust_tx_date_cot} ELSE NULL END  ;;
  }

# Direct Sales Customer transactional COTs attributes End

# Indirect Sales Customer transactional COTs attributes Start

  dimension: indir_bill_cust_inv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Bill To Customer Transactional COT (Invoice Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${bill_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_bill_cust_appr_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Bill To Customer Transactional COT (Approve Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${bill_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_bill_cust_paid_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Bill To Customer Transactional COT (Paid Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${bill_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_bill_cust_process_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Bill To Customer Transactional COT (Process Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${bill_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_bill_cust_recv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Bill To Customer Transactional COT (Receive Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${bill_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_bill_cust_req_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Bill To Customer Transactional COT (Request Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${bill_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_bill_cust_tx_date_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Bill To Customer Transactional COT (Transaction Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${bill_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: indir_sold_cust_inv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Sold To Customer Transactional COT (Invoice Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${sold_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_sold_cust_appr_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Sold To Customer Transactional COT (Approve Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${sold_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_sold_cust_paid_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Sold To Customer Transactional COT (Paid Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${sold_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_sold_cust_process_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Sold To Customer Transactional COT (Process Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${sold_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_sold_cust_recv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Sold To Customer Transactional COT (Receive Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${sold_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_sold_cust_req_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Sold To Customer Transactional COT (Request Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${sold_cust_req_tx_cot} ELSE NULL END  ;;
  }
  dimension: indir_sold_cust_tx_date_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Sold To Customer Transactional COT (Transaction Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${sold_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: indir_customer_inv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Transactional COT (Invoice Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_customer_appr_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Transactional COT (Approve Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_customer_paid_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Transactional COT (Paid Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_customer_process_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Transactional COT (Process Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_customer_recv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Transactional COT (Receive Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_customer_req_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Transactional COT (Request Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_customer_tx_date_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Transactional COT (Transaction Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: indir_ws_inv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Wholesaler Transactional COT (Invoice Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${ws_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_ws_appr_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Wholesaler Transactional COT (Approve Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${ws_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_ws_paid_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Wholesaler Transactional COT (Paid Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${ws_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_ws_process_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Wholesaler Transactional COT (Process Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${ws_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_ws_recv_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Wholesaler Transactional COT (Receive Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${ws_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_ws_req_tx_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Wholesaler Transactional COT (Request Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${ws_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: indir_ws_tx_date_cot {
    type: string
    view_label: "Indirect Sales"
    label: "Wholesaler Transactional COT (Transaction Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${ws_tx_date_cot} ELSE NULL END  ;;
  }

  # Indirect Sales Customer transactional COTs attributes End

# chargebacks Customer transactional COTs attributes Start


  dimension: chb_bill_cust_inv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Bill To Customer Transactional COT (Invoice Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${bill_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_bill_cust_appr_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Bill To Customer Transactional COT (Approve Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${bill_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_bill_cust_paid_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Bill To Customer Transactional COT (Paid Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${bill_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_bill_cust_process_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Bill To Customer Transactional COT (Process Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${bill_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_bill_cust_recv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Bill To Customer Transactional COT (Receive Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${bill_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_bill_cust_req_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Bill To Customer Transactional COT (Request Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${bill_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_bill_cust_tx_date_cot {
    type: string
    view_label: "Chargebacks"
    label: "Bill To Customer Transactional COT (Transaction Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${bill_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: chb_sold_cust_inv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Sold To Customer Transactional COT (Invoice Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${sold_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_sold_cust_appr_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Sold To Customer Transactional COT (Approve Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${sold_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_sold_cust_paid_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Sold To Customer Transactional COT (Paid Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${sold_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_sold_cust_process_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Sold To Customer Transactional COT (Process Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${sold_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_sold_cust_recv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Sold To Customer Transactional COT (Receive Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${sold_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_sold_cust_req_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Sold To Customer Transactional COT (Request Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${sold_cust_req_tx_cot} ELSE NULL END  ;;
  }
  dimension: chb_sold_cust_tx_date_cot {
    type: string
    view_label: "Chargebacks"
    label: "Sold To Customer Transactional COT (Transaction Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${sold_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: chb_customer_inv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Customer Transactional COT (Invoice Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_customer_appr_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Customer Transactional COT (Approve Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_customer_paid_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Customer Transactional COT (Paid Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_customer_process_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Customer Transactional COT (Process Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_customer_recv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Customer Transactional COT (Receive Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_customer_req_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Customer Transactional COT (Request Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_customer_tx_date_cot {
    type: string
    view_label: "Chargebacks"
    label: "Customer Transactional COT (Transaction Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: chb_ws_inv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Wholesaler Transactional COT (Invoice Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${ws_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_ws_appr_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Wholesaler Transactional COT (Approve Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${ws_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_ws_paid_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Wholesaler Transactional COT (Paid Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${ws_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_ws_process_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Wholesaler Transactional COT (Process Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${ws_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_ws_recv_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Wholesaler Transactional COT (Receive Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${ws_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_ws_req_tx_cot {
    type: string
    view_label: "Chargebacks"
    label: "Wholesaler Transactional COT (Request Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${ws_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: chb_ws_tx_date_cot {
    type: string
    view_label: "Chargebacks"
    label: "Wholesaler Transactional COT (Transaction Date)"
    group_label: "Wholesaler Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${ws_tx_date_cot} ELSE NULL END  ;;
  }

  # Chargebacks Customer transactional COTs attributes End



# Rebates Customer transactional COTs attributes Start


  dimension: rbt_bill_cust_inv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Invoice Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_bill_cust_appr_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Approve Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_bill_cust_paid_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Paid Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_bill_cust_process_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Process Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_bill_cust_recv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Receive Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_bill_cust_req_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Request Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_bill_cust_tx_date_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Transaction Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: rbt_bill_cust_cd_date_cot {
    type: string
    view_label: "Rebates"
    label: "Bill To Customer Transactional COT (Claim Due Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${bill_cust_clm_due_date_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_inv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Invoice Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_appr_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Approve Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_paid_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Paid Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_process_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Process Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_recv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Receive Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_req_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Request Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_tx_date_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Transaction Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: rbt_sold_cust_cd_date_cot {
    type: string
    view_label: "Rebates"
    label: "Sold To Customer Transactional COT (Claim Due Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${sold_cust_clm_due_date_cot} ELSE NULL END  ;;
  }


  dimension: rbt_customer_inv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Invoice Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_customer_appr_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Approve Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_customer_paid_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Paid Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_customer_process_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Process Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_customer_recv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Receive Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_customer_req_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Request Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_customer_tx_date_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Transaction Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: rbt_customer_cd_date_cot {
    type: string
    view_label: "Rebates"
    label: "Customer Transactional COT (Claim Due Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${cust_clm_due_date_cot} ELSE NULL END  ;;
  }


  dimension: rbt_pc_inv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Invoice Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_pc_appr_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Approve Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_pc_paid_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Paid Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_pc_process_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Process Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_pc_recv_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Receive Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_pc_req_tx_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Request Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: rbt_pc_tx_date_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Transaction Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: rbt_pc_cd_date_cot {
    type: string
    view_label: "Rebates"
    label: "Plan Customer Transactional COT (Claim Due Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${plan_cust_clm_due_date_cot} ELSE NULL END  ;;
  }

# Rebates Customer transactional COTs attributes End


# Projected Rebates Customer transactional COTs attributes Start



  dimension: pr_bill_cust_inv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Invoice Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_bill_cust_appr_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Approve Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_bill_cust_paid_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Paid Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_bill_cust_process_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Process Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_bill_cust_recv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Receive Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_bill_cust_req_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Request Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_bill_cust_tx_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Transaction Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: pr_bill_cust_cd_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Bill To Customer Transactional COT (Claim Due Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${bill_cust_clm_due_date_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_inv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Invoice Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_appr_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Approve Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_paid_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Paid Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_process_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Process Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_recv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Receive Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_req_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Request Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_tx_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Transaction Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: pr_sold_cust_cd_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Sold To Customer Transactional COT (Claim Due Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${sold_cust_clm_due_date_cot} ELSE NULL END  ;;
  }


  dimension: pr_customer_inv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Invoice Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_customer_appr_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Approve Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_customer_paid_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Paid Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_customer_process_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Process Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_customer_recv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Receive Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_customer_req_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Request Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_customer_tx_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Transaction Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: pr_customer_cd_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Transactional COT (Claim Due Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${cust_clm_due_date_cot} ELSE NULL END  ;;
  }


  dimension: pr_pc_inv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Invoice Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_pc_appr_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Approve Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_pc_paid_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Paid Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_pc_process_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Process Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_pc_recv_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Receive Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_pc_req_tx_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Request Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: pr_pc_tx_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Transaction Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: pr_pc_cd_date_cot {
    type: string
    view_label: "Projected Rebates"
    label: "Plan Customer Transactional COT (Claim Due Date)"
    group_label: "Plan Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${plan_cust_clm_due_date_cot} ELSE NULL END  ;;
  }

# Projected Rebates Customer transactional COTs attributes End

  # Custom Sales Customer transactional COTs attributes Start
  dimension: cstm_bill_cust_inv_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Bill To Customer Transactional COT (Invoice Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${bill_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_bill_cust_appr_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Bill To Customer Transactional COT (Approve Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${bill_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_bill_cust_paid_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Bill To Customer Transactional COT (Paid Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${bill_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_bill_cust_process_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Bill To Customer Transactional COT (Process Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${bill_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_bill_cust_recv_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Bill To Customer Transactional COT (Receive Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${bill_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_bill_cust_req_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Bill To Customer Transactional COT (Request Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${bill_cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_bill_cust_tx_date_cot {
    type: string
    view_label: "Custom Sales"
    label: "Bill To Customer Transactional COT (Transaction Date)"
    group_label: "Bill To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${bill_cust_tx_date_cot} ELSE NULL END  ;;
  }


  dimension: cstm_sold_cust_inv_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Sold To Customer Transactional COT (Invoice Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${sold_cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_sold_cust_appr_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Sold To Customer Transactional COT (Approve Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${sold_cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_sold_cust_paid_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Sold To Customer Transactional COT (Paid Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${sold_cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_sold_cust_process_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Sold To Customer Transactional COT (Process Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${sold_cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_sold_cust_recv_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Sold To Customer Transactional COT (Receive Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${sold_cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_sold_cust_req_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Sold To Customer Transactional COT (Request Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${sold_cust_req_tx_cot} ELSE NULL END  ;;
  }
  dimension: cstm_sold_cust_tx_date_cot {
    type: string
    view_label: "Custom Sales"
    label: "Sold To Customer Transactional COT (Transaction Date)"
    group_label: "Sold To Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${sold_cust_tx_date_cot} ELSE NULL END  ;;
  }

  dimension: cstm_customer_inv_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Customer Transactional COT (Invoice Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${cust_inv_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_customer_appr_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Customer Transactional COT (Approve Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${cust_appr_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_customer_paid_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Customer Transactional COT (Paid Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${cust_paid_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_customer_process_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Customer Transactional COT (Process Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${cust_process_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_customer_recv_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Customer Transactional COT (Receive Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${cust_recv_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_customer_req_tx_cot {
    type: string
    view_label: "Custom Sales"
    label: "Customer Transactional COT (Request Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${cust_req_tx_cot} ELSE NULL END  ;;
  }

  dimension: cstm_customer_tx_date_cot {
    type: string
    view_label: "Custom Sales"
    label: "Customer Transactional COT (Transaction Date)"
    group_label: "Customer Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${cust_tx_date_cot} ELSE NULL END  ;;
  }

# Custom Sales Customer transactional COTs attributes End



  dimension: mco_pbm_start_tx_cot {
    type: string
    view_label: "MCO Utilization"
    label: "PBM Transactional COT (Start Date)"
    group_label: "PBM Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${pbm_start_tx_cot} ELSE NULL END  ;;
  }

  dimension: mco_pbm_end_tx_cot {
    type: string
    view_label: "MCO Utilization"
    label: "PBM Transactional COT (End Date)"
    group_label: "PBM Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${pbm_end_tx_cot} ELSE NULL END  ;;
  }

  dimension: mco_pbm_cd_tx_cot {
    type: string
    view_label: "MCO Utilization"
    label: "PBM Transactional COT (Claim Due Date)"
    group_label: "PBM Transactional COT"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${pbm_due_date_tx_cot} ELSE NULL END  ;;
  }

  dimension: mco_pbm_cot_util_end {
    type: string
    view_label: "MCO Utilization"
    label: "PBM COT As Of Util End Date"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${pbm_end_tx_cot} ELSE NULL END  ;;
  }



  set: bill_to_cust_tx_cot_set {
    fields: [dir_bill_cust_inv_tx_cot,dir_bill_cust_appr_tx_cot,dir_bill_cust_paid_tx_cot,dir_bill_cust_process_tx_cot,
             dir_bill_cust_recv_tx_cot,dir_bill_cust_req_tx_cot,dir_bill_cust_tx_date_cot,indir_bill_cust_inv_tx_cot,
             indir_bill_cust_appr_tx_cot,indir_bill_cust_paid_tx_cot,indir_bill_cust_process_tx_cot,indir_bill_cust_recv_tx_cot,
             indir_bill_cust_req_tx_cot,indir_bill_cust_tx_date_cot,rbt_bill_cust_inv_tx_cot,rbt_bill_cust_appr_tx_cot,
             rbt_bill_cust_paid_tx_cot,rbt_bill_cust_process_tx_cot,rbt_bill_cust_recv_tx_cot,rbt_bill_cust_req_tx_cot,
             rbt_bill_cust_tx_date_cot,rbt_bill_cust_cd_date_cot,pr_bill_cust_inv_tx_cot,pr_bill_cust_appr_tx_cot,
             pr_bill_cust_paid_tx_cot,pr_bill_cust_process_tx_cot,pr_bill_cust_recv_tx_cot,pr_bill_cust_req_tx_cot,
             pr_bill_cust_tx_date_cot,pr_bill_cust_cd_date_cot,cstm_bill_cust_inv_tx_cot,cstm_bill_cust_appr_tx_cot,
             cstm_bill_cust_paid_tx_cot,cstm_bill_cust_process_tx_cot,cstm_bill_cust_recv_tx_cot,cstm_bill_cust_req_tx_cot,
             cstm_bill_cust_tx_date_cot,chb_bill_cust_inv_tx_cot,chb_bill_cust_appr_tx_cot,chb_bill_cust_paid_tx_cot,
             chb_bill_cust_process_tx_cot,chb_bill_cust_recv_tx_cot,chb_bill_cust_req_tx_cot,chb_bill_cust_tx_date_cot]
  }

  set: sold_to_cust_tx_cot_set {
    fields: [dir_sold_cust_inv_tx_cot,dir_sold_cust_appr_tx_cot,dir_sold_cust_paid_tx_cot,dir_sold_cust_process_tx_cot,
             dir_sold_cust_recv_tx_cot,dir_sold_cust_req_tx_cot,dir_sold_cust_tx_date_cot,indir_sold_cust_inv_tx_cot,
             indir_sold_cust_appr_tx_cot,indir_sold_cust_paid_tx_cot,indir_sold_cust_process_tx_cot,
             indir_sold_cust_recv_tx_cot,indir_sold_cust_req_tx_cot,indir_sold_cust_tx_date_cot,rbt_sold_cust_inv_tx_cot,
             rbt_sold_cust_appr_tx_cot,rbt_sold_cust_paid_tx_cot,rbt_sold_cust_process_tx_cot,rbt_sold_cust_recv_tx_cot,
             rbt_sold_cust_req_tx_cot,rbt_sold_cust_tx_date_cot,rbt_sold_cust_cd_date_cot,pr_sold_cust_inv_tx_cot,
             pr_sold_cust_appr_tx_cot,pr_sold_cust_paid_tx_cot,pr_sold_cust_process_tx_cot,pr_sold_cust_recv_tx_cot,
             pr_sold_cust_req_tx_cot,pr_sold_cust_tx_date_cot,pr_sold_cust_cd_date_cot,cstm_sold_cust_inv_tx_cot,
             cstm_sold_cust_appr_tx_cot,cstm_sold_cust_paid_tx_cot,cstm_sold_cust_process_tx_cot,cstm_sold_cust_recv_tx_cot,
             cstm_sold_cust_req_tx_cot,cstm_sold_cust_tx_date_cot,chb_sold_cust_inv_tx_cot,
             chb_sold_cust_appr_tx_cot,chb_sold_cust_paid_tx_cot,chb_sold_cust_process_tx_cot,
             chb_sold_cust_recv_tx_cot,chb_sold_cust_req_tx_cot,chb_sold_cust_tx_date_cot]
  }

  set: customer_tx_cot_set {
    fields: [dir_customer_inv_tx_cot,dir_customer_appr_tx_cot,dir_customer_paid_tx_cot,dir_customer_process_tx_cot,
             dir_customer_recv_tx_cot,dir_customer_req_tx_cot,dir_customer_tx_date_cot,indir_customer_inv_tx_cot,
             indir_customer_appr_tx_cot,indir_customer_paid_tx_cot,indir_customer_process_tx_cot,indir_customer_recv_tx_cot,
             indir_customer_req_tx_cot,indir_customer_tx_date_cot,rbt_customer_inv_tx_cot,rbt_customer_appr_tx_cot,
             rbt_customer_paid_tx_cot,rbt_customer_process_tx_cot,rbt_customer_recv_tx_cot,rbt_customer_req_tx_cot,rbt_customer_tx_date_cot,
             rbt_customer_cd_date_cot,pr_customer_inv_tx_cot,pr_customer_appr_tx_cot,pr_customer_paid_tx_cot,pr_customer_process_tx_cot,
             pr_customer_recv_tx_cot,pr_customer_req_tx_cot,pr_customer_tx_date_cot,pr_customer_cd_date_cot,cstm_customer_inv_tx_cot,cstm_customer_appr_tx_cot,
             cstm_customer_paid_tx_cot,cstm_customer_process_tx_cot,cstm_customer_recv_tx_cot,cstm_customer_req_tx_cot,
             cstm_customer_tx_date_cot,chb_customer_inv_tx_cot,chb_customer_appr_tx_cot,chb_customer_paid_tx_cot,chb_customer_process_tx_cot,
            chb_customer_recv_tx_cot,chb_customer_req_tx_cot,chb_customer_tx_date_cot]
  }

  set: wholesaler_tx_cot_set {
    fields: [indir_ws_inv_tx_cot,indir_ws_appr_tx_cot,indir_ws_paid_tx_cot,indir_ws_process_tx_cot,indir_ws_recv_tx_cot,
             indir_ws_req_tx_cot,indir_ws_tx_date_cot,chb_ws_inv_tx_cot,chb_ws_appr_tx_cot,chb_ws_paid_tx_cot,chb_ws_process_tx_cot,
            chb_ws_recv_tx_cot,chb_ws_req_tx_cot,chb_ws_tx_date_cot]
  }

  set: plan_cust_tx_cot_set {
    fields: [rbt_pc_inv_tx_cot,rbt_pc_appr_tx_cot,rbt_pc_paid_tx_cot,rbt_pc_process_tx_cot,rbt_pc_recv_tx_cot,rbt_pc_req_tx_cot,
             rbt_pc_tx_date_cot,rbt_pc_cd_date_cot,pr_pc_inv_tx_cot,pr_pc_appr_tx_cot,pr_pc_paid_tx_cot,pr_pc_process_tx_cot,
            pr_pc_recv_tx_cot,pr_pc_req_tx_cot,pr_pc_tx_date_cot,pr_pc_cd_date_cot]
  }

  set: mco_pbm_tx_cot_set {
    fields: [mco_pbm_start_tx_cot,mco_pbm_end_tx_cot,mco_pbm_cd_tx_cot,mco_pbm_cot_util_end]
  }

}
