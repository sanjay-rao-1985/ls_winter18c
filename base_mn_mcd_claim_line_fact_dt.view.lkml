view: mn_mcd_claim_line_fact_dt {
  derived_table: {
    sql: SELECT MCDCLF.*,CLMD.STATE FROM MN_MCD_CLAIM_LINE_FACT_VW MCDCLF
          JOIN MN_MCD_CLAIM_DIM_VW CLMD ON CLMD.CLAIM_WID = MCDCLF.MCD_CLAIM_WID
          WHERE MCDCLF.ROW_DELETED_FLAG = 'N'
       ;;
  }

  dimension: mcd_claim_line_wid {
    type: number
    label: "ID"
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.MCD_CLAIM_LINE_WID ;;
  }

  dimension: mcd_claim_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_CLAIM_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: mcd_program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_PROGRAM_WID ;;
  }

  dimension: ura_price_list_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.URA_PRICE_LIST_WID ;;
  }

  dimension: payee_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_WID ;;
  }

  dimension: src_sys_claim_line_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CLAIM_LINE_ID ;;
  }

  dimension: calc_ura {
    type: number
    label: "Calculated URA"
    value_format_name: usd_6
    sql: ${TABLE}.CALC_URA ;;
  }

  dimension: calc_ura_base {
    type: number
    hidden: yes
    sql: ${TABLE}.CALC_URA_BASE ;;
  }

  dimension: claim_line_curr {
    type: number
    hidden: yes
    sql: ${TABLE}.CLAIM_LINE_CURR ;;
  }

  dimension: override_ura {
    type: number
    label: "Override URA"
    value_format_name: usd_6
    sql: ${TABLE}.OVERRIDE_URA ;;
  }

  dimension: override_ura_base {
    type: number
    hidden: yes
    sql: ${TABLE}.OVERRIDE_URA_BASE ;;
  }

  dimension: inv_units {
    type: number
    hidden: yes
    label: "Units Invoiced"
    value_format_name: decimal_0
    sql: ${TABLE}.INV_UNITS ;;
  }

  dimension: inv_rebate_amt {
    type: number
    hidden: yes
    label: "Rebate Invoiced"
    value_format_name: usd_6
    sql: ${TABLE}.INV_REBATE_AMT ;;
  }

  dimension: inv_rebate_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_REBATE_AMT_BASE ;;
  }

  dimension: inv_ura {
    type: number
    label: "URA Invoiced"
    value_format_name: usd_6
    sql: ${TABLE}.INV_URA ;;
  }

  dimension: inv_ura_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_URA_BASE ;;
  }

  dimension: inv_scripts_num {
    type: number
    hidden: yes
    label: "Scripts"
    value_format_name: decimal_0
    sql: ${TABLE}.INV_SCRIPTS_NUM ;;
  }

  dimension: inv_reimburse_amt {
    type: number
    hidden: yes
    label: "Medicaid Reimbursement"
    value_format_name: usd_6
    sql: ${TABLE}.INV_REIMBURSE_AMT ;;
  }

  dimension: inv_reimburse_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_REIMBURSE_AMT_BASE ;;
  }

  dimension: inv_tpl_amt {
    type: number
    hidden: yes
    label: "Non-Medicaid Reimbursement"
    value_format_name: usd_6
    sql: ${TABLE}.INV_TPL_AMT ;;
  }

  dimension: inv_tpl_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.INV_TPL_AMT_BASE ;;
  }

  dimension: recom_disp_units {
    type: number
    hidden: yes
    label: "Recommended Disputed Units"
    value_format_name: decimal_0
    sql: ${TABLE}.RECOM_DISP_UNITS ;;
  }

  dimension: paid_units {
    type: number
    hidden: yes
    label: "Current Pay Units"
    value_format_name: decimal_0
    sql: ${TABLE}.PAID_UNITS ;;
  }

  dimension: rebate_due_amt {
    type: number
    hidden: yes
    label: "Pay Amount"
    value_format_name: usd_6
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: disp_codes {
    type: number
    hidden: yes
    sql: ${TABLE}.DISP_CODES ;;
  }

  dimension: inf_corr_codes {
    type: number
    hidden: yes
    sql: ${TABLE}.INF_CORR_CODES ;;
  }

  dimension: adjust_type {
    type: number
    label: "Adjustments"
    sql: ${TABLE}.ADJUST_TYPE ;;
  }

  dimension: incr_units {
    type: number
    hidden: yes
    label: "Incremental Units invoiced"
    value_format_name: decimal_0
    sql: ${TABLE}.INCR_UNITS ;;
  }

  dimension: disp_units {
    type: number
    hidden: yes
    label: "Dispute Units"
    value_format_name: decimal_0
    sql: ${TABLE}.DISP_UNITS ;;
  }

  dimension: dism_units {
    type: number
    hidden: yes
    label: "Dismissed Units"
    value_format_name: decimal_0
    sql: ${TABLE}.DISM_UNITS ;;
  }

  dimension: resv_units {
    type: number
    hidden: yes
    label: "Resolved Units"
    value_format_name: decimal_0
    sql: ${TABLE}.RESV_UNITS ;;
  }

  dimension: prev_inv_units {
    type: number
    hidden: yes
    label: "Previous Invoiced Units"
    value_format_name: decimal_0
    sql: ${TABLE}.PREV_INV_UNITS ;;
  }

  dimension: prev_paid_units {
    type: number
    hidden: yes
    label: "Units Paid To Date"
    value_format_name: decimal_0
    sql: ${TABLE}.PREV_PAID_UNITS ;;
  }

  dimension: prev_disp_units {
    type: number
    hidden: yes
    label: "Previous Disputed Units"
    value_format_name: decimal_0
    sql: ${TABLE}.PREV_DISP_UNITS ;;
  }

  dimension: program_prod_start_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_START_DATE_WID ;;
  }

  dimension_group: program_prod_start {
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
    sql: to_date(${program_prod_start_date_wid},'yyyymmdd') ;;
  }

  dimension: program_prod_start_qtr {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_START_QTR ;;
  }

  dimension: program_prod_end_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_END_DATE_WID ;;
  }

  dimension_group: program_prod_end {
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
    sql: to_date(${program_prod_end_date_wid},'yyyymmdd') ;;
  }

  dimension: program_prod_end_qtr {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROD_END_QTR ;;
  }

  dimension: program_prod_formula_type {
    type: string
    hidden: yes
    label: "Product Formula Type"
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_TYPE ;;
  }

  dimension: program_prod_formula_def {
    type: string
    hidden: yes
    label: "Product Formula Definition"
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_DEF ;;
  }

  dimension: amp_price {
    type: number
    label: "Average Manufacturer Price"
    value_format_name: usd_6
    sql: ${TABLE}.AMP_PRICE ;;
  }

  dimension: amp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.AMP_PRICE_BASE ;;
  }

  dimension: bp_price {
    type: number
    label: "Best Price"
    value_format_name: usd_6
    sql: ${TABLE}.BP_PRICE ;;
  }

  dimension: bp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.BP_PRICE_BASE ;;
  }

  dimension: asp_price {
    type: number
    label: "Average Selling Price"
    value_format_name: usd_6
    sql: ${TABLE}.ASP_PRICE ;;
  }

  dimension: asp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.ASP_PRICE_BASE ;;
  }

  dimension: start_qtr_wac_price {
    type: number
    label: "WAC Price (start of quarter)"
    value_format_name: usd_6
    sql: ${TABLE}.START_QTR_WAC_PRICE ;;
  }

  dimension: start_qtr_wac_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.START_QTR_WAC_PRICE_BASE ;;
  }

  dimension: end_qtr_wac_price {
    type: number
    label: "WAC Price (end of quarter)"
    value_format_name: usd_6
    sql: ${TABLE}.END_QTR_WAC_PRICE ;;
  }

  dimension: end_qtr_wac_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.END_QTR_WAC_PRICE_BASE ;;
  }

  dimension: start_qtr_awp_price {
    type: number
    label: "AWP Price (start of quarter)"
    value_format_name: usd_6
    sql: ${TABLE}.START_QTR_AWP_PRICE ;;
  }

  dimension: start_qtr_awp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.START_QTR_AWP_PRICE_BASE ;;
  }

  dimension: end_qtr_awp_price {
    type: number
    label: "AWP Price (end of quarter)"
    value_format_name: usd_6
    sql: ${TABLE}.END_QTR_AWP_PRICE ;;
  }

  dimension: end_qtr_awp_price_base {
    type: number
    hidden: yes
    sql: ${TABLE}.END_QTR_AWP_PRICE_BASE ;;
  }

  dimension: record_id {
    type: string
    label: "Record Id"
    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension: source_system_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
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

  dimension: row_deleted_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_DELETED_FLAG ;;
  }

  dimension: disputed_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.DISPUTED_AMOUNT ;;
    value_format_name: usd_6
  }

  dimension: dismissed_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.DISMISSED_AMOUNT ;;
    value_format_name: usd_6
  }

  dimension: resolved_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.RESOLVED_AMOUNT ;;
    value_format_name: usd_6
  }

  dimension: inf_corr_req_rebate_amt {
    type: number
    hidden: yes
    label: "Corrected Rebate Invoiced"
    value_format_name: usd_6
    sql: ${TABLE}.INF_CORR_REQ_REBATE_AMT ;;
  }

  dimension: inf_corr_units {
    type: number
    hidden: yes
    label: "Corrected Units"
    value_format_name: decimal_0
    sql: ${TABLE}.INF_CORR_UNITS ;;
  }

  dimension: total_paid_amt {
    type: number
    hidden: yes
    label: "Cumulative Paid Amount"
    value_format_name: usd_6
    sql: ${TABLE}.TOTAL_PAID_AMT ;;
  }

  dimension: original_corrected_amt {
    type: number
    hidden: yes
    label: "Amount Prior to Correction"
    value_format_name: usd_6
    sql: ${TABLE}.ORIGINAL_CORRECTED_AMT ;;
  }

  dimension: open_dispute_units {
    type: number
    hidden: yes
    sql: ${TABLE}.OPEN_DISPUTE_UNITS ;;
    value_format_name: decimal_0
  }

  dimension: open_dispute_amt {
    type: number
    hidden: yes
    label: "Open Dispute Amount"
    value_format_name: usd_6
    sql: ${TABLE}.OPEN_DISPUTE_AMT ;;
  }

  dimension: pending_units {
    type: number
    hidden: yes
    sql: ${TABLE}.PENDING_UNITS ;;
    value_format_name: decimal_0
  }

  dimension: pending_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.PENDING_AMOUNT ;;
    value_format_name: usd_6
  }

  dimension: program_prod_formula_name {
    type: string
    hidden: yes
    label: "Product Formula Name"
    sql: ${TABLE}.PROGRAM_PROD_FORMULA_NAME ;;
  }

  dimension: prev_ura {
    type: number
    label: "Previous URA"
    value_format_name: usd_6
    sql: ${TABLE}.PREV_URA ;;
  }

  dimension: prev_ura_curr {
    type: string
    hidden: yes
    sql: ${TABLE}.PREV_URA_CURR ;;
  }

  dimension: state {
    type: string
    hidden: yes
    sql: ${TABLE}.STATE ;;
  }

  dimension: state_short_desc {
    type: string
    label: "Claim State Short Description"
    hidden: yes
    sql: SUBSTR(${TABLE}.state,1,2) ;;
  }

  measure: calc_paid_units {
    type: sum
    label: "Calculated Paid Units"
    value_format_name: decimal_0
    sql: ${rebate_due_amt}/NULLIF(${calc_ura},0) ;;
  }


#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  measure: units_invoiced {
    type: sum
    label: "Units Invoiced"
    value_format_name: decimal_0
    sql: ${inv_units} ;;
  }

  measure: claimed_rebate {
    type: sum
    value_format_name: usd_6
    label: "Claimed Rebate"
    sql: ${inv_rebate_amt} ;;
  }

  measure: invoiced_number_of_scripts {
    type: sum
    label: "Scripts"
    value_format_name: decimal_0
    sql: ${inv_scripts_num} ;;
  }

  measure: reimbursed_amount {
    type: sum
    label: "Medicaid Reimbursement"
    value_format_name: usd_6
    sql: ${inv_reimburse_amt} ;;
  }

  measure: tpl_amount {
    type: sum
    label: "Non-Medicaid Reimbursement"
    value_format_name: usd_6
    sql: ${inv_tpl_amt} ;;
  }

  measure: recommended_dispute_units {
    type: sum
    label: "Recommended Dispute Units"
    value_format_name: decimal_0
    sql: ${recom_disp_units} ;;
  }

  measure: pay_units {
    type: sum
    label: "Current Pay Units"
    value_format_name: decimal_0
    sql: ${paid_units} ;;
  }

  measure: rebate_due {
    type: sum
    label: "Pay Amount"
    value_format_name: usd_6
    sql: ${rebate_due_amt} ;;
  }


  measure: incremental_units {
    type: sum
    label: "Incremental Units Invoiced"
    value_format_name: decimal_0
    sql: ${incr_units} ;;
  }

  measure: disputed_units {
    type: sum
    label: "Disputed Units"
    value_format_name: decimal_0
    sql: ${disp_units} ;;
  }

  measure: dismissed_units {
    type: sum
    label: "Dismissed Units"
    value_format_name: decimal_0
    sql: ${dism_units} ;;
  }

  measure: resolved_units {
    type: sum
    label: "Resolved Units"
    value_format_name: decimal_0
    sql: ${resv_units} ;;
  }

  measure: previous_invoiced_units {
    type: sum
    label: "Previous Invoiced Units"
    value_format_name: decimal_0
    sql: ${prev_inv_units} ;;
  }

  measure: previous_paid_units {
    type: sum
    label: "Units Paid To Date"
    value_format_name: decimal_0
    sql: ${prev_paid_units} ;;
  }

  measure: previous_dispute_units {
    type: sum
    label: "Previous Dispute Units"
    value_format_name: decimal_0
    sql: ${prev_disp_units} ;;
  }




  measure: Number_of_Claim_Lines {
    type: count_distinct
    label: "# of Claim Lines"
    value_format_name: decimal_0
    sql: ${mcd_claim_line_wid} ;;
  }

  measure: corrected_amount {
    type: sum
    label: "Corrected Rebate Invoiced"
    value_format_name: usd_6
    sql: ${inf_corr_req_rebate_amt} ;;
  }

  measure: total_corrected_units {
    type: sum
    label: "Corrected Units"
    value_format_name: decimal_0
    sql: ${inf_corr_units} ;;
  }

  measure: total_disputed_amount {
    type: sum
    label: "Disputed Amount"
    value_format_name: usd_6
    sql: ${disputed_amount} ;;
  }

  measure: total_dismissed_amount {
    type: sum
    label: "Dismissed Amount"
    value_format_name: usd_6
    sql: ${dismissed_amount} ;;
  }

  measure: total_resolved_amount {
    type: sum
    label: "Resolved Amount"
    value_format_name: usd_6
    sql: ${resolved_amount} ;;
  }

  measure: pending_amount_to_be_paid {
    type: sum
    label: "Pending Amount to be Paid"
    value_format_name: usd_6
    sql: ${pending_amount} ;;
  }

  measure: pending_units_to_be_paid {
    type: sum
    label: "Pending Units to be Paid"
    value_format_name: decimal_0
    sql: ${pending_units} ;;
  }

  measure: total_open_dispute_amount {
    type: sum
    label: "Open Dispute Amount"
    value_format_name: usd_6
    sql: ${open_dispute_amt} ;;
  }

  measure: total_open_dispute_units {
    type: sum
    label: "Open Dispute Units"
    value_format_name: decimal_0
    sql: ${open_dispute_units} ;;
  }


  measure: cumulative_paid_amount {
    type: sum
    label: "Cumulative Paid Amount"
    value_format_name: usd_6
    sql: ${total_paid_amt} ;;
  }

  measure: amount_prior_to_correction {
    type: sum
    label: "Amount Prior to Correction"
    value_format_name: usd_6
    sql: ${original_corrected_amt} ;;
  }

  measure: invoiced_units {
    type: sum
    label: "Invoiced Units"
    value_format_name: decimal_0
    sql: ${inv_units} ;;
  }

  measure: disputed_units_perc_of_claimed {
    type: number
    label: "Disputed Units % of Claimed"
    value_format_name: percent_2
    sql: ${disputed_units}/nullif(${invoiced_units},0) ;;
  }

  measure: resolved_units_perc_of_disputed {
    type: number
    label: "Resolved Units % of Disputed"
    value_format_name: percent_2
    sql: ${resolved_units}/nullif(${disputed_units},0) ;;
  }


  measure: inv_total_reimb_amt {
    type: sum
    label: "Total Reimbursement"
    value_format_name: usd_6
    sql: ${TABLE}.INV_TOTAL_REIMBURSE_AMT ;;
  }

  measure: incr_inv_num_of_scripts {
    type: sum
    label: "Incremental Scripts"
    value_format_name: decimal_0
    sql: ${TABLE}.INCR_INV_SCRIPTS_NUM ;;
  }

  measure: incr_reimb_amt {
    type: sum
    label: "Incremental Medicaid Reimbursement"
    value_format_name: usd_6
    sql: ${TABLE}.INCR_INV_REIMBURSE_AMT ;;
  }

  measure: incr_tpl_amt {
    type: sum
    label: "Incremental Non-Medicaid Reimbursement"
    value_format_name: usd_6
    sql: ${TABLE}.INCR_INV_TPL_AMT ;;
  }

  measure: incr_inv_total_reimb_amt {
    type: sum
    label: "Incremental Total Reimbursement"
    value_format_name: usd_6
    sql: ${TABLE}.INCR_INV_TOTAL_REIMB_AMT ;;
  }

  set: detail {
    fields: [
      mcd_claim_line_wid,
      mcd_claim_wid,
      product_wid,
      mcd_program_wid,
      ura_price_list_wid,
      payee_wid,
      src_sys_claim_line_id,
      calc_ura,
      calc_ura_base,
      claim_line_curr,
      override_ura,
      override_ura_base,
      inv_units,
      inv_rebate_amt,
      inv_rebate_amt_base,
      inv_ura,
      inv_ura_base,
      inv_scripts_num,
      inv_reimburse_amt,
      inv_reimburse_amt_base,
      inv_tpl_amt,
      inv_tpl_amt_base,
      recom_disp_units,
      paid_units,
      rebate_due_amt,
      rebate_due_amt_base,
      disp_codes,
      inf_corr_codes,
      adjust_type,
      incr_units,
      disp_units,
      dism_units,
      resv_units,
      prev_inv_units,
      prev_paid_units,
      prev_disp_units,
      program_prod_start_date_wid,
      program_prod_start_qtr,
      program_prod_end_date_wid,
      program_prod_end_qtr,
      program_prod_formula_type,
      program_prod_formula_def,
      amp_price,
      amp_price_base,
      bp_price,
      bp_price_base,
      asp_price,
      asp_price_base,
      start_qtr_wac_price,
      start_qtr_wac_price_base,
      end_qtr_wac_price,
      end_qtr_wac_price_base,
      start_qtr_awp_price,
      start_qtr_awp_price_base,
      end_qtr_awp_price,
      end_qtr_awp_price_base,
      record_id,
      source_system_id,
      run_id,
      date_created_time,
      date_updated_time,
      row_deleted_flag,
      disputed_amount,
      dismissed_amount,
      resolved_amount,
      inf_corr_req_rebate_amt,
      inf_corr_units,
      total_paid_amt,
      original_corrected_amt,
      open_dispute_units,
      open_dispute_amt,
      pending_units,
      pending_amount,
      program_prod_formula_name,
      prev_ura,
      prev_ura_curr,
      state
    ]
  }
}
