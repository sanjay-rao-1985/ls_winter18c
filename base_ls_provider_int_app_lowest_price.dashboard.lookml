- dashboard: ls_provider_int_app_lowest_price
  title: Lowest Customer Price
  layout: grid
  rows:
  - elements: [price_table]
    height: 650
  show_applied_filters: true
  auto_run:  false


  filters:

  - name: currency_mode_flt
    title: 'Base/Local Currency Mode'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value: 'Local'
    allow_multiple_values: false
    required: true
    field: mn_bid_award_ranked_fact.base_local_curr_selection


  - name: customer_name_flt
    title: 'Customer Name'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_elig_customer_dim.customer_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_num_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: customer_num_flt
    title: 'Customer Num'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_elig_customer_dim.customer_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: customer_org_flt
    title: 'Customer ID'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_elig_customer_dim.org_id
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: contract_name_flt
    title: 'Contract Name'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_contract_header_dim.contract_name
    listens_to_filters:  [
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
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
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_contract_header_dim.contract_number
    listens_to_filters:  [contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
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
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ctrt_type_dim.ctrt_type_name
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
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
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ctrt_sub_type_dim.ctrt_sub_type_name
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
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
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_pg_prod_hrc.level4_product_name_num
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: level3_product_name_num_flt
    title: 'Level 3 Product Name [Number]'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_pg_prod_hrc.level3_product_name_num
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: level2_product_name_num_flt
    title: 'Level 2 Product Name [Number]'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_pg_prod_hrc.level2_product_name_num
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: level1_product_name_num_flt
    title: 'Level 1 Product Name [Number]'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_pg_prod_hrc.level1_product_name_num
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: product_name_num_flt
    title: 'Line Product Name [Number]'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: mn_ba_product_dim.product_name_num
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: terr_manager_flt
    title: 'Territory Manager'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: ba_seller_hrc_dim.terr_manager
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_name_flt ]

  - name: terr_name_flt
    title: 'Territory Name'
    type: field_filter
    explore: mn_bid_award_ranked_fact
    default_value:
    field: ba_seller_hrc_dim.terr_name
    listens_to_filters:  [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      customer_name_flt,
      customer_num_flt,
      customer_org_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt ]

  elements:
  - name: price_table
    title: Bid Award Minimum Price
    explore: mn_bid_award_ranked_fact
    type: table
    fields: [mn_ba_elig_customer_dim.customer_name_num, mn_ba_elig_customer_dim.org_id, mn_ba_product_dim.product_name,
      mn_ba_product_dim.ndc, mn_bid_award_ranked_fact.price_type, mn_bid_award_ranked_fact.ref_num,
      mn_bid_award_ranked_fact.start_date, mn_bid_award_ranked_fact.end_date, mn_pg_product_fact.product_base_price,
      mn_bid_award_ranked_fact.minimum_price, mn_pg_product_fact.start_date, mn_pg_product_fact.end_date]
    filters:
    listen:
      currency_mode_flt: mn_bid_award_ranked_fact.base_local_curr_selection
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      customer_name_flt: mn_bid_award_ranked_fact.customer_name_filter
      customer_num_flt: mn_bid_award_ranked_fact.customer_num_filter
      customer_org_flt: mn_bid_award_ranked_fact.customer_org_filter
      level4_product_name_num_flt: mn_ba_pg_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: mn_ba_pg_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: mn_ba_pg_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: mn_ba_pg_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_ba_product_dim.product_name_num
      terr_manager_flt: ba_seller_hrc_dim.terr_manager
      terr_name_flt: ba_seller_hrc_dim.terr_name
    sorts: [mn_ba_product_dim.product_name, mn_ba_elig_customer_dim.customer_name_num, mn_bid_award_ranked_fact.start_date, mn_pg_product_fact.start_date]
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
      mn_pg_product_fact.product_base_price: Contract Base Price
      mn_bid_award_ranked_fact.minimum_price: Awarded Minimum Price
      mn_bid_award_ranked_fact.price_type: Award Type
      mn_bid_award_ranked_fact.ref_num: Bid Award Number
      mn_ba_product_dim.product_name: Product Name
      mn_ba_elig_customer_dim.org_id: Customer ID
      mn_ba_product_dim.ndc: NDC
      mn_pg_product_fact.start_date: Base Price Start Date
      mn_pg_product_fact.end_date: Base Price End Date
      mn_bid_award_ranked_fact.start_date: Awarded Price Start Date
      mn_bid_award_ranked_fact.end_date: Awarded Price End  Date
