- dashboard: sales_trending_by_customer_view
  title: Sales Trending By Customer View
  layout: newspaper
  refresh: 1 hour
  elements:
  - title: Sales Trending By Customer View
    name: Sales Trending By Customer View
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    type: looker_column
    fields:
    - mn_combined_sale_fact.list_revenue
    - mn_combined_sale_fact.invoice_revenue
    - mn_combined_sale_fact.date_period
    sorts:
    - mn_combined_sale_fact.date_period
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    x_axis_label: Invoice Period
    listen:
      date_frame_selection: mn_combined_sale_fact.date_frame_selection
      level4_product_name_num_flt: mn_pg_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: mn_pg_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: mn_pg_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: mn_pg_prod_hrc.level1_product_name_num
      product_name_num_flt: sl_mn_product_dim.product_name_num
      invoice_date_flt: mn_combined_sale_fact.invoice_date
      sale_type_flt: mn_combined_sale_fact.sale_type
      sale_cot_flt: mn_sale_elig_cot_dim.description
      cust_cot_flt: sl_contr_cot_dim.description
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      org_display_name_flt: mn_sale_org_dim.org_display_name
      ctrt_customer_name_num_flt: sl_contracted_customer.customer_name_num
      gpo_customer_name_num_flt: sl_gpo_customer.customer_name_num
      idn_customer_name_num_flt: sl_idn_customer.customer_name_num
      bill_customer_name_num_flt: sl_bill_to_customer.customer_name_num
      sold_customer_name_num_flt: sl_sold_to_customer.customer_name_num
      ship_customer_name_num_flt: sl_hip_to_customer.customer_name_num
      pwh_customer_name_num_flt: sl_parent_wholesaler.customer_name_num
      wh_customer_name_num_flt: sl_wholesaler.customer_name_num
    row: 0
    col: 0
    width: 24
    height: 8
  - title: Sales Trending By Customer
    name: Sales Trending By Customer
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    type: table
    fields:
    - sl_hip_to_customer.customer_num
    - mn_combined_sale_fact.date_period
    - sl_hip_to_customer.customer_name
    - sl_hip_to_customer.org_id
    - mn_combined_sale_fact.list_revenue
    - mn_combined_sale_fact.invoice_revenue
    - sl_mn_product_dim.product_name
    - sl_mn_product_dim.sku
    pivots:
    - mn_combined_sale_fact.date_period
    sorts:
    - sl_hip_to_customer.customer_num
    - mn_combined_sale_fact.date_period 0
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
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    series_types: {}
    series_labels:
      sl_hip_to_customer.customer_num: Customer Number (Ship To)
      sl_hip_to_customer.customer_name: Customer Name (Ship To)
      sl_hip_to_customer.org_id: Customer ID (Ship To)
      sl_mn_product_dim.product_name: Product Name
      mn_combined_sale_fact.date_period: Invoice Period
    listen:
      date_frame_selection: mn_combined_sale_fact.date_frame_selection
      level4_product_name_num_flt: mn_pg_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: mn_pg_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: mn_pg_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: mn_pg_prod_hrc.level1_product_name_num
      product_name_num_flt: sl_mn_product_dim.product_name_num
      invoice_date_flt: mn_combined_sale_fact.invoice_date
      sale_type_flt: mn_combined_sale_fact.sale_type
      sale_cot_flt: mn_sale_elig_cot_dim.description
      cust_cot_flt: sl_contr_cot_dim.description
      contract_name_flt: mn_contract_header_dim.contract_name
      ctrt_type_name_flt: mn_ctrt_type_dim.ctrt_type_name
      ctrt_sub_type_name_flt: mn_ctrt_sub_type_dim.ctrt_sub_type_name
      org_display_name_flt: mn_sale_org_dim.org_display_name
      ctrt_customer_name_num_flt: sl_contracted_customer.customer_name_num
      gpo_customer_name_num_flt: sl_gpo_customer.customer_name_num
      idn_customer_name_num_flt: sl_idn_customer.customer_name_num
      bill_customer_name_num_flt: sl_bill_to_customer.customer_name_num
      sold_customer_name_num_flt: sl_sold_to_customer.customer_name_num
      ship_customer_name_num_flt: sl_hip_to_customer.customer_name_num
      pwh_customer_name_num_flt: sl_parent_wholesaler.customer_name_num
      wh_customer_name_num_flt: sl_wholesaler.customer_name_num
    row: 8
    col: 0
    width: 24
    height: 8
  filters:
  - name: invoice_date_flt
    title: Invoice Date
    type: date_filter
    default_value: 6 quarters
    allow_multiple_values: true
    required: false
  - name: date_frame_selection
    title: Period Selection
    type: field_filter
    default_value: Quarter
    allow_multiple_values: false
    required: true
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters: []
    field: mn_combined_sale_fact.date_frame_selection
  - name: level4_product_name_num_flt
    title: Level 4 Product Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_pg_prod_hrc.level4_product_name_num
  - name: level3_product_name_num_flt
    title: Level 3 Product Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_pg_prod_hrc.level3_product_name_num
  - name: level2_product_name_num_flt
    title: Level 2 Product Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_pg_prod_hrc.level2_product_name_num
  - name: level1_product_name_num_flt
    title: Level 1 Product Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_pg_prod_hrc.level1_product_name_num
  - name: product_name_num_flt
    title: Line Product Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_mn_product_dim.product_name_num
  - name: ctrt_customer_name_num_flt
    title: Contracted Customer Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_gpo_customer.customer_name_num
  - name: gpo_customer_name_num_flt
    title: GPO Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_gpo_customer.customer_name_num
  - name: idn_customer_name_num_flt
    title: IDN Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_idn_customer.customer_name_num
  - name: bill_customer_name_num_flt
    title: Bill To Customer Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_bill_to_customer.customer_name_num
  - name: sold_customer_name_num_flt
    title: Sold To Customer Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_sold_to_customer.customer_name_num
  - name: ship_customer_name_num_flt
    title: Ship To Customer Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_hip_to_customer.customer_name_num
  - name: pwh_customer_name_num_flt
    title: Parent Wholesaler Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_parent_wholesaler.customer_name_num
  - name: wh_customer_name_num_flt
    title: Wholesaler Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_wholesaler.customer_name_num
  - name: contract_name_flt
    title: Contract Name
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_contract_header_dim.contract_name
  - name: ctrt_type_name_flt
    title: Contract Type
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_ctrt_type_dim.ctrt_type_name
  - name: ctrt_sub_type_name_flt
    title: Contract Sub-Type
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_ctrt_sub_type_dim.ctrt_sub_type_name
  - name: sale_cot_flt
    title: Sale COT
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - cust_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: mn_sale_elig_cot_dim.description
  - name: cust_cot_flt
    title: Contracted Customer COT
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - sale_type_flt
    - org_display_name_flt
    field: sl_contr_cot_dim.description
  - name: sale_type_flt
    title: Sale Type
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - org_display_name_flt
    field: mn_combined_sale_fact.sale_type
  - name: org_display_name_flt
    title: Sale Org
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales
    listens_to_filters:
    - invoice_date_flt
    - level4_product_name_num_flt
    - level3_product_name_num_flt
    - level2_product_name_num_flt
    - level1_product_name_num_flt
    - product_name_num_flt
    - ctrt_customer_name_num_flt
    - gpo_customer_name_num_flt
    - idn_customer_name_num_flt
    - bill_customer_name_num_flt
    - sold_customer_name_num_flt
    - ship_customer_name_num_flt
    - pwh_customer_name_num_flt
    - wh_customer_name_num_flt
    - contract_name_flt
    - ctrt_type_name_flt
    - ctrt_sub_type_name_flt
    - sale_cot_flt
    - cust_cot_flt
    - sale_type_flt
    field: mn_sale_org_dim.org_display_name
