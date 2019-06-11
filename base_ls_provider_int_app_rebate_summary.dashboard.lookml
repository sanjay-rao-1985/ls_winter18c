- dashboard: ls_provider_int_app_rebate_summary
  title: Rebate Summary
  layout: grid
  rows:
  - elements: [rebate_summary_data_table]
    height: 600

  show_applied_filters: true
  auto_run:  false

  filters:

  - name: currency_mode_flt
    title: 'Base/Local Currency Mode'
    type: field_filter
    explore: provider_rebates_summary
    default_value: 'Local'
    allow_multiple_values: false
    required: true
    field: mn_rebate_payment_fact.base_local_curr_selection

# Rebate Payment End Date filters
  - name: rbt_mnt_end_date_flt
    title: 'Rebate Payment End Date'
    type: date_filter
    default_value:

#   - name: rbt_mnt_end_month_flt
#     title: 'Rebate Payment End Month'
#     type: date_filter
#     explore: provider_rebates_summary
#     default_value:
#     field: mn_rebate_payment_fact.end_month
#     listens_to_filters: [
#       level4_product_name_num_flt,
#       level3_product_name_num_flt,
#       level2_product_name_num_flt,
#       level1_product_name_num_flt,
#       product_name_num_flt,
#       seller_hrc_terr_mngr_flt,
#       seller_hrc_rgn_name_flt,
#       seller_hrc_enterprise_name_flt,
#       seller_hrc_district_name_flt,
#       eda_date_flt,
#       cmt_customer_contract_flt,
#       rbt_pmnt_frequency_flt,
#       inst_hrc_cust_name_flt,
#       inst_hrc_cust_type_flt,
#       rbt_contract_name_flt,
#       rbt_contract_num_flt,
#       rbt_program_name_flt,
#       rbt_pmnt_type_flt,
#       sales_rep_flt,
#       rbt_pmnt_num_flt,
#       rbt_mnt_end_date_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
#       ]

#   - name: rbt_mnt_end_quarter_flt
#     title: 'Rebate Payment End Quarter'
#     type: date_filter
#     explore: provider_rebates_summary
#     default_value:
#     field: mn_rebate_payment_fact.end_quarter
#     listens_to_filters: [
#       level4_product_name_num_flt,
#       level3_product_name_num_flt,
#       level2_product_name_num_flt,
#       level1_product_name_num_flt,
#       product_name_num_flt,
#       seller_hrc_terr_mngr_flt,
#       seller_hrc_rgn_name_flt,
#       seller_hrc_enterprise_name_flt,
#       seller_hrc_district_name_flt,
#       eda_date_flt,
#       cmt_customer_contract_flt,
#       rbt_pmnt_frequency_flt,
#       inst_hrc_cust_name_flt,
#       inst_hrc_cust_type_flt,
#       rbt_contract_name_flt,
#       rbt_contract_num_flt,
#       rbt_program_name_flt,
#       rbt_pmnt_type_flt,
#       sales_rep_flt,
#       rbt_pmnt_num_flt,
#       rbt_mnt_end_date_flt,
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_year_flt
#       ]

#   - name: rbt_mnt_end_year_flt
#     title: 'Rebate Payment End Year'
#     type: date_filter
#     explore: provider_rebates_summary
#     default_value:
#     field: mn_rebate_payment_fact.end_year
#     listens_to_filters: [
#       level4_product_name_num_flt,
#       level3_product_name_num_flt,
#       level2_product_name_num_flt,
#       level1_product_name_num_flt,
#       product_name_num_flt,
#       seller_hrc_terr_mngr_flt,
#       seller_hrc_rgn_name_flt,
#       seller_hrc_enterprise_name_flt,
#       seller_hrc_district_name_flt,
#       eda_date_flt,
#       cmt_customer_contract_flt,
#       rbt_pmnt_frequency_flt,
#       inst_hrc_cust_name_flt,
#       inst_hrc_cust_type_flt,
#       rbt_contract_name_flt,
#       rbt_contract_num_flt,
#       rbt_program_name_flt,
#       rbt_pmnt_type_flt,
#       sales_rep_flt,
#       rbt_pmnt_num_flt,
#       rbt_mnt_end_date_flt,
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt
#       ]

# Product Hierarchy Filters
  - name: level4_product_name_num_flt
    title: 'Level 4 Product Name [Number]'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_rbt_prod_hrc.level4_product_name_num
    listens_to_filters: [
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: level3_product_name_num_flt
    title: 'Level 3 Product Name [Number]'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_rbt_prod_hrc.level3_product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: level2_product_name_num_flt
    title: 'Level 2 Product Name [Number]'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_rbt_prod_hrc.level2_product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: level1_product_name_num_flt
    title: 'Level 1 Product Name [Number]'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_rbt_prod_hrc.level1_product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: product_name_num_flt
    title: 'Product Name [Number]'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_mn_product_dim.product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]
# End of Product Hierarchy Filters

# Seller Hierarchy Filters

  - name: sales_rep_flt
    title: 'Sales Representative'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rpf_sales_rep.full_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: seller_hrc_terr_name_flt
    title: 'Seller Hierarchy: Territory Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_seller_hrc_dim.terr_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: seller_hrc_terr_mngr_flt
    title: 'Seller Hierarchy: Territory Manager'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_seller_hrc_dim.terr_manager
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: seller_hrc_rgn_name_flt
    title: 'Seller Hierarchy: Region Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_seller_hrc_dim.region_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_enterprise_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: seller_hrc_enterprise_name_flt
    title: 'Seller Hierarchy: Enterprise Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_seller_hrc_dim.enterprise_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_district_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: seller_hrc_district_name_flt
    title: 'Seller Hierarchy: District Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_seller_hrc_dim.district_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

# End of Seller Hierarchy Filters

# Customer EDA Filters
  - name: eda_date_flt
    title: 'Commited Customer EDA Effective Date'
    type: date_filter
    default_value:

  - name: eda_attr_name_flt
    title: 'Commited Customer EDA Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_cmtd_cust_eda.attr_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: eda_attr_value_flt
    title: 'Commited Customer EDA Value'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_cmtd_cust_eda.attr_value
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

# End of Customer EDA

# Institutional Hierarchy
  - name: inst_hrc_cust_name_flt
    title: 'Institutional Hierarchy: Customer Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_inst_cust_dim.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt,
      rbt_mnt_end_month_flt,
      rbt_mnt_end_quarter_flt,
      rbt_mnt_end_year_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: inst_hrc_cust_type_flt
    title: 'Institutional Hierarchy: Customer Type'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rbt_inst_cust_dim.member_info_type
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt,
      rbt_mnt_end_month_flt,
      rbt_mnt_end_quarter_flt,
      rbt_mnt_end_year_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]
# End of Institutional Hierarchy

# Committed Customer on Contract
  - name: cmt_customer_contract_flt
    title: 'Commited Customer on Contract'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: rpf_committed_cutomer.customer_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

# Contract and Rebate Program Filters
  - name: rbt_contract_name_flt
    title: 'Contract Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_rbt_ctrt_header_dim.contract_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: rbt_contract_num_flt
    title: 'Contract Number'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_rbt_ctrt_header_dim.contract_number
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

  - name: rbt_program_name_flt
    title: 'Rebate Program Name'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_combined_rebate_program_dim.program_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_num_flt,
      rbt_contract_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

# Rebate Payment Frequency
  - name: rbt_pmnt_frequency_flt
    title: 'Rebate Payment Frequency'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_combined_rebate_program_dim.payment_freq
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

# Rebate Payment Num
  - name: rbt_pmnt_num_flt
    title: 'Rebate Payment Number'
    type: field_filter
    explore: provider_rebates_summary
    default_value:
    field: mn_rebate_payment_fact.rebate_payment_id
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_name_flt,
      rbt_contract_num_flt,
      rbt_program_name_flt,
      rbt_pmnt_type_flt,
      sales_rep_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

# Payment Type Filter
  - name: rbt_pmnt_type_flt
    title: 'Rebate Payment Type'
    type: field_filter
    explore: provider_rebates_accrual
    default_value:
    field: mn_pm_pmt_type_dim.pmt_type_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      seller_hrc_terr_name_flt,
      seller_hrc_terr_mngr_flt,
      seller_hrc_rgn_name_flt,
      seller_hrc_enterprise_name_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      cmt_customer_contract_flt,
      rbt_pmnt_frequency_flt,
      inst_hrc_cust_name_flt,
      inst_hrc_cust_type_flt,
      rbt_contract_num_flt,
      rbt_contract_name_flt,
      rbt_program_name_flt,
      sales_rep_flt,
      rbt_pmnt_num_flt,
      rbt_mnt_end_date_flt
#       rbt_mnt_end_month_flt,
#       rbt_mnt_end_quarter_flt,
#       rbt_mnt_end_year_flt
      ]

# Dashboard Elements
  elements:
  - name: rebate_summary_data_table
    title: Rebate Summary
    explore: provider_rebates_summary
    type: table
    fields: [rpf_sales_rep.full_name,
             mn_rbt_ctrt_header_dim.contract_number,
             mn_rebate_payment_fact.rebate_payment_id,
             rpf_committed_cutomer.customer_name_num,
             rpf_committed_cutomer.address,
             rpf_committed_cutomer.city,
             rpf_committed_cutomer.state_province,
             mn_combined_rebate_program_dim.program_name,
             mn_combined_rebate_program_dim.payment_freq,
             mn_rebate_payment_fact.payment_status,
             mn_rebate_payment_fact.tier_attained,
             mn_rebate_payment_fact.tier_applied,
             mn_rebate_payment_fact.rebate_pmnt_net_due_amt,
             mn_rebate_payment_fact.projected_rebate_pmnt,
             mn_rbt_combined_sale_fact.decimal_revenue,
             mn_rbt_combined_sale_fact.projected_revenue,
             mn_rbt_combined_sale_fact.volume,
             mn_rebate_payment_fact.end_date,
             mn_rbt_combined_sale_fact.projected_volume
            ]
    filters:

    listen:
      currency_mode_flt: mn_rebate_payment_fact.base_local_curr_selection
      level4_product_name_num_flt: mn_rbt_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: mn_rbt_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: mn_rbt_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: mn_rbt_prod_hrc.level1_product_name_num
      product_name_num_flt: rbt_mn_product_dim.product_name_num
      seller_hrc_terr_name_flt: rbt_seller_hrc_dim.terr_name
      seller_hrc_terr_mngr_flt: rbt_seller_hrc_dim.terr_manager
      seller_hrc_rgn_name_flt: rbt_seller_hrc_dim.region_name
      seller_hrc_enterprise_name_flt: rbt_seller_hrc_dim.enterprise_name
      eda_date_flt: rbt_cmtd_cust_eda.eda_date
      eda_attr_name_flt: rbt_cmtd_cust_eda.attr_name
      eda_attr_value_flt: rbt_cmtd_cust_eda.attr_value
      cmt_customer_contract_flt: rpf_committed_cutomer.customer_name
      rbt_pmnt_frequency_flt: mn_combined_rebate_program_dim.payment_freq
      rbt_contract_name_flt: mn_rbt_ctrt_header_dim.contract_name
      rbt_contract_num_flt: mn_rbt_ctrt_header_dim.contract_number
      rbt_program_name_flt: mn_combined_rebate_program_dim.program_name
      rbt_pmnt_num_flt: mn_rebate_payment_fact.rebate_payment_id
      rbt_mnt_end_date_flt: mn_rebate_payment_fact.end_date

    sorts: [mn_rbt_ctrt_header_dim.contract_number, mn_combined_rebate_program_dim.program_name, rpf_committed_cutomer.customer_name_num]
    limit: 50000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      mn_rbt_ctrt_header_dim.contract_number: Contract#
      rpf_sales_rep.full_name: Sales Representative
      mn_rebate_payment_fact.rebate_payment_id: Rebate Payment ID
      rpf_committed_cutomer.customer_name_num: Committed Customer Name[Number]
      mn_rebate_payment_fact.pay_program_name: Rebate Payment Program Name
      mn_combined_rebate_program_dim.program_name: Rebate Program Name
      mn_rbt_combined_sale_fact.decimal_revenue: Actual Revenue
      mn_rebate_payment_fact.payment_status: Rebate Payment Status
      rpf_committed_cutomer.state_province: State
      mn_rbt_combined_sale_fact.volume: Actual Volume
      mn_rebate_payment_fact.end_date: Rebate End Date
      mn_rebate_payment_fact.rebate_pmnt_net_due_amt: Actual Rebate Payment Amount
      mn_rebate_payment_fact.projected_rebate_pmnt: Projected Rebate Payment Amount
