include: "base_ls_explores_ls_winter18c.model.lkml"

include: "base_ls_government_explorer_app_workbook_mapping.dashboard.lookml"

label: "Government"

explore: government_explore {
  from: mn_mcd_program_state_map
  view_name: mn_mcd_program_state_map
  label: "Medicaid Rebates"
#   fields: [ALL_FIELDS*,-mn_mcd_product_dim.ndc9_name_exl_set*]
  view_label: "Program"

  hidden: no

  join: mn_mcd_program_product_map {
    from: mn_mcd_program_product_map
    type: full_outer
    relationship: many_to_many
    view_label: "Program"
    sql_on: ${mn_mcd_program_state_map.mcd_program_wid} = ${mn_mcd_program_product_map.mcd_program_wid}  ;;
  }

  join: mn_mcd_claim_dim {
    from: mn_mcd_claim_dim
    type: full_outer
    relationship: many_to_one
    view_label: "Claim"
    sql_on: ${mn_mcd_program_state_map.mcd_program_wid} = ${mn_mcd_claim_dim.program_wid}
    and ${mn_mcd_price_list_dim.period_end_quarter} = ${mn_mcd_claim_dim.original_qtr_quarter} ;;
  }

  join: mn_mcd_claim_line_fact_dt {
    from: mn_mcd_claim_line_fact_dt
    type: left_outer
    relationship: one_to_many
    view_label: "Claim Line"
    sql_on: ${mn_mcd_claim_line_fact_dt.mcd_claim_wid} = ${mn_mcd_claim_dim.claim_wid}
    and ${mn_mcd_program_product_map.product_wid} = ${mn_mcd_claim_line_fact_dt.product_wid}
    and ${mn_mcd_claim_line_fact_dt.state_short_desc}= ${mn_mcd_program_state_map.mcd_state_short_desc} ;;
  }

  join:  mn_mcd_util_fact {
    from: mn_mcd_util_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Claim Line"
    sql_on: ${mn_mcd_claim_line_fact_dt.product_wid} = ${mn_mcd_util_fact.product_wid} and ${mn_mcd_claim_line_fact_dt.mcd_claim_wid} = ${mn_mcd_util_fact.claim_wid} ;;
    fields: [mn_mcd_util_fact.Original_Invoiced_Amount,mn_mcd_util_fact.inv_req_rebate_amt]
  }

  join: mn_mcd_claim_pmt_payee_map {
    from: mn_mcd_claim_pmt_payee_map
    type: left_outer
    relationship: many_to_many
    view_label: "Payment"
    sql_on: ${mn_mcd_claim_line_fact_dt.mcd_claim_wid} = ${mn_mcd_claim_pmt_payee_map.mcd_claim_wid} ;;
  }

  join: mn_mcd_payment_fact {
    from: mn_mcd_payment_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Payment"
    sql_on: ${mn_mcd_claim_pmt_payee_map.mcd_payment_wid} = ${mn_mcd_payment_fact.mcd_payment_wid} ;;
  }

  join: mn_mcd_claim_payment_map {
    from: mn_mcd_claim_payment_map
    type: left_outer
    relationship: many_to_many
    view_label: "Payment"
    sql_on:${mn_mcd_claim_pmt_payee_map.mcd_payment_wid} = ${mn_mcd_claim_payment_map.mcd_payment_wid}   ;;

  }
  join: mn_payment_approver_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Payment"
    fields: [mn_payment_approver_dim.payment_approver_set*]
    sql_on: ${mn_mcd_payment_fact.approved_by_wid} = ${mn_payment_approver_dim.user_wid} ;;
  }

  join: mn_claim_owner_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Claim"
    fields: [mn_claim_owner_dim.claimowner_set*]
    sql_on: ${mn_mcd_claim_dim.claim_owner_wid} = ${mn_claim_owner_dim.user_wid} ;;
  }

  join: mn_mcd_price_list_dim {
    from: mn_price_list_dim
    type: left_outer
    relationship: many_to_one
    view_label: "URA Price List"
    fields: [mn_mcd_price_list_dim.mcdpricelistdim_set*]
#     sql_on: ${mn_mcd_claim_line_fact_dt.ura_price_list_wid} = ${mn_mcd_price_list_dim.price_list_wid} ;;
    sql_on: ${mn_mcd_program_state_map.mcd_program_wid} = ${mn_mcd_price_list_dim.mcd_program_wid}
      and ${mn_mcd_price_list_dim.period_start_date}
      between ${mn_mcd_program_product_map.start_dt_date} and ${mn_mcd_program_product_map.end_dt_date};;
    }

  join: mn_mcd_price_list_fact {
    from: mn_price_list_fact
    type: left_outer
    relationship: one_to_one
    view_label: "URA Price List"
    fields: [mn_mcd_price_list_fact.mcdpricelistfact_set*]
    sql_on: ${mn_mcd_price_list_dim.price_list_wid} = ${mn_mcd_price_list_fact.price_list_wid}
    and ${mn_mcd_price_list_fact.product_wid} = ${mn_mcd_program_product_map.product_wid}  ;;
  }

  join: mn_mcd_prod_ura_prc_fact {
    from: mn_mcd_prod_ura_prc_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Federal URA and Drilldown"
    sql_on: ${mn_mcd_price_list_dim.period_year_qtr} = ${mn_mcd_prod_ura_prc_fact.quarter}
      AND ${mn_mcd_price_list_fact.product_wid} = ${mn_mcd_prod_ura_prc_fact.product_wid} ;;
  }

  join: mn_fed_ura_price_list_dim {
    from: mn_price_list_dim
    type: left_outer
    relationship: many_to_one
    fields: []
    sql_on: ${mn_fed_ura_price_list_dim.period_year_qtr} = ${mn_mcd_prod_ura_prc_fact.quarter}
      AND ${mn_fed_ura_price_list_dim.price_list_sys_type} = 'URA';;
  }

  join: mn_fed_ura_price_list_fact {
    from: mn_price_list_fact
    type: left_outer
    relationship: one_to_one
    view_label: "Federal URA and Drilldown"
    fields: [mn_fed_ura_price_list_fact.fed_ura_pricelistfact_set*]
    sql_on: ${mn_fed_ura_price_list_dim.price_list_wid} = ${mn_fed_ura_price_list_fact.price_list_wid}
      and ${mn_fed_ura_price_list_fact.product_wid} = ${mn_mcd_prod_ura_prc_fact.product_wid}  ;;
  }

  join: mn_mcd_payee_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Payee"
    fields: [mn_mcd_payee_dim.governmentpayee_set*]
    sql_on: ${mn_mcd_program_state_map.payee_wid} = ${mn_mcd_payee_dim.customer_wid};;
  }

  join: mn_mcd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_mcd_program_product_map.product_wid} = ${mn_mcd_product_dim.product_wid} ;;
    fields: [mn_mcd_product_dim.mcd_prod_incl_set*]
  }

  join: mn_prod_attr_fact_drug_type {
    from: mn_product_attr_fact
    type: left_outer
    relationship: one_to_one
    view_label: "Product"
    fields: [mn_prod_attr_fact_drug_type.drug_type]
    sql_on: ${mn_mcd_product_dim.product_wid} = ${mn_prod_attr_fact_drug_type.product_wid}
            and ${mn_prod_attr_fact_drug_type.field_name} = 'drugType' ;;
  }

  join: mn_prod_attr_fact_desi_ind {
    from: mn_product_attr_fact
    type: left_outer
    relationship: one_to_one
    view_label: "Product"
    fields: [mn_prod_attr_fact_desi_ind.desi_indicator]
    sql_on: ${mn_mcd_product_dim.product_wid} = ${mn_prod_attr_fact_desi_ind.product_wid}
            and ${mn_prod_attr_fact_desi_ind.field_name} = 'desiIndicator' ;;
  }

  join: mn_prod_attr_fact_prim_uom {
    from: mn_product_attr_fact
    type: left_outer
    relationship: one_to_one
    view_label: "Product"
    fields: [mn_prod_attr_fact_prim_uom.primary_uom]
    sql_on: ${mn_mcd_product_dim.product_wid} = ${mn_prod_attr_fact_prim_uom.product_wid}
            and ${mn_prod_attr_fact_prim_uom.field_name} = 'primaryUom' ;;
  }

  join: mn_prod_attr_fact_fda_date {
    from: mn_product_attr_fact
    type: left_outer
    relationship: one_to_one
    view_label: "Product"
    fields: [mn_prod_attr_fact_fda_date.fda_approval_date,mn_prod_attr_fact_fda_date.fda_approval_week_of_year,
             mn_prod_attr_fact_fda_date.fda_approval_month,mn_prod_attr_fact_fda_date.fda_approval_quarter,
             mn_prod_attr_fact_fda_date.fda_approval_year,mn_prod_attr_fact_fda_date.fda_approval_time]
    sql_on: ${mn_mcd_product_dim.product_wid} = ${mn_prod_attr_fact_fda_date.product_wid}
            and ${mn_prod_attr_fact_fda_date.field_name} = 'fdaApprovalDate' ;;
  }

  join: mn_prod_attr_fact_low_disp_sz {
    from: mn_product_attr_fact
    type: left_outer
    relationship: one_to_one
    view_label: "Product"
    fields: [mn_prod_attr_fact_low_disp_sz.low_dispunit_pkgsize]
    sql_on: ${mn_mcd_product_dim.product_wid} = ${mn_prod_attr_fact_low_disp_sz.product_wid}
            and ${mn_prod_attr_fact_low_disp_sz.field_name} = 'lowDispUnitsPerPack' ;;
  }

  join: mn_prod_attr_fact_prod_srth {
    from: mn_product_attr_fact
    type: left_outer
    relationship: one_to_one
    view_label: "Product"
    fields: [mn_prod_attr_fact_prod_srth.product_strength]
    sql_on: ${mn_mcd_product_dim.product_wid} = ${mn_prod_attr_fact_prod_srth.product_wid}
            and ${mn_prod_attr_fact_prod_srth.field_name} = 'prodStrength' ;;
  }

  join: mn_prod_family_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    fields: [ndc9_name]
    view_label: "Product"
    sql_on: ${mn_mcd_product_dim.ndc9} = ${mn_prod_family_dim.product_num} ;;
  }

  join: mn_mcd_program_dim {
    from: mn_mcd_program_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    sql_on: ${mn_mcd_program_state_map.mcd_program_wid} = ${mn_mcd_program_dim.program_wid} ;;
  }

  join: mn_mcd_mfr_contact_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    fields: [mn_mcd_mfr_contact_dim.mfrcontactname_set*]
    sql_on: ${mn_mcd_program_state_map.mfr_contact_wid} = ${mn_mcd_mfr_contact_dim.user_wid} ;;
  }

  join: mn_mcd_recipient_name_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    fields: [mn_mcd_recipient_name_dim.payment_recipient_name_set*]
    sql_on: ${mn_mcd_program_state_map.payee_wid} = ${mn_mcd_recipient_name_dim.customer_wid} ;;
  }

  join: mn_mcd_analyst_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    fields: [mn_mcd_analyst_dim.defaultanalyst_set*]
    sql_on: ${mn_mcd_program_state_map.analyst_wid} = ${mn_mcd_analyst_dim.user_wid} ;;
  }

  join: mn_mcd_amended_by_name_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    fields: [mn_mcd_amended_by_name_dim.amemdedby_set*]
    sql_on: ${mn_mcd_program_dim.amended_by_wid} = ${mn_mcd_amended_by_name_dim.user_wid} ;;
  }

  join: mn_mcd_program_owner_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    fields: [mn_mcd_program_owner_dim.programowner_set*]
    sql_on: ${mn_mcd_program_dim.owner_wid} = ${mn_mcd_program_owner_dim.user_wid} ;;
  }

  join: mn_mcd_prog_lastupdby_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    fields: [mn_mcd_prog_lastupdby_dim.lastupdatedby_set*]
    sql_on: ${mn_mcd_program_dim.last_updated_by_wid} = ${mn_mcd_prog_lastupdby_dim.user_wid} ;;
  }

  join: mn_mcd_program_createdby_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Program"
    fields: [mn_mcd_program_createdby_dim.createdby_set*]
    sql_on: ${mn_mcd_program_dim.created_by_wid} = ${mn_mcd_program_createdby_dim.user_wid} ;;
  }

  join: mn_mcd_adjust_code_dim_dt {
    from: mn_mcd_dispute_code_dim_dt
    type: left_outer
    relationship: many_to_many
    view_label: "Claim Line"
    fields: []
    sql_on: ${mn_mcd_claim_line_fact_dt.inf_corr_codes} = ${mn_mcd_adjust_code_dim_dt.inf_corr_codes} ;;
  }

  join: mn_mcd_adjust_code_dim{
    from: mn_mcd_dispute_code_dim
    type: full_outer
    relationship: many_to_one
    view_label: "Claim Line"
    sql_on: ${mn_mcd_adjust_code_dim_dt.dispute_code_name} = ${mn_mcd_adjust_code_dim.dispute_code_name} ;;
    fields: [mn_mcd_adjust_code_dim.adjustcode_set*]
  }

  join: mn_mcd_adjust_type_dim_dt {
    from: mn_mcd_adjust_type_dim_dt
    type: left_outer
    relationship: many_to_many
    view_label: "Claim Line"
    fields: []
    sql_on: ${mn_mcd_claim_line_fact_dt.adjust_type} = ${mn_mcd_adjust_type_dim_dt.adjust_type} ;;
  }

  join: mn_mcd_adjust_type_dim{
    from: mn_mcd_adjust_type_dim
    type: full_outer
    relationship: many_to_one
    view_label: "Claim Line"
    sql_on: ${mn_mcd_adjust_type_dim_dt.adjust_type_name} = ${mn_mcd_adjust_type_dim.adjust_type_name} ;;
  }

  join: mn_mcd_dispute_code_dim {
    from: mn_mcd_dispute_code_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Claim Line"
    fields: [mn_mcd_dispute_code_dim.dispute_code_name]
    sql_on: ${mn_mcd_claim_line_fact_dt.disp_codes} = ${mn_mcd_dispute_code_dim.src_sys_dispute_code_code} ;;

  }

  join: mn_prod_cfp_fact {
    from: mn_prod_addl_eff_attr_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    fields: [mn_prod_cfp_fact.clotting_factor_set*]
    sql_on: ${mn_mcd_price_list_fact.product_wid} = ${mn_prod_cfp_fact.product_wid}
            and (${mn_mcd_price_list_fact.period_start_date} >= ${mn_prod_cfp_fact.entry_start_date_date}
            and ${mn_mcd_price_list_fact.period_start_date} <= ${mn_prod_cfp_fact.entry_end_date_date})
            and ${mn_prod_cfp_fact.attr_type} = 'CFP' ;;
  }
}


# **************************************** government Historical Rebates
explore: government_historical_rebates {
  label: "Medicaid Historical Rebates"
  from: mn_discount_bridge_fact
  view_name: mn_discount_bridge_fact
  extends: [historical_rebates_base]
  hidden: no

  sql_always_where: ${mn_discount_bridge_fact.is_historical_flag}='Y'
    AND (${mn_discount_bridge_fact.mcd_line_ref_num} IS NOT NULL OR ${mn_discount_bridge_fact.rebate_module_type} = 'MCD') ;;
}


# GP Transaction Explore

explore: transaction_explore {
  from: mn_lkr_gp_comb_sales_fact
  view_name: mn_lkr_gp_comb_sales_fact
  label: "Transaction Data"
  view_label: ""

  hidden: no

  always_filter: {
    filters: {
      field: mn_lkr_gp_comb_sales_fact.sale_type_filter
      value: "Direct"
    }
  }

  join: mn_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    fields: [mn_product_dim.tx_exp_product_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.product_wid} = ${mn_product_dim.product_wid} ;;
  }

  join: mn_bill_to_customer_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_bill_to_customer_dim.tx_bill_to_cust_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.bill_to_customer_wid} = ${mn_bill_to_customer_dim.customer_wid} ;;
  }


  join: mn_bill_to_cust_cot_dim {
    from: mn_customer_cot_dim_dt
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    fields: [mn_bill_to_cust_cot_dim.bill_to_cust_tx_cot_set*]
    sql_on: ${mn_bill_to_customer_dim.customer_wid} = ${mn_bill_to_cust_cot_dim.customer_wid} ;;
  }

  join: mn_sold_to_customer_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_sold_to_customer_dim.tx_sold_to_cust_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.sold_to_customer_wid} = ${mn_sold_to_customer_dim.customer_wid} ;;
  }

  join: mn_sold_to_cust_cot_dim {
    from: mn_customer_cot_dim_dt
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    fields: [mn_sold_to_cust_cot_dim.sold_to_cust_tx_cot_set*]
    sql_on: ${mn_sold_to_customer_dim.customer_wid} = ${mn_sold_to_cust_cot_dim.customer_wid} ;;
  }

  join: mn_customer_gpo_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_customer_gpo_dim.tx_gpo_cust_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.customer_wid} = ${mn_customer_gpo_dim.customer_wid} and ${mn_customer_gpo_dim.member_info_type} = 'GPO'  ;;
  }

  join: mn_customer_idn_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_customer_idn_dim.tx_idn_cust_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.customer_wid} = ${mn_customer_gpo_dim.customer_wid} and ${mn_customer_gpo_dim.member_info_type} = 'Independent' ;;
  }

  join: mn_plan_cust_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Rebates"
    fields: [mn_plan_cust_dim.tx_plan_det_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.customer_wid} = ${mn_plan_cust_dim.customer_wid} and ${mn_plan_cust_dim.member_info_type} = 'Plan'  ;;
  }

  join: mn_plan_cust_cot_dim {
    from: mn_customer_cot_dim_dt
    type: left_outer
    relationship: one_to_many
    view_label: "Rebates"
    fields: [mn_plan_cust_cot_dim.plan_cust_tx_cot_set*]
    sql_on: ${mn_plan_cust_dim.customer_wid} = ${mn_plan_cust_cot_dim.customer_wid} ;;
  }


  join: mn_customer_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_customer_dim.tx_cust_det_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.customer_wid} = ${mn_customer_dim.customer_wid} ;;
  }

  join: mn_pbm_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "MCO Utilization"
    fields: [mn_pbm_addr_fact.mco_pbm_state,mn_pbm_addr_fact.mco_pbm_city]
    sql_on: ${mn_customer_dim.customer_wid} = ${mn_pbm_addr_fact.customer_wid}
      and ${mn_pbm_addr_fact.primary_address} = 'Yes';;
  }


  join: mn_pbm_tx_cot_dim {
    from: mn_customer_cot_dim_dt
    type: left_outer
    relationship: one_to_many
    view_label: "Rebates"
    fields: [mn_pbm_tx_cot_dim.mco_pbm_tx_cot_set*]
    sql_on: ${mn_customer_dim.customer_wid} = ${mn_pbm_tx_cot_dim.customer_wid} ;;
  }

  join: mn_customer_cot_dim {
    from: mn_customer_cot_dim_dt
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    fields: [mn_customer_cot_dim.customer_tx_cot_set*]
    sql_on: ${mn_customer_dim.customer_wid} = ${mn_customer_cot_dim.customer_wid} ;;
  }

  join: mn_product_group_dim {
    from: mn_product_group_dim_ext
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_product_group_dim.tx_pg_name_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.pg_wid} = ${mn_product_group_dim.pg_wid} ;;
  }

  join: mn_customer_340_id_dim {
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    from: mn_customer_ids_dim_ext
    fields: [mn_customer_340_id_dim.tx_cust_340_code_set*]
    sql_on: ${mn_customer_dim.customer_wid}=${mn_customer_340_id_dim.customer_wid}
      and ${mn_customer_340_id_dim.id_type} = '340B';;
  }

  join: mn_customer_dea_id_dim {
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    from: mn_customer_ids_dim_ext
    fields: [mn_customer_dea_id_dim.tx_cust_dea_code_set*]
    sql_on: ${mn_customer_dim.customer_wid}=${mn_customer_dea_id_dim.customer_wid}
      and ${mn_customer_dea_id_dim.id_type} = 'DEA';;
  }

  join: mn_customer_gln_id_dim {
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    from: mn_customer_ids_dim_ext
    fields: [mn_customer_gln_id_dim.tx_cust_gln_code_set*]
    sql_on: ${mn_customer_dim.customer_wid}=${mn_customer_gln_id_dim.customer_wid}
      and ${mn_customer_gln_id_dim.id_type} = 'GLN';;
  }

  join: mn_customer_hin_id_dim {
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    from: mn_customer_ids_dim_ext
    fields: [mn_customer_hin_id_dim.tx_cust_hin_code_set*]
    sql_on: ${mn_customer_dim.customer_wid}=${mn_customer_hin_id_dim.customer_wid}
      and ${mn_customer_hin_id_dim.id_type} = 'HIN';;
  }


  join: mn_contract_header_dim {
    from: mn_contract_header_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    fields: [mn_contract_header_dim.tx_ctrt_details_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.contract_wid} = ${mn_contract_header_dim.contract_wid} ;;
  }

  join: mn_ctrt_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_type_dim
    view_label: "Contract"
    fields: [mn_ctrt_type_dim.tx_ctrt_type_set*]
    sql_on: ${mn_contract_header_dim.contract_type_wid} = ${mn_ctrt_type_dim.ctrt_type_wid};;
  }

  join: mn_ctrt_sub_type_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_ctrt_sub_type_dim
    view_label: "Contract"
    fields: [mn_ctrt_sub_type_dim.tx_ctrt_sub_type_set*]
    sql_on: ${mn_contract_header_dim.contract_sub_type_wid} = ${mn_ctrt_sub_type_dim.ctrt_sub_type_wid};;
  }

  join: mn_ctrt_cust_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_dim_reuse
    view_label: "Direct Sales"
    fields: [mn_ctrt_cust_dim.tx_ctrt_cust_set*]
    sql_on: ${mn_contract_header_dim.owner_wid} = ${mn_ctrt_cust_dim.customer_wid};;
  }

  join: mn_bill_cust_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    fields: [mn_bill_cust_addr_fact.tx_bill_to_cust_addr_set*]
    sql_on: ${mn_bill_to_customer_dim.customer_wid} = ${mn_bill_cust_addr_fact.customer_wid}
      and ${mn_bill_cust_addr_fact.primary_address} = 'Yes';;
  }

  join: mn_sold_cust_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    fields: [mn_sold_cust_addr_fact.tx_sold_to_cust_addr_set*]
    sql_on: ${mn_sold_to_customer_dim.customer_wid} = ${mn_sold_cust_addr_fact.customer_wid}
      and ${mn_sold_cust_addr_fact.primary_address} = 'Yes';;
  }

  join: mn_ship_cust_prim_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    fields: [mn_ship_cust_prim_addr_fact.tx_ship_to_cust_addr_prim_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.customer_wid} = ${mn_ship_cust_prim_addr_fact.customer_wid}
      and ${mn_ship_cust_prim_addr_fact.primary_address} = 'Yes';;
  }

  join: mn_ship_cust_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Direct Sales"
    fields: [mn_ship_cust_addr_fact.tx_ship_to_cust_addr_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.customer_wid} = ${mn_ship_cust_addr_fact.customer_wid}
      and ${mn_ship_cust_addr_fact.primary_address} = 'No';;
  }

  join: mn_wholesaler_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Indirect Sales"
    fields: [mn_wholesaler_dim.tx_wholesaler_det_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.parent_distr_wid} = ${mn_wholesaler_dim.customer_wid} ;;
  }

  join: mn_wholesaler_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Indirect Sales"
    fields: [mn_wholesaler_addr_fact.tx_wholesaler_addr_set*]
    sql_on: ${mn_wholesaler_dim.customer_wid} = ${mn_wholesaler_addr_fact.customer_wid}
      and ${mn_wholesaler_addr_fact.primary_address} = 'Yes';;
  }

  join: mn_wholesaler_cot_dim {
    from: mn_customer_cot_dim_dt
    type: left_outer
    relationship: one_to_many
    view_label: "Indirect Sales"
    fields: [mn_wholesaler_cot_dim.wholesaler_tx_cot_set*]
    sql_on: ${mn_wholesaler_dim.customer_wid} = ${mn_wholesaler_cot_dim.customer_wid} ;;
  }

  join: mn_prod_id_attr_fact {
    from: mn_prod_addl_eff_attr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Product"
    fields: []
    sql_on: ${mn_product_dim.product_wid} = ${mn_prod_id_attr_fact.product_wid}
      and ${mn_prod_id_attr_fact.attr_type} = 'ID' ;;
  }

  join: mn_product_id_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    fields: [mn_product_id_dim.initial_drug_set*]
    sql_on: ${mn_prod_id_attr_fact.intial_drug_wid} = ${mn_product_id_dim.product_wid} ;;
  }

  join: mn_rebate_program_st_dim {
    from: mn_rebate_program_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebates"
    fields: [mn_rebate_program_st_dim.rebate_st_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.rebate_prog_wid} = ${mn_rebate_program_st_dim.program_wid}
            and ${mn_rebate_program_st_dim.strategy_based_flag} = 'Y';;
  }

  join: mn_rebate_program_non_st_dim {
    from: mn_rebate_program_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebates"
    fields: [mn_rebate_program_non_st_dim.rebate_non_st_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.rebate_prog_wid} = ${mn_rebate_program_non_st_dim.program_wid}
            and ${mn_rebate_program_non_st_dim.strategy_based_flag} = 'N';;
  }

  join: mn_rebate_type_dim {
    from: mn_rebate_type_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Rebates"
    fields: [mn_rebate_type_dim.rebate_type_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.rebate_type_wid} = ${mn_rebate_type_dim.rebate_type_wid} ;;
  }

  join: mn_plan_mem_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "MCO Utilization"
    fields: [mn_plan_mem_dim.mco_plan_mem_name]
    sql_on: ${mn_lkr_gp_comb_sales_fact.plan_wid} = ${mn_plan_mem_dim.customer_wid} ;;
  }

  join: mn_mco_submission_dim {
    from: mn_mco_submission_dim
    type: left_outer
    relationship: many_to_one
    view_label: "MCO Utilization"
    fields: [mn_mco_submission_dim.td_submission_number]
    sql_on: ${mn_lkr_gp_comb_sales_fact.mco_submission_wid} = ${mn_mco_submission_dim.mco_submission_wid} ;;
  }

  join: mn_cust_type1_dim {
    from: mn_custom_type_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_cust_type1_dim.custom_type1_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.custom_type1_wid} = ${mn_cust_type1_dim.custom_type_wid} ;;
  }

  join: mn_cust_type2_dim {
    from: mn_custom_type_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_cust_type2_dim.custom_type2_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.custom_type2_wid} = ${mn_cust_type2_dim.custom_type_wid} ;;
  }

  join: mn_cust_type3_dim {
    from: mn_custom_type_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Direct Sales"
    fields: [mn_cust_type3_dim.custom_type3_set*]
    sql_on: ${mn_lkr_gp_comb_sales_fact.custom_type3_wid} = ${mn_cust_type3_dim.custom_type_wid} ;;
  }

}

# GP Price List Explore All versions

explore: price_list_explore {
  from: mn_price_list_dim_all_vers
  view_name: mn_price_list_dim_all_vers
  label: "Government Price Lists"
  view_label: "Price List"

  hidden: no

  sql_always_where: ${mn_price_list_dim_all_vers.price_list_sys_type} IN ('FCP_30DAY','NFAMP_30D','FCP_ANN','NFAMP_ANN','AMP','ASP','BAMP','BP','BPEST','FSS.1','FSS.1.TEMP','FSS.2','FSS.2.TEMP','AMP_M','BP_M','RCP','PHS','FCP_QTR','NFAMP_QTR','TCARE','WAC','URA','AWP') ;;

  join: mn_price_list_fact_all_vers {
    from: mn_price_list_fact_all_vers
    type: left_outer
    relationship: one_to_many
    view_label: "Price List"
    fields: [mn_price_list_fact_all_vers.pricelist_fact_set*]
    sql_on: ${mn_price_list_dim_all_vers.src_sys_price_list_id} = ${mn_price_list_fact_all_vers.src_sys_price_list_id}
             AND ${mn_price_list_dim_all_vers.ver_num} >= ${mn_price_list_fact_all_vers.ver_num} AND ${mn_price_list_dim_all_vers.ver_num} < ${mn_price_list_fact_all_vers.end_ver_num} ;;
  }

  join: mn_pl_revisedby_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Price List"
    fields: [mn_pl_revisedby_dim.pl_revised_by_set*]
    sql_on: ${mn_price_list_dim_all_vers.updated_by_wid} = ${mn_pl_revisedby_dim.user_wid} ;;
  }

  join: mn_pl_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    fields: [mn_pl_product_dim.tx_exp_product_set*]
    sql_on: ${mn_price_list_fact_all_vers.product_wid} = ${mn_pl_product_dim.product_wid} ;;
  }

  join: mn_price_list_fact_all_ver_lf {
    from: mn_price_list_fact_all_vers
    type: left_outer
    relationship: many_to_one
    view_label: "Price List"
    fields: [mn_price_list_fact_all_ver_lf.pricelist_fact_lf_set*]
    sql_on: ${mn_price_list_fact_all_vers.src_sys_price_list_id} = ${mn_price_list_fact_all_ver_lf.src_sys_price_list_id}
            AND ${mn_price_list_fact_all_vers.product_wid} = ${mn_price_list_fact_all_ver_lf.product_wid}
            AND ${mn_price_list_fact_all_vers.period_start_raw} = ${mn_price_list_fact_all_ver_lf.period_start_raw}
            AND ${mn_price_list_fact_all_ver_lf.latest_flag} = 'Y' ;;
  }

  join: mn_prod_id_attr_fact {
    from: mn_prod_addl_eff_attr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Product"
    fields: []
    sql_on: ${mn_pl_product_dim.product_wid} = ${mn_prod_id_attr_fact.product_wid}
      and ${mn_prod_id_attr_fact.attr_type} = 'ID' ;;
  }

  join: mn_product_id_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    fields: [mn_product_id_dim.initial_drug]
    sql_on: ${mn_prod_id_attr_fact.intial_drug_wid} = ${mn_product_id_dim.product_wid} ;;
  }

  join: mn_prod_eff_attr_fact {
    from: mn_product_eff_attr_fact_ext
    type: left_outer
    relationship: one_to_many
    view_label: "Product"
    fields: [mn_prod_eff_attr_fact.prod_line_ext_drug_ind*]
    sql_on: ${mn_pl_product_dim.product_wid} = ${mn_prod_eff_attr_fact.product_wid}
            and (${mn_price_list_dim_all_vers.period_start_date_raw} >= ${mn_prod_eff_attr_fact.eff_start_raw}
            and ${mn_price_list_dim_all_vers.period_start_date_raw} <= ${mn_prod_eff_attr_fact.eff_end_raw})
            and ${mn_prod_eff_attr_fact.attr_name} = 'LineExtensionDrugIndicator' ;;
  }

}

# GP Workbook Mapping Explore

explore: gp_pt_mapping_explore {
  from: mn_gp_price_type_dim
  view_name: mn_gp_price_type_dim
  label: "Workbook Mapping"
  view_label: "Workbook Mapping"
  fields: [mn_gp_price_type_dim.workbook_mapping_set*,
    mn_gp_workbook_dim.workbook_mapping_set*,
    mn_gp_pt_mapping_dim.workbook_mapping_set*]

  hidden: no

  # Summer18 release is limited to Results explore so limiting the results to these.
  sql_always_where: ${mn_gp_pt_mapping_dim.workbook_data_type} in ('NDC11', 'NDC9', 'NETPP' ) ;;
  always_filter: {
    filters: {
      field: mn_gp_pt_mapping_dim.workbook_data_type
    }
    filters: {
      field: mn_gp_workbook_dim.workbook_name
    }
  }

  join: mn_gp_workbook_dim {
    from: mn_gp_workbook_dim
    type: left_outer
    relationship: one_to_many
    view_label: "Workbook Mapping"
    sql_on: ${mn_gp_price_type_dim.price_type_wid} = ${mn_gp_workbook_dim.price_type_wid} ;;
  }

  join: mn_gp_pt_worksheet_dim {
    from: mn_gp_pt_worksheet_dim
    type: left_outer
    relationship: one_to_many
    view_label: "Workbook Mapping"
    sql_on: ${mn_gp_price_type_dim.src_sys_price_type_id} = ${mn_gp_pt_worksheet_dim.src_sys_price_type_id}
            and ${mn_gp_pt_worksheet_dim.ver_num} <= ${mn_gp_price_type_dim.ver_num}
            and ${mn_gp_pt_worksheet_dim.end_ver_num} > ${mn_gp_price_type_dim.ver_num}
            ;;
  }

  join: mn_gp_pt_mapping_dim {
    from: mn_gp_pt_mapping_dim
    type: left_outer
    relationship: one_to_many
    view_label: "Workbook Mapping"
    sql_on: ${mn_gp_pt_worksheet_dim.src_sys_work_sheet_id} = ${mn_gp_pt_mapping_dim.src_sys_worksheet_id}
            and ${mn_gp_pt_mapping_dim.ver_num} <= ${mn_gp_pt_worksheet_dim.ver_num}
            and ${mn_gp_pt_mapping_dim.end_ver_num} > ${mn_gp_pt_worksheet_dim.ver_num};;
  }

}

# GP Workbook Results Explore

explore: gp_workbook_results_explore {
  from: mn_gp_workbook_dim
  view_name: mn_gp_workbook_dim
  label: "Workbook Results"
  view_label: "Workbook"
  fields: [mn_gp_workbook_dim.wb_res_exp_set*,mn_gp_workbook_result_fact.workbook_result_set*,mn_gp_npp_fact.wb_results_npp_set*,mn_gp_npp_cust_dim.gp_npp_cust_set*,
           mn_gp_npp_ctrt_dim.gp_npp_ctrt_set*,mn_gp_npp_cot_dim.wb_npp_cot,mn_wb_product_dim.wb_res_exp_product_set*,mn_gp_price_type_dim.res_wb_set*,
           mn_wb_owner_dim.gp_res_owner_set*,mn_wb_created_by_dim.gp_res_created_by_set*,mn_wb_updated_by_dim.gp_res_updaed_by_set*,mn_wb_calc_by_dim.gp_res_calc_by_set*,
           mn_wb_publish_by_dim.gp_res_publish_by_set*,mn_prod_eff_attr_fact.prod_line_ext_drug_ind*]

  hidden: no

  join: mn_gp_workbook_result_fact {
    from: mn_gp_workbook_result_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Workbook Results"
    sql_on: ${mn_gp_workbook_dim.workbook_wid} = ${mn_gp_workbook_result_fact.workbook_wid};;
  }

  join: mn_gp_npp_fact {
    from: mn_gp_netpp_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Net Price Points"
    sql_on: ${mn_gp_workbook_result_fact.src_sys_workbook_result_id} = ${mn_gp_npp_fact.src_sys_workbook_result_id}
            and ${mn_gp_workbook_result_fact.product_wid} = ${mn_gp_npp_fact.product_wid} ;;
  }

  join: mn_gp_npp_cust_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: one_to_many
    view_label: "Net Price Points"
    sql_on: ${mn_gp_npp_fact.contracted_customer_wid} = ${mn_gp_npp_cust_dim.customer_wid};;
  }

  join: mn_gp_npp_ctrt_dim {
    from: mn_contract_header_dim_reuse
    type: left_outer
    relationship: one_to_many
    view_label: "Net Price Points"
    sql_on: ${mn_gp_npp_fact.src_sys_struct_doc_id} = ${mn_gp_npp_ctrt_dim.src_sys_contract_id};;
  }

  join: mn_gp_npp_cust_cot_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_customer_cot_dim
    fields: []
    sql_on: ${mn_gp_npp_cust_dim.customer_wid} = ${mn_gp_npp_cust_cot_dim.customer_wid}
            and ${mn_gp_npp_cust_cot_dim.eff_start_raw} <= ${mn_gp_workbook_dim.end_date_raw}
            and ${mn_gp_npp_cust_cot_dim.eff_end_raw} >= ${mn_gp_workbook_dim.end_date_raw} ;;
  }

  join: mn_gp_npp_cot_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_cot_dim_ext
    view_label: "Net Price Points"
    sql_on: ${mn_gp_npp_cust_cot_dim.cot_wid} = ${mn_gp_npp_cot_dim.cot_wid} ;;
  }


  join: mn_wb_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_gp_workbook_result_fact.product_wid} = ${mn_wb_product_dim.product_wid} ;;
  }

  join: mn_gp_price_type_dim {
    from: mn_gp_price_type_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Workbook"
    sql_on: ${mn_gp_workbook_dim.price_type_wid} = ${mn_gp_price_type_dim.price_type_wid};;
  }

  join: mn_wb_owner_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Workbook"
    sql_on: ${mn_gp_workbook_dim.owner_wid} = ${mn_wb_owner_dim.user_wid} ;;
  }

  join: mn_wb_created_by_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Workbook"
    sql_on: ${mn_gp_workbook_dim.created_by_wid} = ${mn_wb_created_by_dim.user_wid} ;;
  }

  join: mn_wb_updated_by_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Workbook"
    sql_on: ${mn_gp_workbook_dim.updated_by_wid} = ${mn_wb_updated_by_dim.user_wid} ;;
  }

  join: mn_wb_calc_by_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Workbook"
    sql_on: ${mn_gp_workbook_dim.last_calculated_by_wid} = ${mn_wb_calc_by_dim.user_wid} ;;
  }

  join: mn_wb_publish_by_dim {
    from: mn_user_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Workbook"
    sql_on: ${mn_gp_workbook_dim.published_by_wid} = ${mn_wb_publish_by_dim.user_wid} ;;
  }

  join: mn_prod_eff_attr_fact {
    from: mn_product_eff_attr_fact_ext
    type: left_outer
    relationship: one_to_many
    view_label: "Product"
    fields: [mn_prod_eff_attr_fact.prod_line_ext_drug_ind*]
    sql_on: ${mn_wb_product_dim.product_wid} = ${mn_prod_eff_attr_fact.product_wid}
            and (${mn_gp_workbook_dim.start_date_raw} >= ${mn_prod_eff_attr_fact.eff_start_raw}
            and ${mn_gp_workbook_dim.start_date_raw} <= ${mn_prod_eff_attr_fact.eff_end_raw})

            and ${mn_prod_eff_attr_fact.attr_name} = 'LineExtensionDrugIndicator' ;;
  }

}
