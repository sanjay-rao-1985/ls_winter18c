view: mn_comb_disc_ben_qual_lines {
  derived_table: {
    sql: SELECT
      BILL_TO_CUSTOMER_WID,
      CS_LINE_REF_NUM,
      DATE_CREATED,
      DATE_UPDATED,
      DS_LINE_REF_NUM,
      ESTIMATE_PMT_FLAG,
      ESTIMATE_QTY,
      EXCHANGE_RATE,
      EXTERNAL_CONTRACT_ID,
      EXTERNAL_CURRENCY,
      EXTERNAL_INVOICE_QTY,
      EXTERNAL_INV_AMT,
      EXTERNAL_INV_UOM,
      EXTERNAL_LINE_REF_ID,
      EXTERNAL_LINE_TYPE,
      EXTERNAL_ORG_ID,
      EXTERNAL_PAID_DATE,
      EXTERNAL_PAID_DATE_WID,
      EXTERNAL_REF_ID,
      EXTRACTION_DATE,
      EXTRACTION_DATE_WID,
      EXT_BD_ID,
      IDS_LINE_REF_NUM,
      INCLUSION_TYPE,
      INV_AMT,
      INV_AMT_BASE,
      INV_AMT_CURR,
      INV_DATE_WID,
      INV_QTY,
      NULL AS INV_QTY_UOM,
      IS_HISTORICAL_FLAG,
      MCO_LINE_REF_NUM,
      MCD_CLAIM_WID,
      MCD_LINE_REF_NUM,
      MCD_PAYMENT_WID,
      ORIGINAL_INV_QTY,
      ORIGINAL_INV_UOM,
      ORIG_REF_NUM,
      PAID_AMT,
      PAID_AMT_BASE,
      PAID_AMT_CURR,
      PAID_DATE_WID,
      PAYEE_WID,
      PAYMENT_END_DATE,
      PAYMENT_START_DATE,
      PLAN_WID,
      PRODUCT_WID,
      PUB_UTIL_ID,
      REBATE_LINE_REF_NUM,
      REBATE_MODULE_TYPE,
      REBATE_PMT_BEN_WID,
      REBATE_PMT_WID,
      REBATE_REVERSAL_STATUS,
      REBATE_TYPE_WID,
      SHIP_TO_CUSTOMER_WID,
      SOLD_TO_CUSTOMER_WID,
      SRC_SYS_BUCKET_LINE_ID,
      SRC_SYS_EST_PAYMENT_LI_ID,
      SRC_SYS_EST_PLAN_ID,
      WAC_AMT,
      NULL AS RBT_PROG_QUAL_LINE_WID,
      NULL AS REBATE_PMT_BENEFIT_WID,
      NULL AS REPORT_BASELINE_MARKET_SHARE,
      NULL AS REPORT_GROWTH_VALUE,
      NULL AS REPORT_MARKET_SHARE,
      NULL AS REPORT_NATIONAL_MARKET_SHARE,
      NULL AS REPORT_TIER_ATTAINED,
      NULL AS REPORT_TOTAL_BASELINE_COMP_QTY,
      NULL AS REPORT_TOTAL_BASELINE_INT_QTY,
      NULL AS REPORT_TOTAL_BASELINE_NUM_QTY,
      NULL AS REPORT_TOTAL_COMPETITOR_QTY,
      NULL AS REPORT_TOTAL_INTERNAL_QTY,
      NULL AS REPORT_TOTAL_NUMERATOR_QTY,
      RUN_ID,
      SOURCE_SYSTEM_ID,
      'B' || REBATE_LINE_REF_NUM AS COMBINED_PK,
      'Benefit' AS LINE_TYPE
      FROM MN_DISCOUNT_BRIDGE_FACT_VW
      WHERE PAID_AMT <> 0

      UNION ALL

      SELECT
      BILL_TO_CUSTOMER_WID,
      NULL AS CS_LINE_REF_NUM,
      DATE_CREATED,
      DATE_UPDATED,
      NULL AS DS_LINE_REF_NUM,
      NULL AS ESTIMATE_PMT_FLAG,
      NULL AS ESTIMATE_QTY,
      EXCHANGE_RATE,
      NULL AS EXTERNAL_CONTRACT_ID,
      NULL AS EXTERNAL_CURRENCY,
      NULL AS EXTERNAL_INVOICE_QTY,
      NULL AS EXTERNAL_INV_AMT,
      NULL AS EXTERNAL_INV_UOM,
      EXTERNAL_LINE_REF_ID,
      NULL AS EXTERNAL_LINE_TYPE,
      NULL AS EXTERNAL_ORG_ID,
      NULL AS EXTERNAL_PAID_DATE,
      NULL AS EXTERNAL_PAID_DATE_WID,
      NULL AS EXTERNAL_REF_ID,
      NULL AS EXTRACTION_DATE,
      NULL AS EXTRACTION_DATE_WID,
      NULL AS EXT_BD_ID,
      NULL AS IDS_LINE_REF_NUM,
      INCLUSION_TYPE,
      INV_AMT,
      INV_AMT_BASE,
      INV_AMT_CURR,
      INV_DATE_WID,
      INV_QTY,
      INV_QTY_UOM,
      NULL AS IS_HISTORICAL_FLAG,
      MCO_LINE_REF_NUM,
      NULL AS MCD_CLAIM_WID,
      NULL AS MCD_LINE_REF_NUM,
      NULL AS MCD_PAYMENT_WID,
      NULL AS ORIGINAL_INV_QTY,
      NULL AS ORIGINAL_INV_UOM,
      ORIG_REF_NUM,
      NULL AS PAID_AMT,
      NULL AS PAID_AMT_BASE,
      NULL AS PAID_AMT_CURR,
      NULL AS PAID_DATE_WID,
      NULL AS PAYEE_WID,
      NULL AS PAYMENT_END_DATE,
      NULL AS PAYMENT_START_DATE,
      PLAN_WID,
      PRODUCT_WID,
      PUB_UTIL_ID,
      NULL AS REBATE_LINE_REF_NUM,
      NULL AS REBATE_MODULE_TYPE,
      NULL AS REBATE_PMT_BEN_WID,
      REBATE_PMT_WID,
      NULL AS REBATE_REVERSAL_STATUS,
      NULL AS REBATE_TYPE_WID,
      NULL AS SHIP_TO_CUSTOMER_WID,
      NULL AS SOLD_TO_CUSTOMER_WID,
      NULL AS SRC_SYS_BUCKET_LINE_ID,
      NULL AS SRC_SYS_EST_PAYMENT_LI_ID,
      NULL AS SRC_SYS_EST_PLAN_ID,
      NULL AS WAC_AMT,
      RBT_PROG_QUAL_LINE_WID,
      REBATE_PMT_BENEFIT_WID,
      REPORT_BASELINE_MARKET_SHARE,
      REPORT_GROWTH_VALUE,
      REPORT_MARKET_SHARE,
      REPORT_NATIONAL_MARKET_SHARE,
      REPORT_TIER_ATTAINED,
      REPORT_TOTAL_BASELINE_COMP_QTY,
      REPORT_TOTAL_BASELINE_INT_QTY,
      REPORT_TOTAL_BASELINE_NUM_QTY,
      REPORT_TOTAL_COMPETITOR_QTY,
      REPORT_TOTAL_INTERNAL_QTY,
      REPORT_TOTAL_NUMERATOR_QTY,
      RUN_ID,
      SOURCE_SYSTEM_ID,
      'Q' || RBT_PROG_QUAL_LINE_WID AS COMBINED_PK,
      'Qualification' AS LINE_TYPE
      FROM
      MN_RBT_PROG_QL_LINES_FACT_VW
       ;;
  }

    dimension: bill_to_customer_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.BILL_TO_CUSTOMER_WID ;;
    }

    dimension: cs_line_ref_num {
      type: string
      label: "Custom Sale Line #"
      sql: ${TABLE}.CS_LINE_REF_NUM ;;
    }

  dimension: line_type {
    type: string
    label: "Line Type"
    sql: ${TABLE}.LINE_TYPE ;;
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

    dimension: ds_line_ref_num {
      type: string
      label: "Direct Sale Line #"
      sql: ${TABLE}.DS_LINE_REF_NUM ;;
    }

    dimension: estimate_pmt_flag {
      type: string
      hidden: yes
      sql: ${TABLE}.ESTIMATE_PMT_FLAG ;;
    }

    dimension: estimate_pmt_yes_no {
      type: string
      sql: CASE WHEN ${estimate_pmt_flag} = 1 THEN 'Yes'
        WHEN ${estimate_pmt_flag} = 0 THEN 'No' ELSE NULL END ;;
      label: "Is Estimated Payment ?"
    }

    dimension: estimate_qty {
      type: number
      sql: ${TABLE}.ESTIMATE_QTY ;;
      label: "Estimated Quantity"
    }

    dimension: exchange_rate {
      type: number
      sql: ${TABLE}.EXCHANGE_RATE ;;
    }

    dimension: ext_bd_id {
      hidden: yes
      type: string
      sql: ${TABLE}.EXT_BD_ID ;;
    }

    dimension: external_contract_id {
      hidden: yes
      type: string
      sql: ${TABLE}.EXTERNAL_CONTRACT_ID ;;
    }

    dimension: external_currency {
      type: string
      sql: ${TABLE}.EXTERNAL_CURRENCY ;;
    }

    dimension: external_inv_amt {
      type: number
      sql: ${TABLE}.EXTERNAL_INV_AMT ;;
      hidden: yes
      value_format_name: usd
      label: "External Invoice Amount"
    }

    dimension: external_inv_uom {
      type: string
      sql: ${TABLE}.EXTERNAL_INV_UOM ;;
      label: "External Invoice UOM"
    }

    dimension: external_invoice_qty {
      type: string
      hidden: yes
      sql: ${TABLE}.EXTERNAL_INVOICE_QTY ;;
      label: "External Invoice Quantity"
    }

    dimension: external_line_ref_id {
      type: string
      sql: ${TABLE}.EXTERNAL_LINE_REF_ID ;;
      label: "External Line Reference Number"
    }

    dimension: external_line_type {
      type: string
      sql: ${TABLE}.EXTERNAL_LINE_TYPE ;;
    }

    dimension: external_org_id {
      type: string
      sql: ${TABLE}.EXTERNAL_ORG_ID ;;
    }

    dimension_group: external_paid {
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
      sql: ${TABLE}.EXTERNAL_PAID_DATE ;;
    }

    dimension: external_paid_date_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.EXTERNAL_PAID_DATE_WID ;;
    }

    dimension: external_ref_id {
      type: string
      sql: ${TABLE}.EXTERNAL_REF_ID ;;
      label: "External Reference Number"
    }

    dimension_group: extraction {
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
      sql: ${TABLE}.EXTRACTION_DATE ;;
    }

    dimension: extraction_date_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.EXTRACTION_DATE_WID ;;
    }

    dimension: ids_line_ref_num {
      type: string
      label: "Indirect Sale Line #"
      sql: ${TABLE}.IDS_LINE_REF_NUM ;;
    }

    dimension: inclusion_type {
      type: string
      sql: ${TABLE}.INCLUSION_TYPE ;;
    }

    dimension: inv_amt {
      type: number
      label: "Invoice Amount"
      value_format_name: usd
      sql: ${TABLE}.INV_AMT ;;
    }

    dimension: inv_amt_base {
      type: number
      hidden: yes
      label: "Invoice Amount Base"
      sql: ${TABLE}.INV_AMT_BASE ;;
    }

    dimension: inv_amt_curr {
      type: string
      hidden: yes
      label: "Invoice Amount Currency"
      sql: ${TABLE}.INV_AMT_CURR ;;
    }

    dimension: inv_date_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.INV_DATE_WID ;;
    }

    dimension_group: invoice {
      type: time
      label: "Invoice"
      timeframes: [
        raw,
        time,
        date,
        week_of_year,
        month,
        quarter,
        year
      ]
      sql: to_date(${TABLE}.INV_DATE_WID,'yyyymmdd') ;;
    }

    dimension: inv_qty {
      type: number
      label: "Invoice Quantity"
      sql: ${TABLE}.INV_QTY ;;
    }

    dimension: is_historical_flag {
      hidden: yes
      type: string
      sql: ${TABLE}.IS_HISTORICAL_FLAG ;;
    }

    dimension: historical_yes_no {
      type: string
      label: "Is Historical ?"
      sql: CASE WHEN NVL(${is_historical_flag},'N') = 'N' THEN 'No' ELSE 'Yes' END ;;
    }

    dimension: mcd_claim_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.MCD_CLAIM_WID ;;
    }

    dimension: mcd_line_ref_num {
      type: string
      label: "Medicaid Line #"
      sql: ${TABLE}.MCD_LINE_REF_NUM ;;
    }

    dimension: mcd_payment_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.MCD_PAYMENT_WID ;;
    }

    dimension: mco_line_ref_num {
      hidden: yes
      type: string
      label: "Util Line #"
      sql: ${TABLE}.MCO_LINE_REF_NUM ;;
    }

    dimension: orig_ref_num {
      type: string
      sql: ${TABLE}.ORIG_REF_NUM ;;
      label: "Original Reference Number"
    }

    dimension: original_inv_qty {
      type: number
      sql: ${TABLE}.ORIGINAL_INV_QTY ;;
      label: "Original Invoice Quantity"
    }

    dimension: original_inv_uom {
      type: string
      sql: ${TABLE}.ORIGINAL_INV_UOM ;;
      label: "Original Invoice UOM"
    }

    dimension: paid_amt {
      type: number
      hidden: yes
      sql: ${TABLE}.PAID_AMT ;;
      label: "Rbt Pmt Amt"
    }

    dimension: paid_amt_base {
      type: string
      hidden: yes
      sql: ${TABLE}.PAID_AMT_BASE ;;
      label: "Paid Amount Base"
    }

    dimension: paid_amt_curr {
      type: number
      hidden: yes
      sql: ${TABLE}.PAID_AMT_CURR ;;
      label: "Currency"
    }

    dimension: paid_date_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.PAID_DATE_WID ;;
    }

    dimension: payee_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.PAYEE_WID ;;
    }

    dimension: plan_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.PLAN_WID ;;
    }

    dimension_group: payment_end {
      type: time
      label: "Rebate Payment End"
      timeframes: [
        raw,
        time,
        date,
        week_of_year,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.PAYMENT_END_DATE ;;
    }

    dimension_group: payment_start {
      type: time
      label: "Rebate Payment Start"
      timeframes: [
        raw,
        time,
        date,
        week_of_year,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.PAYMENT_START_DATE ;;
    }

    dimension: product_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.PRODUCT_WID ;;
    }

    dimension: pub_util_id {
      type: number
      label: "Published Utilization ID"
      sql: ${TABLE}.PUB_UTIL_ID ;;
    }

    dimension: rebate_line_ref_num {
      type: number
#       primary_key: yes
      sql: ${TABLE}.REBATE_LINE_REF_NUM ;;
      label: "Reference Number"
    }

  dimension: combined_pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.COMBINED_PK ;;
  }

    dimension: rebate_module_type {
      hidden: yes
      type: string
      sql: ${TABLE}.REBATE_MODULE_TYPE ;;
    }

    dimension: rebate_pmt_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.REBATE_PMT_WID ;;
    }

    dimension: rebate_reversal_status {
      type: string
      sql: ${TABLE}.REBATE_REVERSAL_STATUS ;;
    }

    dimension: rebate_type_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.REBATE_TYPE_WID ;;
    }

    dimension: run_id {
      hidden: yes
      type: number
      sql: ${TABLE}.RUN_ID ;;
    }

    dimension: ship_to_customer_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.SHIP_TO_CUSTOMER_WID ;;
    }

    dimension: sold_to_customer_wid {
      hidden: yes
      type: number
      sql: ${TABLE}.SOLD_TO_CUSTOMER_WID ;;
    }

    dimension: source_system_id {
      hidden: yes
      type: string
      sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
    }

    dimension: src_sys_bucket_line_id {
      type: number
      hidden: yes
      sql: ${TABLE}.SRC_SYS_BUCKET_LINE_ID ;;
    }

    dimension: src_sys_est_payment_li_id {
      type: number
      hidden: yes
      sql: ${TABLE}.SRC_SYS_EST_PAYMENT_LI_ID ;;
    }

    dimension: src_sys_est_plan_id {
      type: number
      hidden: yes
      sql: ${TABLE}.SRC_SYS_EST_PLAN_ID ;;
    }

    dimension: WAC_amt {
      type: number
      label: "WAC Amount"
      value_format_name: usd
      sql: ${TABLE}.WAC_AMT ;;
    }

    dimension: rebate_pmt_ben_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.REBATE_PMT_BEN_WID ;;
    }

    measure: count {
      type: count
      hidden: yes
      drill_fields: []
    }

    measure: total_rebate_paid_amount {
      type: sum
      label: "Rebate Payment Amount"
      value_format_name: usd
      sql: ${paid_amt} ;;
    }

    measure: external_invoive_amount {
      type: sum
      label: "Total Historical Rebate Invoice Amount"
      value_format_name: usd
      sql: ${external_inv_amt} ;;
    }

    measure: total_external_invoice_quantity {
      type: sum
      label: "Total Historical Rebate Invoice Quantity"
      value_format_name: decimal_0
      sql: TO_NUMBER(${external_invoice_qty}) ;;
    }
    set: payer_discount_bridge_excluded_set {
      fields: [cs_line_ref_num,ids_line_ref_num,ds_line_ref_num,mcd_claim_wid,mcd_line_ref_num,mcd_payment_wid,pub_util_id,
        estimate_pmt_flag,estimate_qty,inv_amt_base,paid_amt_base]
    }

  dimension: rbt_prog_qual_line_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.RBT_PROG_QUAL_LINE_WID ;;
  }

  dimension: rebate_pmt_benefit_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.REBATE_PMT_BENEFIT_WID ;;
  }

  dimension: report_baseline_market_share {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_BASELINE_MARKET_SHARE ;;
  }

  dimension: report_growth_value {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_GROWTH_VALUE ;;
  }

  dimension: report_market_share {
    type: number
    hidden: yes
    value_format_name: percent_2
    sql: ${TABLE}.REPORT_MARKET_SHARE ;;
  }

  measure: market_share {
    type: average
    label: "Market Share"
    value_format_name: percent_2
    sql: CASE WHEN ${mn_rbt_qual_mb_prod_map_all.internal_item_flag} = 'Y' THEN ${report_market_share} ELSE NULL END ;;
  }

  dimension: report_national_market_share {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_NATIONAL_MARKET_SHARE ;;
  }

  dimension: report_tier_attained {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_TIER_ATTAINED ;;
  }

  dimension: report_total_baseline_comp_qty {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_TOTAL_BASELINE_COMP_QTY ;;
  }

  dimension: report_total_baseline_int_qty {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_TOTAL_BASELINE_INT_QTY ;;
  }

  dimension: report_total_baseline_num_qty {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_TOTAL_BASELINE_NUM_QTY ;;
  }

  dimension: report_total_competitor_qty {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_TOTAL_COMPETITOR_QTY ;;
  }

  dimension: report_total_internal_qty {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_TOTAL_INTERNAL_QTY ;;
  }

  dimension: report_total_numerator_qty {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORT_TOTAL_NUMERATOR_QTY ;;
  }

}
