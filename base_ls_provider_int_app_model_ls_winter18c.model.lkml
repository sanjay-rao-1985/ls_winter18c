include: "base_ls_database_connection_ls_winter18c.model.lkml"
include: "base_ls_explores_ls_winter18c.model.lkml"
include: "base_ls_provider_int_explores_ls_winter18c.model.lkml"


include: "base_mn_gross_to_net_label.view.lkml"
include: "base_mn_bid_award_fact.view.lkml"
include: "base_mn_bid_award_cust_fact.view.lkml"
include: "base_mn_bid_award_prod_fact.view.lkml"
include: "base_mn_bid_award_whole_fact.view.lkml"
include: "base_mn_product_map_all_ver_ext.view.lkml"
include: "base_mn_period_dim.view.lkml"
include: "base_mn_labels_view.view.lkml"
include: "base_mn_bid_award_ranked_fact.view.lkml"
include: "base_mn_cmpl_bucket_fact.view.lkml"


# Derived views
include: "base_mn_rebate_payment_fact_accrual_ext.view.lkml"
include: "base_mn_rebate_payment_fact_summary_ext.view.lkml"
include: "base_mn_combined_sale_fact_rbt_ext.view.lkml"


include: "base_ls_provider_int_app_gross_to_net.dashboard.lookml"
include: "base_ls_provider_int_app_sales_trend_by_cust.dashboard.lookml"
include: "base_ls_provider_int_app_proposed_pricing.dashboard.lookml"
include: "base_ls_provider_int_app_ctrt_cust_comparison.dashboard.lookml"
include: "base_ls_provider_int_app_ctrt_summary.dashboard.lookml"
include: "base_ls_provider_int_app_ctrt_details.dashboard.lookml"
include: "base_ls_provider_int_app_gtn_trending.dashboard.lookml"
include: "base_ls_provider_int_app_sales_summary.dashboard.lookml"
include: "base_ls_provider_int_app_cust_sales.dashboard.lookml"
include: "base_ls_provider_int_app_rebate_accrual.dashboard.lookml"
include: "base_ls_provider_int_app_lowest_price.dashboard.lookml"
include: "base_ls_provider_int_app_sales_perf.dashboard.lookml"
include: "base_ls_provider_int_app_rebate_summary.dashboard.lookml"
include: "base_ls_provider_int_app_cmpl_ctrt_view.dashboard.lookml"
include: "base_ls_provider_int_app_cmpl_cust_view.dashboard.lookml"
include: "base_ls_provider_int_app_pricing_view.dashboard.lookml"

#include: "SalesSummaryByProduct.dashboard.lookml"
#include: "SalesSummaryByCustomerView.dashboard.lookml"

label: "Provider Intelligence"


explore: mn_customer_dim {
  hidden: yes
}

explore: mn_labels_view {
  hidden: yes
}


explore: mn_cmpl_period_fact {
  label: "Account Compliance Data"
  from:  mn_cmpl_period_fact
  view_name: mn_cmpl_period_fact
  extends: [mn_cmpl_period_fact_base, mn_org_comb_product_group_dim_base]

  hidden: no
  sql_always_where: ${period_status} <> 'Terminated' ;;

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_contract_header_dim.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }

  join: mn_org_comb_product_group_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_combined_product_group_dim
    view_label: "Price Program"
    #fields: [channel_name]
    sql_on: ${mn_cmpl_period_fact.pg_wid} = ${mn_org_comb_product_group_dim.pg_wid};;
  }


  join: cmpl_customer_attr_fact {
    from: mn_customer_attr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Customer: EDA"
    sql_on: ${mn_cmpl_period_fact.customer_wid} = ${cmpl_customer_attr_fact.customer_wid} AND ${cmpl_customer_attr_fact.eda_date_filter} =1;;
  }

  join: cmpl_seller_hrc_cust_map {
    type: left_outer
    relationship: many_to_many
    from: mn_seller_hrc_cust_map
    view_label: "Seller Hierarchy"
    fields: []
    sql_on: ${mn_contract_header_dim.owner_wid} = ${cmpl_seller_hrc_cust_map.customer_wid};;
  }


  join: cmpl_seller_hrc_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_seller_hrc_dim
    view_label: "Seller Hierarchy"
    #fields: []
    sql_on: ${cmpl_seller_hrc_dim.seller_hrc_wid} = ${cmpl_seller_hrc_cust_map.seller_hrc_wid};;
  }


  join: mn_cmpl_bucket_fact {
    type: left_outer
    relationship: one_to_many
    from: mn_cmpl_bucket_fact
    view_label: "Compliance Bucket"
    #fields: []
    sql_on: ${mn_cmpl_bucket_fact.period_wid} = ${mn_cmpl_period_fact.period_wid};;
  }


}


explore: mn_bid_award_ranked_fact {
  label: "Bid Awards Lowest Prices"
  extends: [mn_contract_header_dim_base]
  from:  mn_bid_award_ranked_fact
  view_name: mn_bid_award_ranked_fact

  hidden: no

  view_label: "Bid Awards"

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_contract_header_dim.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }

  join: mn_contract_header_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_contract_header_dim
    view_label: "Contract"
    fields: [short_gtn_set1*]
    sql_on: ${mn_bid_award_ranked_fact.contract_wid} = ${mn_contract_header_dim.contract_wid};;
  }


  join: mn_ba_product_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_product_dim
    view_label: "Eligible Product"
    #fields: [short_gtn_set1*]
    sql_on: ${mn_bid_award_ranked_fact.product_wid} = ${mn_ba_product_dim.product_wid};;
  }

  join: mn_ba_pg_prod_hrc {
    type: left_outer
    relationship: many_to_many
    from: mn_product_map_all_ver_ext
    view_label:"Eligible Product Hierarchy"
    fields: [short_gtn_set1*]
    sql_on: ${mn_ba_pg_prod_hrc.level0_product_wid} = ${mn_ba_product_dim.product_wid} ;;
  }

  join: mn_pg_product_fact {
    type: left_outer
    relationship: many_to_many
    from: mn_pg_product_pricing_fact
    view_label: "Pricing Program Products and Pricing"
    sql_on: ${mn_pg_product_fact.pg_wid} = ${mn_bid_award_ranked_fact.pg_wid}
    AND  ${mn_pg_product_fact.start_raw} BETWEEN ${mn_bid_award_ranked_fact.start_raw}
    AND ${mn_bid_award_ranked_fact.end_raw}
    AND  ${mn_pg_product_fact.product_wid} = ${mn_bid_award_ranked_fact.product_wid};;
  }

  join: mn_ba_elig_customer_dim {
    type: left_outer
    relationship: many_to_one
    view_label: "Eligible Customer"
    from: mn_customer_dim
    fields: [customer_name, customer_num, customer_name_num, org_id]
    sql_on: ${mn_bid_award_ranked_fact.customer_wid} = ${mn_ba_elig_customer_dim.customer_wid};;
  }


  join: ba_seller_hrc_cust_map {
    type: left_outer
    relationship: many_to_many
    from: mn_seller_hrc_cust_map
    view_label: "Customer Seller Hierarchy"
    fields: []
    sql_on: ${mn_bid_award_ranked_fact.customer_wid} = ${ba_seller_hrc_cust_map.customer_wid};;
  }


  join: ba_seller_hrc_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_seller_hrc_dim
    view_label: "Customer Seller Hierarchy"
    #fields: []
    sql_on: ${ba_seller_hrc_dim.seller_hrc_wid} = ${ba_seller_hrc_cust_map.seller_hrc_wid};;
  }


}


explore: gross_to_net_sales {
  label: "Sales for Gross To Net"
  extends: [provider_sales_base]
  from:  mn_org_dim
  view_name: mn_sale_org_dim

  hidden: no

  view_label: "Sales Org"

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_combined_sale_fact.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }

  join: mn_gross_to_net_label {
    type: left_outer
    relationship: many_to_one
    from: mn_gross_to_net_label
    view_label: "Sales"
    fields: [kpi_name, price_kpi_name, kpi_num]
    sql_on: ${mn_gross_to_net_label.dummy_id} = ${mn_combined_sale_fact.dummy_id};;
  }


}


explore: provider_sales {
  label: "Sales"
  extends: [provider_sales_base]
  from:  mn_org_dim
  view_name: mn_sale_org_dim

#   fields: [ALL_FIELDS*,-mn_combined_sale_fact.gtn_set1*,-mn_combined_sale_fact.access_user_wid,
#      -mn_combined_sale_fact.access_user_name]

  hidden: no

  view_label: "Sales Org"

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_combined_sale_fact.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }


}


explore: provider_sales_ytd {
  label: "Sales Yearly Comparison Data"
  extends: [provider_sales_base]
  from:  mn_org_dim
  view_name: mn_sale_org_dim

#   fields: [ALL_FIELDS*,-mn_combined_sale_fact.gtn_set1*,-mn_combined_sale_fact.access_user_wid,
#      -mn_combined_sale_fact.access_user_name]

  hidden: no
  sql_always_where: ${mn_combined_sale_fact.invoice_raw} > add_months(sysdate,-36) ;;

  view_label: "Sales Org"

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_combined_sale_fact.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }


  # Overwite visible fields
  join: mn_combined_sale_fact {
    from: mn_combined_sale_fact
    fields: [custom_measure_set1*, custom_measure_set2*, base_local_curr_selection, sale_type, invoice_year, invoice_month, invoice_quarter, invoice_date]
  }

}

explore: provider_sales_and_contract_pricing {
  label: "Contract Pricing and Sales"
  extends: [provider_sales_base, mn_org_comb_product_group_dim_base]
  from:  mn_org_dim
  view_name: mn_sale_org_dim


  hidden: no

  sql_always_where:  ${mn_org_contract_header_dim.latest_flag} = 'Y';;
  #and ${mn_ctrt_type_dim.ctrt_type_name} IN ('FSS','IDN','Independent','Institutional','Master','PHS','Purchase Based')   ;;

  view_label: "Sales Org"

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_combined_sale_fact.org_wid} = ${mn_user_access_ctrt_map.org_wid}
    AND ${mn_org_contract_header_dim.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }



  join: mn_org_contract_header_dim {
    type: inner
    relationship: one_to_many
    from: mn_contract_header_dim
    view_label: "General Contract"
    #fields: []
    sql_on: ${mn_org_contract_header_dim.org_wid} = ${mn_sale_org_dim.org_wid};;
  }

  join: mn_org_comb_product_group_dim {
    type: inner
    view_label: "General Pricing Program"
    relationship: one_to_many
    from: mn_combined_product_group_dim
    sql_on: ${mn_org_contract_header_dim.src_sys_contract_id} = ${mn_org_comb_product_group_dim.src_sys_pk_id}
      AND ${mn_org_comb_product_group_dim.latest_flag} = 'Y' ;;
  }

  join: mn_combined_sale_fact {
    type: left_outer
    relationship: one_to_many
    from: mn_combined_sale_fact_gtn
    view_label: "Sales"
    fields: [mn_combined_sale_fact.gtn_set1*]
    sql_on: ${mn_combined_sale_fact.org_wid} = ${mn_sale_org_dim.org_wid}
    AND ${mn_pg_prod_adhoc_map.level0_prod_wid} =  ${mn_combined_sale_fact.product_wid} ;;
  }

}


explore: mn_contract_header_dim {

  label: "Contract Header"
  hidden: no

  extends: [mn_contract_header_dim_base, mn_org_comb_product_group_dim_base]

  from: mn_contract_header_dim_secure
  view_name: mn_contract_header_dim
  #extension:
  sql_always_where: ${mn_contract_header_dim.latest_flag} = 'Y'  and ${mn_ctrt_type_dim.ctrt_type_name} IN ('FSS','IDN','Independent','Institutional','Master','PHS','Purchase Based') ;;

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_contract_header_dim.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }

  join: co_customer_ids {
    type: left_outer
    relationship: one_to_many
    from: mn_customer_ids_dim
    view_label: "Pricing Contract Owner IDs"
    sql_on: ${mn_customer_owner_dim.customer_wid} = ${co_customer_ids.customer_wid};;
  }

  join: contract_owner_attr_fact {
    from: mn_customer_attr_fact
    type: left_outer
    relationship: many_to_many
    view_label: "Pricing Contract Owner: EDA"
    sql_on: ${mn_contract_header_dim.owner_wid} = ${contract_owner_attr_fact.customer_wid} AND ${contract_owner_attr_fact.eda_date_filter} =1;;
  }

  join: co_seller_hrc_cust_map {
    type: left_outer
    relationship: many_to_many
    from: mn_seller_hrc_cust_map
    view_label: "Pricing Contract Owner: Seller Hierarchy"
    fields: []
    sql_on: ${mn_contract_header_dim.owner_wid} = ${co_seller_hrc_cust_map.customer_wid};;
  }


  join: co_seller_hrc_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_seller_hrc_dim
    view_label: "Pricing Contract Owner: Seller Hierarchy"
    #fields: []
    sql_on: ${co_seller_hrc_dim.seller_hrc_wid} = ${co_seller_hrc_cust_map.seller_hrc_wid};;
  }


  join: mn_org_comb_product_group_dim {
    type: left_outer
    view_label: "Price Program"
    relationship: one_to_many
    from: mn_combined_product_group_dim
    sql_on: ${mn_contract_header_dim.src_sys_contract_id} = ${mn_org_comb_product_group_dim.src_sys_pk_id}
      AND ${mn_org_comb_product_group_dim.latest_flag} = 'Y' ;;
  }

#   join: mn_pg_tier_basis_dim {
#     type: left_outer
#     relationship: many_to_one
#     from: mn_pg_qual_ben_flat
#     view_label: "Price Program Tier Basis"
#     sql_on: ${mn_org_comb_product_group_dim.pg_wid} = ${mn_pg_tier_basis_dim.pg_wid}
#       AND  ${mn_pg_tier_basis_dim.is_qual_comp_flag} ='Y';;
#   }

  join: mn_pg_tier_basis_u_dim {
    type: left_outer
    relationship: one_to_many
    from: mn_pg_qual_ben_unflat
    view_label: "Price Program Tier Basis"
    sql_on: ${mn_org_comb_product_group_dim.pg_wid} = ${mn_pg_tier_basis_u_dim.pg_wid}
      AND  ${mn_pg_tier_basis_u_dim.is_qual_comp_flag} ='Y';;
  }

  join: mn_pg_ben_elig_cust_map {
    type: left_outer
    relationship: one_to_many
    from: mn_pg_ben_elig_cust_map #mn_ctrt_elig_customers_map
    view_label: "Contract Customer"
    #fields: [channel_name]
    sql_on: ${mn_org_comb_product_group_dim.pg_wid} = ${mn_pg_ben_elig_cust_map.pg_wid};;
  }

  join: mn_ctrt_elig_customer_dim {
    type: left_outer
    relationship: many_to_one
    view_label: "Contract Eligible Customer"
    from: mn_customer_dim
    fields: [customer_name, customer_num, customer_name_num, org_id]
    sql_on: ${mn_pg_ben_elig_cust_map.elig_customer_wid} = ${mn_ctrt_elig_customer_dim.customer_wid};;
  }

  join: mn_ctrt_commit_customer_dim {
    type: left_outer
    relationship: many_to_one
    view_label: "Contract Commited Customer"
    from: mn_customer_dim
    fields: [customer_name, customer_num, org_id, customer_name_num]
    sql_on: ${mn_pg_ben_elig_cust_map.commit_customer_wid} = ${mn_ctrt_commit_customer_dim.customer_wid};;
  }

  join: cmt_customer_attr_fact {
    from: mn_customer_attr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Contract Commited Customer: EDA"
    sql_on: ${mn_pg_ben_elig_cust_map.commit_customer_wid} = ${cmt_customer_attr_fact.customer_wid} AND ${cmt_customer_attr_fact.eda_date_filter} =1;;
  }

  join: mn_org_comb_rebate_program_dim {
    type: left_outer
    view_label: "Rebate Program"
    relationship: one_to_many
    from: mn_combined_rebate_program_dim
    fields: [mn_org_comb_rebate_program_dim.count]
    sql_on: ${mn_contract_header_dim.contract_wid} = ${mn_org_comb_rebate_program_dim.contract_wid}
      AND ${mn_org_comb_rebate_program_dim.latest_flag} = 'Y';;
  }

#     access_filter: {
#       field: mn_contract_header_dim.access_user_name
#       user_attribute: rme_access_user_name
#     }


}

explore: provider_rebates_accrual {
  label: "Rebate Accruals"
  extends: [provider_rebates_base]
  hidden: no


  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_rbt_ctrt_header_dim.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }

  sql_always_where: ${mn_rbt_ctrt_header_dim.latest_flag} = 'Y' and ${mn_rbt_ctrt_type_dim.ctrt_type_name} IN ('FSS','IDN','Independent','Institutional','Master','PHS','Purchase Based') ;;
  join: mn_rebate_payment_fact {
    type: inner
    view_label: "Rebate Payment"
    relationship: one_to_many
    from: mn_rebate_payment_fact
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rebate_payment_fact.rebate_program_wid}
               AND ${mn_rebate_payment_fact.payment_status} <> 'Terminated'
              and TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) BETWEEN ${mn_rebate_payment_fact.start_date_wid} AND ${mn_rebate_payment_fact.end_date_wid}
              ;;
  }


  join: mn_rebate_payment_fact_past {
    type: left_outer
    view_label: "Past Rebate Payments for Accrual"
    relationship: many_to_many
    from: mn_rbt_pmnt_fact_accrual
    fields: [prior_curr_period_pmnt_status, past_proj_rebate_due_amt, base_local_curr_selection]
    sql_on: ${mn_rebate_payment_fact.contract_wid} = ${mn_rebate_payment_fact_past.contract_wid}
              and ${mn_rebate_payment_fact.rebate_program_wid} = ${mn_rebate_payment_fact_past.rebate_program_wid}
              and ${mn_rebate_payment_fact.commited_customer_wid} = ${mn_rebate_payment_fact_past.commited_customer_wid}
              and ${mn_rebate_payment_fact_past.payment_status} <> 'Terminated'
              and TO_CHAR(TO_DATE(${mn_rebate_payment_fact.start_date_wid}, 'YYYYMMDD') -1, 'YYYYMMDD') BETWEEN ${mn_rebate_payment_fact_past.start_date_wid} and ${mn_rebate_payment_fact_past.end_date_wid}
                ;;

  }

  join: mn_date_dim {
    type: left_outer
    relationship: many_to_one
    from: mn_period_dim
    view_label: "Date"
    sql_on: ${mn_date_dim.start_date_sql_raw}
              BETWEEN TRUNC(LEAST(TO_DATE(${mn_rebate_payment_fact.start_date_wid},'YYYYMMDD')+1, ADD_MONTHS(SYSDATE,-12)),'MM')
                  AND TRUNC(LEAST(${mn_combined_rebate_program_dim.doc_tz_eff_end_date_raw}, ADD_MONTHS(SYSDATE,24)), 'MM')
                ;;
  }


}

explore: provider_rebates_summary {
  extends: [provider_rebates_base]
  label: "Rebate Summary"
  hidden: no

  sql_always_where: ${mn_rbt_ctrt_type_dim.ctrt_type_name} IN ('FSS','IDN','Independent','Institutional','Master','PHS','Purchase Based')  ;;

  access_filter: {
    field: mn_user_access_ctrt_map.access_user_id
    user_attribute: access_user_id
  }

  # User Org join
  join: mn_user_access_ctrt_map {
    type: inner
    relationship: many_to_one
    from: mn_user_org_map
    fields: [access_user_id]
    sql_on: ${mn_rbt_ctrt_header_dim.org_wid} = ${mn_user_access_ctrt_map.org_wid};;
  }

  join: mn_rebate_payment_fact {
    type: inner
    view_label: "Rebate Payment Fact Summary"
    relationship: one_to_many
    from: mn_rbt_pmnt_fact_summary
    #from: mn_rebate_payment_fact
    sql_on: ${mn_combined_rebate_program_dim.program_wid} = ${mn_rebate_payment_fact.rebate_program_wid}
              AND ${mn_rbt_ctrt_header_dim.contract_wid} = ${mn_rebate_payment_fact.contract_wid}
               AND ${mn_rebate_payment_fact.payment_status} <> 'Terminated'
              ;;
  }

  join: mn_cost_sale {
    type: left_outer
    view_label: "Rebates Cost Of Sale"
    relationship: one_to_many
    from: mn_cost_of_sale_fact
    fields: []
    sql_on: ${mn_rebate_payment_fact.rebate_pmt_wid} = ${mn_cost_sale.rebate_pmt_wid}
              AND ${mn_cost_sale.cost_source} in ('REBATE_PAYMENT', 'BUCKET_LINE')
               AND ${mn_cost_sale.sale_type} in (1, 2, 4, 6)
              ;;
  }

  join: mn_rbt_combined_sale_fact {
    type: left_outer
    view_label: "Rebates Sale Fact"
    relationship: many_to_one
    from: mn_combined_sale_fact_rbt
    #from: mn_combined_sale_fact
    fields: [inv_revenue, volume, decimal_revenue, projected_revenue, projected_volume, base_local_curr_selection]
    sql_on: ${mn_rbt_combined_sale_fact.line_ref_num} = ${mn_cost_sale.sale_line_ref_num}
              ;;
  }

  join: mn_rbt_prog_qual_comp {
    type: inner
    view_label: "Rebate Program Flat Components - Qualification "
    relationship: one_to_many
    from: mn_rbt_prg_qual_flat_dim
    #fields: []
    sql_on: ${mn_rbt_prog_qual_comp.program_wid} = ${mn_combined_rebate_program_dim.program_wid}
      ;;
  }

  join: mn_rbt_prog_ben_comp {
    type: inner
    view_label: "Rebate Program Flat Components - Benefit "
    relationship: one_to_many
    from: mn_rbt_prg_ben_flat_dim
    #fields: []
    sql_on: ${mn_rbt_prog_ben_comp.program_wid} = ${mn_combined_rebate_program_dim.program_wid}
      ;;
  }

  join: mn_rbt_prog_qual_ben_comp {
    type: inner
    view_label: "Rebate Program Components - Qual/Ben"
    relationship: one_to_many
    from: mn_rbt_prog_qual_ben_dim
    #fields: []
    sql_on: ${mn_rbt_prog_qual_ben_comp.program_wid} = ${mn_combined_rebate_program_dim.program_wid}
      ;;
  }

  join: mn_rbt_prog_qual_ben_tiers {
    type: inner
    view_label: "Rebate Program Components - Qual/Ben Tiers"
    relationship: one_to_many
    from: mn_rbt_prog_qual_ben_sd_rpt
    #fields: []
    sql_on: ${mn_rbt_prog_qual_ben_comp.program_qual_ben_wid} = ${mn_rbt_prog_qual_ben_tiers.program_qual_ben_wid}
              AND ${mn_rbt_prog_qual_ben_tiers.tier_flag} = 'Y'
      ;;
  }

}
