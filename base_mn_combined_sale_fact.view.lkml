view: mn_combined_sale_fact {
  sql_table_name: MN_LKR_COMBINED_SALE_FACT_VW ;;

  dimension: access_user_wid {
    type: string
    sql: ${mn_user_access_sale_map.user_wid};;
  }

  dimension: access_user_name {
    type: string
    sql: ${mn_user_access_sale_map.user_name};;
  }

  dimension: adm_fee_amt_local {
    type: number
    hidden: yes
    label: "Paid Admin Fee Local Currency"
    value_format_name: usd
    sql: ${TABLE}.ADM_FEE_AMT ;;
  }

  dimension: adm_fee_amt {
    type: number
    label: "Paid Admin Fee"
    value_format_name: usd
    sql: CASE
      WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${adm_fee_amt_local}
      ELSE ${adm_fee_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SALE_TYPE ;;
  }

  dimension: base_price_local {
    type: number
    hidden: yes
    label: "Base Price Local Currency"
    value_format_name: usd
    sql: ${TABLE}.BASE_PRICE ;;
  }

  dimension: base_price {
    type: number
    label: "Base Price"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${base_price_local}
    ELSE ${base_price_local} * ${exchange_rate}
    END ;;
  }

  dimension: basic_rbt_amt_local {
    type: number
    hidden: yes
    label: "Paid Basic Rebate Local Currency"
    value_format_name: usd
    sql: ${TABLE}.BASIC_RBT_AMT ;;
  }

  dimension: basic_rbt_amt {
    type: number
    label: "Paid Basic Rebate"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${basic_rbt_amt_local}
    ELSE ${basic_rbt_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: dist_srv_fee_amt_local {
    type: number
    hidden: yes
    label: "Distributor Service Fee Local Currency"
    value_format_name: usd
    sql: ${TABLE}.DIST_SRVS_FEE_AMT ;;
  }

  dimension: dist_srv_fee_amt {
    type: number
    label: "Distributor Service Fee"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${dist_srv_fee_amt_local}
    ELSE ${dist_srv_fee_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: bill_to_customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.BILL_TO_CUSTOMER_WID ;;
  }

  dimension: branch_distr_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.BRANCH_DISTR_WID ;;
  }

  dimension: chargeback_flag {
    hidden:  yes
    type: string
    sql: ${TABLE}.CHARGEBACK_FLAG ;;
  }

  dimension: chgbk_amt_local {
    type: number
    label: "Chargeback Amount Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.CHGBK_AMT ;;
  }

  dimension: chgbk_amt {
    type: number
    label: "Chargeback Amount"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${chgbk_amt_local}
    ELSE ${chgbk_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension_group: chgbk_close {
    type: time
    label: "Chargeback Close"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CHGBK_CLOSE_DATE ;;
  }

  dimension: chgbk_close_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CHGBK_CLOSE_DATE_WID ;;
  }

  dimension: close_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CLOSE_DATE_WID ;;
  }

  dimension: comments {
    type: string
    label: "Internal Comments"
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: contract_amt_local {
    type: number
    label: "Customer Price Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.CONTRACT_AMT ;;
  }

  dimension: contract_amt {
    type: number
    label: "Customer Price"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${contract_amt_local}
    ELSE ${contract_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: contract_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: cot_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.COT_WID ;;
  }

  dimension: custom_type1_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CUSTOM_TYPE1_WID ;;
  }

  dimension: custom_type2_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CUSTOM_TYPE2_WID ;;
  }

  dimension: custom_type3_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CUSTOM_TYPE3_WID ;;
  }

  dimension: customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: deal_doc_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.DEAL_DOC_WID ;;
  }

  dimension: distr_cost_amt_local {
    type: number
    label: "Wholesaler Cost Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.DISTR_COST_AMT ;;
  }

  dimension: distr_cost_amt {
    type: number
    label: "Wholesaler Cost"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${distr_cost_amt_local}
    ELSE ${distr_cost_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: distr_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.DISTR_WID ;;
  }

  dimension: exchange_rate {
    type: number
    hidden:  yes
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: external_contract_qty {
    type: number
    label: "External Contract Quantity"
    sql: ${TABLE}.EXTERNAL_CONTRACT_QTY ;;
  }

  dimension: external_contract_amt {
    type: number
    label: "External Customer Price"
    value_format_name: usd
    sql: ${TABLE}.EXTERNAL_CONTRACT_AMT ;;
  }

  dimension: fee_for_srvs_amt_local {
    type: number
    label: "Paid Fee for Service Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.FEE_FOR_SRVS_AMT ;;
  }

  dimension: fee_for_srvs_amt {
    type: number
    label: "Paid Fee for Service"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${fee_for_srvs_amt_local}
    ELSE ${fee_for_srvs_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: gpo_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.GPO_WID ;;
  }

  dimension: idn_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.IDN_WID ;;
  }

  dimension: internal_line_id {
    type: string
    label: "Line # (Internal Data)"
    sql: ${TABLE}.INTERNAL_LINE_ID ;;
  }

  dimension: inv_amt_local {
    type: number
    hidden: yes
    label: "Invoice Amount Local Currency"
    sql: ${TABLE}.INV_AMT ;;
  }

  dimension: inv_amt {
    type: number
    hidden: yes
    label: "Invoice Amount"
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${inv_amt_local}
    ELSE ${inv_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: inv_date_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.INV_DATE_WID ;;
  }

  dimension: inv_qty {
    type: number
    hidden: yes
    label: "Invoice Quantity"
    sql: ${TABLE}.INV_QTY ;;
  }

  dimension: inv_revenue {
    type: number
    label: "Invoice Revenue"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${inv_revenue_local}
    ELSE ${inv_revenue_base}
    END ;;
  }

  dimension: inv_revenue_base {
    type: number
    label: "Invoice Revenue"
    hidden: yes
    value_format_name: usd
    sql: ${inv_revenue_local} * ${exchange_rate} ;;
  }

  dimension: inv_revenue_local {
    type: number
    hidden: yes
    label: "Invoice Revenue"
    value_format_name: usd
    sql: ${inv_qty} * ${inv_amt_local} ;;
  }

  dimension: line_list_revenue_local {
    type: number
    label: "On-Invoice Revenue Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${inv_qty} *NVL( ${list_price_local}, ${inv_amt_local}) ;;
  }

  dimension: line_list_revenue {
    type: number
    label: "On-Invoice Revenue"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${line_list_revenue_local}
    ELSE ${line_list_revenue_local} * ${exchange_rate}
    END ;;
  }

  dimension: inv_uom {
    type: string
    hidden: yes
    label: "Invoice UOM"
    sql: ${TABLE}.INV_UOM ;;
  }

  dimension: ir_rbt_amt_local {
    type: number
    label: "Paid Incentive Rebate Amount Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.IR_RBT_AMT ;;
  }

  dimension: ir_rbt_amt {
    type: number
    label: "Paid Incentive Rebate Amount"
    value_format_name: usd
      sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${ir_rbt_amt_local}
    ELSE ${ir_rbt_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: lifecycle_status {
    hidden:  yes
    type: string
    sql: ${TABLE}.LIFECYCLE_STATUS ;;
  }

  dimension: lifecycle_status_name {
    type: string
    label: "Lifecycle Status"
    sql: ${TABLE}.LIFECYCLE_STATUS_NAME ;;
  }

  dimension: line_ref_num {
    type: string
    primary_key: yes
    label: "Line #"
    sql: ${TABLE}.LINE_REF_NUM ;;
  }

  dimension: line_severity {
    hidden:  yes
    type: string
    sql: ${TABLE}.LINE_SEVERITY ;;
  }

  dimension: line_severity_name {
    type: string
    label: "Validation Severity"
    sql: ${TABLE}.LINE_SEVERITY_NAME ;;
  }

  dimension: list_price_local {
    type: number
    hidden: yes
    label: "List Price Local Currency"
    value_format_name: usd
    sql: ${TABLE}.LIST_PRICE ;;
  }

  dimension: list_price {
    type: number
    label: "List Price"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${list_price_local}
    ELSE ${list_price_local} * ${exchange_rate}
    END ;;
  }

  dimension_group: load {
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
    sql: ${TABLE}.LOAD_DATE ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: TO_DATE(${TABLE}.INV_DATE_WID,'YYYYMMDD') ;;
  }

  dimension: rolling_12_months {
    type: yesno
    sql: ADD_MONTHS(TO_DATE(${TABLE}.INV_DATE_WID,'YYYYMMDD'), 12) > SYSDATE;;
  }

  dimension: org_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: paid_chgbk_amt_local {
    type: number
    hidden: yes
    label: "Paid Chargeback Amount Local Currency"
    sql: ${TABLE}.PAID_CHGBK_AMT ;;
  }

  dimension: paid_chgbk_amt {
    type: number
    hidden: yes
    label: "Paid Chargeback Amount"
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${paid_chgbk_amt_local}
    ELSE ${paid_chgbk_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: paid_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: parent_distr_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PARENT_DISTR_WID ;;
  }

  dimension: pg_commit_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PG_COMMIT_WID ;;
  }

  dimension: pg_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: price_condition_code1 {
    type: string
    sql: ${TABLE}.PRC_CONDITION_CODE1 ;;
  }

  dimension: price_condition_code2 {
    type: string
    sql: ${TABLE}.PRC_CONDITION_CODE2 ;;
  }

  dimension: process_date_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PROCESS_DATE_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.RECEIVED_DATE ;;
  }

  dimension: reversal_status {
    type: string
    hidden:  yes
    sql: ${TABLE}.REVERSAL_STATUS ;;
  }

  dimension: reversal_status_name {
    type: string
    label: "Adjustment Status"
    sql: ${TABLE}.REVERSAL_STATUS_NAME ;;
  }

  dimension: sale_currency {
    type: string
    label: "Currency"
    sql: ${TABLE}.SALE_CURR ;;
  }

  dimension: ship_to_customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.SHIP_TO_CUSTOMER_WID ;;
  }

  dimension: sold_to_customer_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.SOLD_TO_CUSTOMER_WID ;;
  }

  dimension_group: src_model {
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
    sql: ${TABLE}.SRC_MODEL_DATE ;;
  }

  dimension: src_sys_commit_id {
    type: number
    hidden:  yes
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension_group: submission_close {
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
    sql: ${TABLE}.SUB_CLOSE_DATE ;;
  }

  dimension: submission_number {
    type: string
    label: "Submission #"
    sql: ${TABLE}.SUBMISSION_NUM ;;
  }

  dimension: tier_idx {
    type: number
    label: "Price Tier"
    sql: ${TABLE}.TIER_IDX ;;
  }

  dimension: total_appr_rebate_local {
    type: number
    label: "Approved Chargeback Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.TOTAL_APPR_REBATE ;;
  }

  dimension: total_appr_rebate {
    type: number
    label: "Approved Chargeback"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${total_appr_rebate_local}
    ELSE ${total_appr_rebate_local} * ${exchange_rate}
    END ;;
  }

  dimension: total_chgbk_amt_local {
    type: number
    hidden: yes
    label: "Total Chargeback Amount Local Currency"
    sql: ${TABLE}.TOTAL_CHGBK_AMT ;;
  }

  dimension: total_chgbk_amt {
    type: number
    hidden: yes
    label: "Total Chargeback Amount"
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${total_chgbk_amt_local}
    ELSE ${total_chgbk_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: total_discrepancy_amt_local {
    type: number
    label: "Discrepancy Local Currency"
    hidden: yes
    sql: ${TABLE}.TOTAL_DISCREPANCY_AMT ;;
  }

  dimension: total_discrepancy_amt {
    type: number
    label: "Discrepancy"
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${total_discrepancy_amt_local}
    ELSE ${total_discrepancy_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: total_distr_cost_amt_local {
    type: number
    label: "Total Distributor Cost Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.TOTAL_DISTR_COST_AMT ;;
  }

  dimension: total_distr_cost_amt {
    type: number
    label: "Total Distributor Cost"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${total_distr_cost_amt_local}
    ELSE ${total_distr_cost_amt_local} * ${exchange_rate}
    END ;;
  }

  dimension: total_rebate_local {
    type: number
    label: "Total Line Rebate Local Currency"
    hidden: yes
    value_format_name: usd
    sql: ${TABLE}.TOTAL_RBT_AMT ;;
  }

  dimension: total_rebate {
    type: number
    label: "Total Line Rebate"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${total_rebate_local}
    ELSE ${total_rebate_local} * ${exchange_rate}
    END ;;
  }

  dimension: rebate_minus_fee {
    type: number
    hidden: yes
    label: "Rebate Net Admin Fee"
    value_format_name: usd
    sql: ${total_rebate} - ${adm_fee_amt} ;;
  }

  filter: date_frame_selection {
    label: "Period Timeframe Selection"
    default_value: "Quarter"
    suggestions: ["Month", "Quarter", "Year"]
  }

  filter: ytd_vs_year_selection {
    label: "YTD vs Full Year Selection"
    default_value: "Full Year"
    suggestions: ["Year To Date", "Full Year"]
  }

  filter: base_local_curr_selection {
    label: "Currency Mode"
    default_value: "Local"
    suggestions: ["Local", "Base"]
  }

  dimension: ytd_vs_year_label {
    type:  string
    label: "Year Selection"
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN 'YTD '||TO_CHAR(SYSDATE,'YYYY')||' vs YTD '||TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY')
      ELSE TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY')||' vs '||TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY')
    END ;;
  }

  dimension: rolling_12_months_label {
    type:  string
    label: "Rolling 12 months label"
    sql: 'Rolling 12 months ' ||TO_CHAR(TRUNC(SYSDATE),'YYYY')  ||' vs '  ||TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY');;
  }

  dimension: rolling_12_months_year_label {
    type:  string
    label: "Rolling 12 Months Year"
    sql: CASE
      WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)  THEN TO_CHAR(TRUNC(SYSDATE),'YYYY')||' (Trailing 12 Months)'
      WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-24)  THEN TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY')||' (Trailing 12 Months)'
      ELSE  NULL END
    ;;
  }

  dimension: rolling_past_12_months_year_label {
    type:  string
    label: "Past Rolling 12 Months Year"
    sql: CASE
      WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') BETWEEN  ADD_MONTHS(TRUNC(SYSDATE),-24)   AND  ADD_MONTHS(TRUNC(SYSDATE),-12)  THEN TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY')||' (Trailing 12 Months)'
      WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') BETWEEN  ADD_MONTHS(TRUNC(SYSDATE),-36)   AND  ADD_MONTHS(TRUNC(SYSDATE),-24)  THEN TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY')||' (Trailing 12 Months)'
      ELSE  NULL END
    ;;
  }

  dimension: rolling_24_months_year_label {
    type:  string
    label: "Rolling 24 Months Year"
    sql: CASE
      WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)  THEN TO_CHAR(TRUNC(SYSDATE),'YYYY')||' (Trailing 12 Months)'
      WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-24)  THEN TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY')||' (Trailing 12 Months)'
      WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-36)  THEN TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY')||' (Trailing 12 Months)'
      ELSE  NULL END
    ;;
  }


  dimension: date_period {
    type:  string
    sql:
    CASE
      WHEN {% condition date_frame_selection %} 'Year' {% endcondition %} THEN TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'YYYY')
      WHEN {% condition date_frame_selection %} 'Quarter' {% endcondition %} THEN TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'YYYY')||'-Q'||TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'Q')
      ELSE TO_CHAR(TO_DATE(${inv_date_wid},'YYYYMMDD'),'YYYY-MM')
    END ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: rebate {
    type: sum
    sql: ${total_rebate} ;;
    label: "Rebates"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

  measure: volume {
    type: sum
    sql: ${inv_qty} ;;
    label: "Volume"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

  measure: list_revenue {
    type: sum
    sql: ${line_list_revenue} ;;
    label: "List Price Revenue"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

   measure: revenue {
    type: sum
    sql: ${inv_revenue} ;;
    label: "Revenue"
    value_format: "[>=10000000]0,,\"M\";[>=10000]0,\"K\";0"
    drill_fields: [detail*]
  }

  measure: decimal_revenue {
    type: sum
    sql: ${inv_revenue} ;;
    label: "Revenue (decimal)"
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: avg_list_price {
    sql: ${list_revenue}/NULLIF(${volume},0) ;;
    label: "Average List Price"
    type:  number
    value_format_name: decimal_2
    drill_fields: [detail*]
  }


  measure: unit_rebate {
    sql: ${rebate}/NULLIF(${volume},0) ;;
    label: "Rebate per Unit"
    type:  number
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: oninvoice_rebate_percent {
    sql:  (${list_revenue} - ${revenue} )/NULLIF(${list_revenue},0) ;;
    type:  number
    label: "OnInvoice Discount Percent"
    value_format_name: percent_0
    drill_fields: [detail*]
  }

  measure: net_rebate_percent {
    sql:   1 - (${list_revenue} - ${rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    label: "Net Discount Percent"
    value_format_name: percent_0
    drill_fields: [detail*]
  }

  measure: total_rebate_percent {
    sql:   (${list_revenue} - ${revenue} + ${rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    label: "Total Discount Percent"
    value_format_name: percent_0
    drill_fields: [detail*]
  }

  measure: net_price {
    sql:  (${revenue} - ${rebate})/NULLIF(${volume},0) ;;
    type:  number
    label: "Average Price Net of Rebates"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: price {
    sql:  ${revenue}/NULLIF(${volume},0) ;;
    type:  number
    label: "Average Price"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: inv_qty_ytd_year {
    type: sum
    label: "Invoice Quantity YTD"
    value_format_name: decimal_0
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= TRUNC(SYSDATE,'YYYY') THEN ${inv_qty} ELSE  0 END ;;
  }

  measure: inv_qty_prior_ytd_year {
    type: sum
    label: "Invoice Quantity Prior YTD"
    value_format_name: decimal_0
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < TRUNC(SYSDATE,'YYYY') THEN ${inv_qty} ELSE  0 END ;;
  }

  measure: inv_qty_12_months {
    type: sum
    value_format_name: decimal_0
    label: "Invoice Quantity Trailing 12 Months"
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)  THEN ${inv_qty} ELSE  0 END ;;
  }

  measure: inv_qty_prior_12_months {
    type: sum
    label: "Invoice Quantity Prior Trailing 12 Months"
    value_format_name: decimal_0
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-24)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < ADD_MONTHS(TRUNC(SYSDATE),-12) THEN ${inv_qty} ELSE  0 END ;;
  }

  measure: inv_qty_12_months_growth {
    type: number
    value_format_name: percent_2
    label: "Invoice Quantity Trailing 12 Months Growth"
    sql: (${inv_qty_12_months} - ${inv_qty_prior_12_months} )/ NULLIF(${inv_qty_prior_12_months},0) ;;
  }

  measure: inv_qty_year1 {
    type: sum
    label: "Invoice Quantity Prior Year"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY'), ${inv_qty}, 0) ;;
  }

  measure: inv_qty_year2 {
    type: sum
    value_format_name: decimal_0
    label: "Invoice Quantity Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY'), ${inv_qty}, 0) ;;
  }

  measure: inv_qty_year3 {
    type: sum
    label: "Invoice Quantity Prior Year 3"
    value_format_name: decimal_0
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-36),'YYYY'), ${inv_qty}, 0) ;;
  }

    measure: inv_revenue_ytd_year {
    type: sum
    label: "Invoice Revenue YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= TRUNC(SYSDATE,'YYYY') THEN ${inv_revenue} ELSE  0 END ;;
  }

  measure: inv_revenue_prior_ytd_year {
    type: sum
    label: "Invoice Revenue Prior YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < TRUNC(SYSDATE,'YYYY') THEN ${inv_revenue} ELSE  0 END ;;
  }

  measure: inv_revenue_12_months {
    type: sum
    value_format_name: decimal_0
    label: "Invoice Revenue Trailing 12 months"
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)  THEN  ${inv_revenue} ELSE  0 END ;;
  }

  measure: inv_revenue_prior_12_months {
    type: sum
    value_format_name: decimal_0
    label: "Invoice Revenue Prior Trailing 12 months"
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-24)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < ADD_MONTHS(TRUNC(SYSDATE),-12) THEN  ${inv_revenue} ELSE  0 END ;;
  }

  measure: inv_revenue_12_months_growth {
    type: number
    value_format_name: percent_2
    label: "Invoice Revenue Trailing 12 Months Growth"
    sql: (${inv_revenue_12_months} - ${inv_revenue_prior_12_months} )/ NULLIF(${inv_revenue_prior_12_months},0) ;;
  }

  measure: inv_revenue_2_prior_12_months {
    type: sum
    value_format_name: decimal_0
    label: "Invoice Revenue Prior Prior Trailing 12 months"
    sql: CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-36)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < ADD_MONTHS(TRUNC(SYSDATE),-24) THEN  ${inv_revenue} ELSE  0 END ;;
  }

  measure: inv_revenue_year1 {
    type: sum
    label: "Invoice Revenue Prior Year"
    value_format_name: decimal_0
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY'),${inv_revenue}, 0) ;;
  }

  measure: inv_revenue_year2 {
    type: sum
    value_format_name: decimal_0
    label: "Invoice Revenue Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY'),${inv_revenue}, 0) ;;
  }

  measure: inv_revenue_year3 {
    type: sum
    label: "Invoice Revenue Prior Year 3"
    value_format_name: decimal_0
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-36),'YYYY'),${inv_revenue}, 0) ;;
  }


  ###################   Revenue Sales TOGGLE KPIS ###################

  measure: inv_revenue_toggle_year {
    type:  number
    label: "Invoice Revenue Year 1 (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${inv_revenue_ytd_year}
      ELSE ${inv_revenue_year1}
    END ;;
  }

  measure: inv_revenue_toggle_prior_year {
    type:  number
    label: "Invoice Revenue Prior Year  (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${inv_revenue_prior_ytd_year}
      ELSE ${inv_revenue_year2}
    END ;;
  }

  measure: inv_revenue_delta_year {
    type:  number
    label: "Invoice Revenue Delta (Toggled)"
    value_format_name: decimal_2
    sql: ${inv_revenue_toggle_year}- ${inv_revenue_toggle_prior_year}  ;;
  }

  measure: inv_revenue_growth_year {
    type:  number
    label: "Invoice Revenue Growth (Toggled)"
    value_format_name: percent_0
    sql: (${inv_revenue_toggle_year} - ${inv_revenue_toggle_prior_year} )/ NULLIF(${inv_revenue_toggle_prior_year},0);;
  }


  ###################   Net Sales TOGGLE KPIS ###################
  measure: net_revenue_ytd_year {
    type: sum
    label: "Net Revenue YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= TRUNC(TRUNC(SYSDATE),'YYYY') THEN ${inv_revenue} - ${total_rebate} ELSE  0 END ;;
  }

  measure: net_revenue_prior_ytd_year {
    type: sum
    label: "Net Revenue Prior YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < TRUNC(SYSDATE,'YYYY') THEN ${inv_revenue} - ${total_rebate} ELSE  0 END ;;
  }

  measure: net_revenue_year1 {
    type: sum
    label: "Net Revenue Prior Year"
    value_format_name: decimal_0
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY'),${inv_revenue} - ${total_rebate} , 0) ;;
  }

  measure: net_revenue_year2 {
    type: sum
    value_format_name: decimal_0
    label: "Net Revenue Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY'),${inv_revenue} - ${total_rebate} , 0) ;;
  }

  measure: net_revenue_toggle_year {
    type:  number
    label: "Net Revenue Year 1 (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${net_revenue_ytd_year}
      ELSE ${net_revenue_year1}
    END ;;
  }

  measure: net_revenue_toggle_prior_year {
    type:  number
    label: "Net Revenue Prior Year  (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${net_revenue_prior_ytd_year}
      ELSE ${net_revenue_year2}
    END ;;
  }

  measure: net_revenue_delta_year {
    type:  number
    label: "Net Revenue Delta (Toggled)"
    value_format_name: decimal_2
    sql: ${net_revenue_toggle_year}- ${net_revenue_toggle_prior_year}  ;;
  }

  measure: net_revenue_growth_year {
    type:  number
    label: "Net Revenue Growth (Toggled)"
    value_format_name: percent_0
    sql: (${net_revenue_toggle_year} - ${net_revenue_toggle_prior_year} )/ NULLIF(${net_revenue_toggle_prior_year},0);;
  }

  ###################   Admin Fee TOGGLE KPIS ###################
  measure: adm_revenue_ytd_year {
    type: sum
    label: "Admin Fee YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= TRUNC(SYSDATE,'YYYY') THEN ${adm_fee_amt} ELSE  0 END ;;
  }

  measure: adm_revenue_prior_ytd_year {
    type: sum
    label: "Admin Fee Prior YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < TRUNC(SYSDATE,'YYYY') THEN ${adm_fee_amt} ELSE  0 END ;;
  }

  measure: adm_revenue_year1 {
    type: sum
    label: "Admin Fee Prior Year"
    value_format_name: decimal_0
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY'),${adm_fee_amt} , 0) ;;
  }

  measure: adm_revenue_year2 {
    type: sum
    value_format_name: decimal_0
    label: "Admin Fee Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY'),${adm_fee_amt} , 0) ;;
  }

  measure: adm_revenue_toggle_year {
    type:  number
    label: "Admin Fee Year 1 (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${adm_revenue_ytd_year}
      ELSE ${adm_revenue_year1}
    END ;;
  }

  measure: adm_revenue_toggle_prior_year {
    type:  number
    label: "Admin Fee Prior Year  (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${adm_revenue_prior_ytd_year}
      ELSE ${adm_revenue_year2}
    END ;;
  }

  measure: adm_revenue_delta_year {
    type:  number
    label: "Admin Fee Delta (Toggled)"
    value_format_name: decimal_2
    sql: ${adm_revenue_toggle_year}- ${adm_revenue_toggle_prior_year}  ;;
  }

  measure: adm_revenue_growth_year {
    type:  number
    label: "Admin Fee Growth (Toggled)"
    value_format_name: percent_0
    sql: (${adm_revenue_toggle_year} - ${adm_revenue_toggle_prior_year} )/ NULLIF(${adm_revenue_toggle_prior_year},0);;
  }

  ###################   Rebates TOGGLE KPIS ###################
  measure: rbt_fee_revenue_ytd_year {
    type: sum
    label: "Rebates YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= TRUNC(SYSDATE,'YYYY') THEN ${rebate_minus_fee} ELSE  0 END ;;
  }

  measure: rbt_fee_revenue_prior_ytd_year {
    type: sum
    label: "Rebates Prior YTD"
    value_format_name: decimal_0
    sql:  CASE WHEN TO_DATE(${inv_date_wid},'YYYYMMDD') >= ADD_MONTHS(TRUNC(SYSDATE),-12)
      AND TO_DATE(${inv_date_wid},'YYYYMMDD') < TRUNC(SYSDATE,'YYYY') THEN ${rebate_minus_fee} ELSE  0 END ;;
  }

  measure: rbt_fee_revenue_year1 {
    type: sum
    label: "Rebates Prior Year"
    value_format_name: decimal_0
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-12),'YYYY'),${rebate_minus_fee} , 0) ;;
  }

  measure: rbt_fee_revenue_year2 {
    type: sum
    value_format_name: decimal_0
    label: "Rebates Prior Year 2"
    sql: DECODE(SUBSTR(TO_CHAR(${inv_date_wid}),1,4), TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE),-24),'YYYY'),${rebate_minus_fee} , 0) ;;
  }

  measure: rbt_fee_revenue_toggle_year {
    type:  number
    label: "Rebates Year 1 (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${rbt_fee_revenue_ytd_year}
      ELSE ${rbt_fee_revenue_year1}
    END ;;
  }

  measure: rbt_fee_revenue_toggle_prior_year {
    type:  number
    label: "Rebates Prior Year  (Toggled)"
    value_format_name: decimal_2
    sql:
    CASE
      WHEN {% condition ytd_vs_year_selection %} 'Year To Date' {% endcondition %} THEN ${rbt_fee_revenue_prior_ytd_year}
      ELSE ${rbt_fee_revenue_year2}
    END ;;
  }

  measure: rbt_fee_revenue_delta_year {
    type:  number
    label: "Rebates Delta (Toggled)"
    value_format_name: decimal_2
    sql: ${rbt_fee_revenue_toggle_year}- ${rbt_fee_revenue_toggle_prior_year}  ;;
  }

  measure: rbt_fee_revenue_growth_year {
    type:  number
    label: "Rebates Growth (Toggled)"
    value_format_name: percent_0
    sql: (${rbt_fee_revenue_toggle_year} - ${rbt_fee_revenue_toggle_prior_year} )/ NULLIF(${rbt_fee_revenue_toggle_prior_year},0);;
  }

  ################################################################

  measure: invoice_revenue {
    type: sum
    label: "Total Invoice Revenue"
    value_format_name: usd
    sql: ${inv_revenue} ;;
  }

  measure: invoice_quantity {
    type: sum
    label: "Total Invoice Quantity"
    sql: ${inv_qty};;
  }

  measure: converted_inv_qty {
    type: sum
    label: "Converted Invoice Quantity"
    value_format_name: decimal_2
    sql: ${inv_qty}*nvl(${mn_uom_conversion_fact.base_uom_multiplier},1) ;;
  }

  measure: converted_inv_price {
    type: number
    label: "Converted Invoice Price"
    value_format_name: usd
    sql: CASE WHEN ${converted_inv_qty} = 0 THEN NULL ELSE ${invoice_revenue}/${converted_inv_qty} END ;;
  }

  measure: paid_chargeback_amount {
    type: sum
    label: "Total Paid Chargeback Amount"
   value_format_name: usd
    sql: ${paid_chgbk_amt};;
  }

  measure: total_chargeback_amount {
    type: sum
    label: "Total Chargeback Amount"
    value_format_name: usd
    sql: ${total_chgbk_amt};;
  }

  measure: total_ext_contract_amount {
    type: sum
    label: "Total External Contract Amount"
    value_format_name: usd
    sql: ${external_contract_amt} * ${external_contract_qty}  ;;
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      line_ref_num,
      invoice_date,
      inv_qty,
      inv_amt,
      total_rebate
    ]
  }

  set: custom_measure_set1  {
    fields: [
              rebate,volume,list_revenue ,revenue ,unit_rebate ,oninvoice_rebate_percent , net_rebate_percent,
              total_rebate_percent, net_price, price , inv_qty_year1 , inv_revenue_year1 , inv_qty_year2 ,
              inv_revenue_year3 ,  inv_qty_year3 , inv_revenue_year2 , inv_qty_ytd_year , inv_revenue_ytd_year ,
              inv_qty_prior_ytd_year , inv_revenue_prior_ytd_year, date_frame_selection, date_period
            ]
  }


  set: custom_measure_set2  {
    fields: [  ytd_vs_year_label, ytd_vs_year_selection,
      inv_qty_12_months, inv_qty_prior_12_months, inv_revenue_12_months, inv_revenue_prior_12_months, inv_qty_12_months_growth,
      inv_revenue_12_months_growth,
      net_revenue_growth_year, net_revenue_delta_year, net_revenue_toggle_prior_year, net_revenue_toggle_year,
      net_revenue_ytd_year, net_revenue_prior_ytd_year, net_revenue_year1, net_revenue_year2,
      adm_revenue_growth_year, adm_revenue_delta_year, adm_revenue_toggle_prior_year, adm_revenue_toggle_year,
      adm_revenue_ytd_year, adm_revenue_prior_ytd_year, adm_revenue_year1, adm_revenue_year2,
      rbt_fee_revenue_growth_year, rbt_fee_revenue_delta_year, rbt_fee_revenue_toggle_prior_year, rbt_fee_revenue_toggle_year,
      inv_revenue_toggle_prior_year, inv_revenue_toggle_year, inv_revenue_growth_year, inv_revenue_delta_year,
      rbt_fee_revenue_ytd_year, rbt_fee_revenue_prior_ytd_year, rbt_fee_revenue_year1, rbt_fee_revenue_year2,
      rolling_12_months_label, rolling_12_months_year_label, decimal_revenue, inv_revenue_2_prior_12_months,avg_list_price,
      rolling_24_months_year_label, rolling_past_12_months_year_label
    ]
  }

}
