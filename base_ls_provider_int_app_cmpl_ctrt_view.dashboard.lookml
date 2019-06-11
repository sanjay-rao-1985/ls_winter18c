- dashboard: ls_provider_int_app_cmpl_ctrt_view
  title: Compliance Detailed View
  layout: grid
  rows:
  - elements: [top_kpis]
    height: 130
  - elements: [cmpl_stacked, cmpl_rev_loss]
    height: 350
  - elements: [data_table]
    height: 350
  show_applied_filters: true
  auto_run:  false


  filters:

  - name: currency_mode_flt
    title: 'Base/Local Currency Mode'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value: 'Local'
    allow_multiple_values: false
    required: true
    field: mn_cmpl_period_fact.base_local_curr_selection

  - name: date_frame_selection
    title: 'Period Selection'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value: 'Year'
    allow_multiple_values: false
    required: true
    field: mn_cmpl_period_fact.date_frame_selection

  - name: contract_name_flt
    title: 'Contract Name'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_contract_header_dim.contract_name
    listens_to_filters: [ contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_contract_header_dim.contract_number
    listens_to_filters: [contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_ctrt_type_dim.ctrt_type_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_ctrt_sub_type_dim.ctrt_sub_type_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: pg_name_flt
    title: 'Price Program'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_org_comb_product_group_dim.pg_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: end_date_flt
    title: 'Period End Date'
    type: date_filter
    default_value: ''

  - name: review_status_flt
    title: 'Period Review Status'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_cmpl_period_fact.review_status

  - name: owner_name_num_flt
    title: 'Owner Customer Name [Number]'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_customer_owner_dim.customer_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_customer_owner_dim.org_id
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: cmt_name_num_flt
    title: 'Customer Name [Number]'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_customer_cmpl_dim.customer_name_num
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: cmt_org_id_flt
    title: 'Customer ID'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_customer_cmpl_dim.org_id
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: eda_date_flt
    title: 'Customer EDA Effective Date'
    type: date_filter
    default_value:


  - name: eda_attr_name_flt
    title: 'Customer EDA Name'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: cmpl_customer_attr_fact.attr_name
    allow_multiple_values: false
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_value_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: eda_attr_value_flt
    title: 'Customer EDA Value'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: cmpl_customer_attr_fact.attr_value
    allow_multiple_values: false
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: sales_rep_flt
    title: 'Sales Rep'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: mn_contract_srep_dim.full_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
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
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
      pg_name_flt,
      end_date_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
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
      pg_name_flt,
      review_status_flt,
      owner_name_num_flt,
      owner_org_id_flt,
      cmt_name_num_flt,
      cmt_org_id_flt,
      eda_date_flt,
      eda_attr_name_flt,
      eda_attr_value_flt,
      sales_rep_flt,
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      terr_manager_flt,
      terr_name_flt ]

  - name: terr_manager_flt
    title: 'Territory Manager'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: cmpl_seller_hrc_dim.terr_manager
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
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
      sales_rep_flt,
      terr_name_flt ]

  - name: terr_name_flt
    title: 'Territory Name'
    type: field_filter
    explore: mn_cmpl_period_fact
    default_value:
    field: cmpl_seller_hrc_dim.terr_name
    listens_to_filters: [contract_name_flt,
      contract_number_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      pg_name_flt,
      end_date_flt,
      review_status_flt,
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
      sales_rep_flt,
      terr_manager_flt]



  elements:
  - name: data_table
    title: Compliance Detailed View
    explore: mn_cmpl_period_fact
    type: table
    fields: [mn_contract_srep_dim.full_name, mn_contract_header_dim.contract_name, mn_contract_header_dim.contract_number,
      mn_org_comb_product_group_dim.pg_name, mn_cmpl_period_fact.period_start_date, mn_cmpl_period_fact.period_end_date,
      mn_cmpl_period_fact.period_status, mn_cmpl_period_fact.cmpl_period_count, mn_cmpl_period_fact.review_status_compliant_count,
      mn_cmpl_period_fact.review_status_over_compliant_count, mn_cmpl_period_fact.review_status_out_of_compliance_count,
      mn_cmpl_period_fact.review_status_out_of_compliance, mn_cmpl_period_fact.revenue_loss]
    filters:
      mn_cmpl_period_fact.period_start_date: before 0 minutes ago
    listen:
      currency_mode_flt: mn_cmpl_period_fact.base_local_curr_selection
      review_status_flt: mn_cmpl_period_fact.review_status
      pg_name_flt: mn_org_comb_product_group_dim.pg_name
      end_date_flt: mn_cmpl_period_fact.period_end_date
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      owner_name_num_flt: mn_customer_owner_dim.customer_name_num
      owner_org_id_flt: mn_customer_owner_dim.org_id
      cmt_name_num_flt: mn_customer_cmpl_dim.customer_name_num
      cmt_org_id_flt: mn_customer_cmpl_dim.org_id
      eda_attr_name_flt: cmpl_customer_attr_fact.attr_name
      eda_attr_value_flt: cmpl_customer_attr_fact.attr_value
      eda_date_flt: cmpl_customer_attr_fact.eda_date
      terr_manager_flt: cmpl_seller_hrc_dim.terr_manager
      terr_name_flt: cmpl_seller_hrc_dim.terr_name
      sales_rep_flt: mn_contract_srep_dim.full_name
      level4_product_name_num_flt: ct_prc_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: ct_prc_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: ct_prc_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: ct_prc_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_product_prc_dim.product_name_num
    sorts: [mn_cmpl_period_fact.period_start_date desc, mn_contract_header_dim.contract_number,  mn_org_comb_product_group_dim.pg_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: overall_compliance
      label: Overall Compliance
      expression: 1 - ${mn_cmpl_period_fact.review_status_out_of_compliance}
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
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
      mn_contract_srep_dim.full_name: Sales Rep Name
      mn_contract_header_dim.contract_name: Contract Name
      mn_contract_header_dim.contract_number: 'Contract #'
      mn_org_comb_product_group_dim.pg_name: Price Program Name
      mn_cmpl_period_fact.period_start_date: Period Start Date
      mn_cmpl_period_fact.period_end_date: Period End Date
      mn_cmpl_period_fact.period_status: Period Status
      mn_cmpl_period_fact.cmpl_period_count: "Total # of Periods"
      mn_cmpl_period_fact.review_status_compliant_count: Compliant
      mn_cmpl_period_fact.review_status_over_compliant_count: Over Compliant
      mn_cmpl_period_fact.review_status_out_of_compliance_count: Out of compliance
      overall_compliance: Overall compliance
    hidden_fields: [mn_cmpl_period_fact.review_status_out_of_compliance]


  - name: cmpl_stacked
    title: Overall Compliance (By Period Count)
    explore: mn_cmpl_period_fact
    type: looker_column
    fields: [mn_cmpl_period_fact.date_period, mn_cmpl_period_fact.cmpl_period_count,
      mn_cmpl_period_fact.review_status_compliant_count, mn_cmpl_period_fact.review_status_out_of_compliance_count,
      mn_cmpl_period_fact.review_status_over_compliant_count, mn_cmpl_period_fact.review_status_out_of_compliance]
    filters:
      mn_cmpl_period_fact.period_start_date: before 0 minutes ago
    listen:
      currency_mode_flt: mn_cmpl_period_fact.base_local_curr_selection
      pg_name_flt: mn_org_comb_product_group_dim.pg_name
      review_status_flt: mn_cmpl_period_fact.review_status
      date_frame_selection: mn_cmpl_period_fact.date_frame_selection
      end_date_flt: mn_cmpl_period_fact.period_end_date
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      owner_name_num_flt: mn_customer_owner_dim.customer_name_num
      owner_org_id_flt: mn_customer_owner_dim.org_id
      cmt_name_num_flt: mn_customer_cmpl_dim.customer_name_num
      cmt_org_id_flt: mn_customer_cmpl_dim.org_id
      eda_attr_name_flt: cmpl_customer_attr_fact.attr_name
      eda_attr_value_flt: cmpl_customer_attr_fact.attr_value
      eda_date_flt: cmpl_customer_attr_fact.eda_date
      terr_manager_flt: cmpl_seller_hrc_dim.terr_manager
      terr_name_flt: cmpl_seller_hrc_dim.terr_name
      sales_rep_flt: mn_contract_srep_dim.full_name
      level4_product_name_num_flt: ct_prc_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: ct_prc_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: ct_prc_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: ct_prc_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_product_prc_dim.product_name_num
    limit: 500
    column_limit: 50
    sorts: [mn_cmpl_period_fact.date_period]
    dynamic_fields:
    stacking: percent
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      mn_cmpl_period_fact.cmpl_period_count: "Total # of Periods"
      mn_cmpl_period_fact.review_status_compliant_count: Compliant
      mn_cmpl_period_fact.review_status_over_compliant_count: Over Compliant
      mn_cmpl_period_fact.review_status_out_of_compliance_count: Out of compliance
      overall_compliance: Overall compliance
    hidden_fields: [mn_cmpl_period_fact.review_status_out_of_compliance, mn_cmpl_period_fact.cmpl_period_count]
    series_types:
      revenue_loss: line
    colors: ['palette: Santa Cruz']
    series_colors: {}
    reference_lines: []
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: mn_cmpl_period_fact.review_status_compliant_count,
            name: Compliant, axisId: mn_cmpl_period_fact.review_status_compliant_count},
          {id: mn_cmpl_period_fact.review_status_over_compliant_count, name: Over Compliant,
            axisId: mn_cmpl_period_fact.review_status_over_compliant_count}, {id: mn_cmpl_period_fact.review_status_out_of_compliance_count,
            name: Out of compliance, axisId: mn_cmpl_period_fact.review_status_out_of_compliance_count}]},
      {label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: revenue_loss,
            name: Revenue Loss, axisId: revenue_loss}]}]


  - name: cmpl_rev_loss
    title: Revenue Loss
    explore: mn_cmpl_period_fact
    type: looker_column
    fields: [mn_cmpl_period_fact.date_period, mn_cmpl_period_fact.review_status_out_of_compliance_count,
    mn_cmpl_period_fact.revenue_loss, mn_cmpl_period_fact.cmpl_period_count]
    filters:
      mn_cmpl_period_fact.period_start_date: before 0 minutes ago
    listen:
      currency_mode_flt: mn_cmpl_period_fact.base_local_curr_selection
      review_status_flt: mn_cmpl_period_fact.review_status
      date_frame_selection: mn_cmpl_period_fact.date_frame_selection
      pg_name_flt: mn_org_comb_product_group_dim.pg_name
      end_date_flt: mn_cmpl_period_fact.period_end_date
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      owner_name_num_flt: mn_customer_owner_dim.customer_name_num
      owner_org_id_flt: mn_customer_owner_dim.org_id
      cmt_name_num_flt: mn_customer_cmpl_dim.customer_name_num
      cmt_org_id_flt: mn_customer_cmpl_dim.org_id
      eda_attr_name_flt: cmpl_customer_attr_fact.attr_name
      eda_attr_value_flt: cmpl_customer_attr_fact.attr_value
      eda_date_flt: cmpl_customer_attr_fact.eda_date
      terr_manager_flt: cmpl_seller_hrc_dim.terr_manager
      terr_name_flt: cmpl_seller_hrc_dim.terr_name
      sales_rep_flt: mn_contract_srep_dim.full_name
      level4_product_name_num_flt: ct_prc_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: ct_prc_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: ct_prc_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: ct_prc_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_product_prc_dim.product_name_num
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: revenue_loss
      label: Revenue Loss
      expression: if(${mn_cmpl_period_fact.revenue_loss} <0,0,${mn_cmpl_period_fact.revenue_loss})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_customers
      label: "Total # of Periods"
      expression: "${mn_cmpl_period_fact.cmpl_period_count}"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    sorts: [mn_cmpl_period_fact.date_period]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      mn_cmpl_period_fact.review_status_out_of_compliance_count: "# Out of Compliance"
      overall_compliance: Overall compliance
    hidden_fields: [mn_cmpl_period_fact.revenue_loss, mn_cmpl_period_fact.cmpl_period_count]
    series_types:
      revenue_loss: line
      mn_cmpl_period_fact.review_status_out_of_compliance_count: scatter
    colors: ['palette: Santa Cruz']
    series_colors: {}
    reference_lines: []
    y_axes: [{label: 'Count', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: total_customers,
            name: "Total # of Periods", axisId: total_customers}, {id: mn_cmpl_period_fact.review_status_out_of_compliance_count,
            name: "# Out of Compliance", axisId: mn_cmpl_period_fact.review_status_out_of_compliance_count}]},
      {label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: revenue_loss,
            name: Revenue Loss, axisId: revenue_loss}]}]


  - name: top_kpis
    title: Overall Compliance
    explore: mn_cmpl_period_fact
    type: table
    fields: [mn_org_comb_product_group_dim.count_formatted, mn_cmpl_period_fact.expected_sales,
      mn_cmpl_period_fact.actual_sales, mn_cmpl_period_fact.review_status_out_of_compliance_formatted,
      mn_cmpl_period_fact.revenue_loss_to_date_formatted, mn_cmpl_period_fact.review_status_compliant_formatted,
      mn_cmpl_period_fact.review_status_over_compliant_formatted, mn_cmpl_period_fact.revenue_over_to_date_formatted]
    filters:
      mn_cmpl_period_fact.period_start_date: before 0 minutes ago
    listen:
      currency_mode_flt: mn_cmpl_period_fact.base_local_curr_selection
      review_status_flt: mn_cmpl_period_fact.review_status
      pg_name_flt: mn_org_comb_product_group_dim.pg_name
      date_frame_selection: mn_cmpl_period_fact.date_frame_selection
      end_date_flt: mn_cmpl_period_fact.period_end_date
      contract_number_flt: mn_contract_header_dim.contract_number
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      owner_name_num_flt: mn_customer_owner_dim.customer_name_num
      owner_org_id_flt: mn_customer_owner_dim.org_id
      cmt_name_num_flt: mn_customer_cmpl_dim.customer_name_num
      cmt_org_id_flt: mn_customer_cmpl_dim.org_id
      eda_attr_name_flt: cmpl_customer_attr_fact.attr_name
      eda_attr_value_flt: cmpl_customer_attr_fact.attr_value
      eda_date_flt: cmpl_customer_attr_fact.eda_date
      terr_manager_flt: cmpl_seller_hrc_dim.terr_manager
      terr_name_flt: cmpl_seller_hrc_dim.terr_name
      sales_rep_flt: mn_contract_srep_dim.full_name
      level4_product_name_num_flt: ct_prc_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: ct_prc_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: ct_prc_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: ct_prc_prod_hrc.level1_product_name_num
      product_name_num_flt: mn_product_prc_dim.product_name_num

    sorts: [mn_cmpl_period_fact.actual_sales desc]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [mn_cmpl_period_fact.expected_sales, mn_cmpl_period_fact.actual_sales]
    series_labels:
      mn_org_comb_product_group_dim.count_formatted: Total Price Programs
      mn_cmpl_period_fact.review_status_out_of_compliance_formatted: Under Compliant %
      mn_cmpl_period_fact.revenue_loss_to_date_formatted: Under Compliant $
      mn_cmpl_period_fact.review_status_compliant_formatted: Compliant %
      mn_cmpl_period_fact.review_status_over_compliant_formatted: Over Compliant %
      mn_cmpl_period_fact.revenue_over_to_date_formatted: Over Compliant $
