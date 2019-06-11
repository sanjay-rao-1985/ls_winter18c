- dashboard: ls_provider_int_app_ctrt_details
  title: Contract Details Report
  layout: grid
  rows:
  - elements: [contract_elig]
    height: 300
  - elements: [contract_tb]
    height: 300
  - elements: [contract_pg_prod]
    height: 500

  show_applied_filters: true
  auto_run:  false


  filters:


  - name: contract_name_flt
    title: 'Contract Name'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_contract_header_dim.contract_name
    listens_to_filters: [ contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: contract_number_flt
    title: 'Contract Number'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_contract_header_dim.contract_number
    listens_to_filters: [contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: ctrt_type_name_flt
    title: 'Contract Type'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_ctrt_type_dim.ctrt_type_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: ctrt_sub_type_name_flt
    title: 'Contract Sub-Type'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_ctrt_sub_type_dim.ctrt_sub_type_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: end_date_flt
    title: 'Contract End Date'
    type: date_filter
    default_value: ''

  - name: days_to_expire_flt
    title: 'Contract Days To Expire'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_contract_header_dim.days_to_expire

  - name: owner_name_num_flt
    title: 'Owner Customer Name [Number]'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_customer_owner_dim.customer_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: owner_org_id_flt
    title: 'Owner Customer ID'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_customer_owner_dim.org_id
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: cmt_name_num_flt
    title: 'Commited Customer Name [Number]'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_ctrt_commit_customer_dim.customer_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: cmt_org_id_flt
    title: 'Commited Customer ID'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_ctrt_commit_customer_dim.org_id
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: eda_date_flt
    title: 'Commited Customer EDA Effective Date'
    type: date_filter
    default_value:


  - name: eda_attr_name_flt
    title: 'Commited Customer EDA Name'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: cmt_customer_attr_fact.attr_name
    allow_multiple_values: false
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: eda_attr_value_flt
    title: 'Commited Customer EDA Value'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: cmt_customer_attr_fact.attr_value
    allow_multiple_values: false
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: level4_product_name_num_flt
    title: 'Level 4 Product Name [Number]'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: ct_prc_prod_hrc.level4_product_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: level3_product_name_num_flt
    title: 'Level 3 Product Name [Number]'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: ct_prc_prod_hrc.level3_product_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: level2_product_name_num_flt
    title: 'Level 2 Product Name [Number]'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: ct_prc_prod_hrc.level2_product_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: level1_product_name_num_flt
    title: 'Level 1 Product Name [Number]'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: ct_prc_prod_hrc.level1_product_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: product_name_num_flt
    title: 'Line Product Name [Number]'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: mn_product_prc_dim.product_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: terr_manager_flt
    title: 'Territory Manager'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: co_seller_hrc_dim.terr_manager
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_name_flt ]

  - name: terr_name_flt
    title: 'Territory Name'
    type: field_filter
    explore: mn_contract_header_dim
    default_value:
    field: co_seller_hrc_dim.terr_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      days_to_expire_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt]



  elements:
  - name: contract_elig
    title: Eligible Customers
    explore: mn_contract_header_dim
    type: table
    fields: [mn_contract_header_dim.contract_name, mn_contract_header_dim.contract_number,
      mn_ctrt_elig_customer_dim.customer_num, mn_ctrt_elig_customer_dim.customer_name,
      mn_ctrt_elig_customer_dim.org_id, mn_org_comb_product_group_dim.pg_name]
    filters:
    listen:
      days_to_expire_flt: mn_contract_header_dim.days_to_expire
      end_date_flt: mn_contract_header_dim.eff_end_date
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      owner_name_num_flt: mn_customer_owner_dim.customer_name_num
      owner_org_id_flt: mn_customer_owner_dim.org_id
      cmt_name_num_flt: mn_ctrt_commit_customer_dim.customer_name_num
      cmt_org_id_flt: mn_ctrt_commit_customer_dim.org_id
      eda_attr_name_flt: cmt_customer_attr_fact.attr_name
      eda_attr_value_flt: cmt_customer_attr_fact.attr_value
      eda_date_flt: cmt_customer_attr_fact.eda_date
      terr_manager_flt: co_seller_hrc_dim.terr_manager
      terr_name_flt: co_seller_hrc_dim.terr_name
      level4_product_name_num_flt: ct_prc_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: ct_prc_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: ct_prc_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: ct_prc_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_product_prc_dim.product_name_num

    sorts: [mn_contract_header_dim.contract_number,  mn_ctrt_elig_customer_dim.customer_name]
    limit: 500
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
      mn_contract_header_dim.contract_name: Contract Name
      mn_contract_header_dim.contract_number: Contract Number
      mn_ctrt_elig_customer_dim.customer_num: Eligible Customer Number
      mn_ctrt_elig_customer_dim.customer_name: Eligible Customer Name
      mn_ctrt_elig_customer_dim.org_id: Eligible Customer ID
      mn_org_comb_product_group_dim.pg_name: Price Program Name
    hidden_fields:


  - name: contract_tb
    title: Tier Basis Details
    explore: mn_contract_header_dim
    type: table
    fields: [mn_contract_header_dim.contract_name, mn_contract_header_dim.contract_number,
      mn_org_comb_product_group_dim.pg_name,  mn_ctrt_commit_customer_dim.customer_num, mn_ctrt_commit_customer_dim.customer_name,
      mn_ctrt_commit_customer_dim.org_id, mn_pg_ben_elig_cust_map.commit_tier,  mn_pg_tier_basis_u_dim.num_tiers, mn_pg_tier_basis_u_dim.basis_type,
      mn_pg_tier_basis_u_dim.units, mn_pg_tier_basis_u_dim.expected_value, mn_pg_tier_basis_u_dim.tier_idx]
    pivots: [mn_pg_tier_basis_u_dim.tier_idx]
    filters:
      mn_ctrt_commit_customer_dim.customer_num: "-NULL"
    listen:
      days_to_expire_flt: mn_contract_header_dim.days_to_expire
      end_date_flt: mn_contract_header_dim.eff_end_date
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      owner_name_num_flt: mn_customer_owner_dim.customer_name_num
      owner_org_id_flt: mn_customer_owner_dim.org_id
      cmt_name_num_flt: mn_ctrt_commit_customer_dim.customer_name_num
      cmt_org_id_flt: mn_ctrt_commit_customer_dim.org_id
      eda_attr_name_flt: cmt_customer_attr_fact.attr_name
      eda_attr_value_flt: cmt_customer_attr_fact.attr_value
      eda_date_flt: cmt_customer_attr_fact.eda_date
      terr_manager_flt: co_seller_hrc_dim.terr_manager
      terr_name_flt: co_seller_hrc_dim.terr_name
      level4_product_name_num_flt: ct_prc_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: ct_prc_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: ct_prc_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: ct_prc_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_product_prc_dim.product_name_num

    sorts: [mn_contract_header_dim.contract_number, mn_org_comb_product_group_dim.pg_name,  mn_pg_tier_basis_u_dim.basis_type, mn_ctrt_commit_customer_dim.customer_name, mn_pg_tier_basis_u_dim.tier_idx]
    limit: 500
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
      mn_contract_header_dim.contract_name: Contract Name
      mn_contract_header_dim.contract_number: Contract Number
      mn_customer_owner_dim.customer_name: Customer Name
      mn_customer_owner_dim.customer_num: Customer Number
      mn_customer_owner_dim.org_id: Customer ID
      mn_ctrt_elig_customer_dim.customer_num: Eligible Customer Number
      mn_ctrt_elig_customer_dim.customer_name: Eligible Customer Name
      mn_ctrt_elig_customer_dim.org_id: Eligible Customer ID
      mn_ctrt_commit_customer_dim.customer_num: Committed Customer Number
      mn_ctrt_commit_customer_dim.customer_name: Committed Customer Name
      mn_ctrt_commit_customer_dim.org_id: Committed Customer ID
      mn_org_comb_product_group_dim.pg_name: Price Program Name
      mn_pg_tier_basis_u_dim.basis_type: Tier Basis Type
      mn_pg_tier_basis_u_dim.units: Tier Basis Units
    hidden_fields:


  - name: contract_pg_prod
    title: Price Program Products and Prices
    explore: mn_contract_header_dim
    type: table
    fields: [mn_contract_header_dim.contract_name, mn_contract_header_dim.contract_number,
      mn_customer_owner_dim.customer_name, mn_customer_owner_dim.customer_num, mn_org_comb_product_group_dim.pg_name,
      mn_product_prc_dim.product_name, mn_product_prc_dim.product_num, mn_pg_product_fact.start_date,
      mn_pg_product_fact.end_date, mn_pg_product_fact.tier_idx, mn_pg_product_fact.product_price]
    pivots: [mn_pg_product_fact.tier_idx]
    filters:
    listen:
      days_to_expire_flt: mn_contract_header_dim.days_to_expire
      end_date_flt: mn_contract_header_dim.eff_end_date
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      owner_name_num_flt: mn_customer_owner_dim.customer_name_num
      owner_org_id_flt: mn_customer_owner_dim.org_id
      cmt_name_num_flt: mn_ctrt_commit_customer_dim.customer_name_num
      cmt_org_id_flt: mn_ctrt_commit_customer_dim.org_id
      eda_attr_name_flt: cmt_customer_attr_fact.attr_name
      eda_attr_value_flt: cmt_customer_attr_fact.attr_value
      eda_date_flt: cmt_customer_attr_fact.eda_date
      terr_manager_flt: co_seller_hrc_dim.terr_manager
      terr_name_flt: co_seller_hrc_dim.terr_name
      level4_product_name_num_flt: ct_prc_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: ct_prc_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: ct_prc_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: ct_prc_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_product_prc_dim.product_name_num

    sorts: [mn_contract_header_dim.contract_number, mn_pg_product_fact.tier_idx, mn_org_comb_product_group_dim.pg_name,  mn_product_prc_dim.product_name, mn_pg_product_fact.start_date]
    limit: 500
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
      mn_contract_header_dim.contract_name: Contract Name
      mn_contract_header_dim.contract_number: Contract Number
      mn_customer_owner_dim.customer_name: Customer Name
      mn_customer_owner_dim.customer_num: Customer Number
      mn_customer_owner_dim.org_id: Customer ID
      mn_ctrt_elig_customer_dim.customer_num: Eligible Customer Number
      mn_ctrt_elig_customer_dim.customer_name: Eligible Customer Name
      mn_ctrt_elig_customer_dim.org_id: Eligible Customer ID
      mn_ctrt_commit_customer_dim.customer_name: Committed Customer Name
      mn_ctrt_commit_customer_dim.customer_num: Committed Customer ID
      mn_org_comb_product_group_dim.pg_name: Price Program Name
      mn_pg_tier_basis_u_dim.basis_type: Tier Basis Type
      mn_pg_tier_basis_u_dim.units: Tier Basis Units
      mn_pg_product_fact.tier_idx: Tier
      mn_pg_product_fact.end_date: Price End Date
      mn_pg_product_fact.product_price: Price
      mn_pg_product_fact.start_date: Price Start Date
      mn_product_prc_dim.product_num: Product Number
      mn_product_prc_dim.product_name: Product Name
    hidden_fields:
