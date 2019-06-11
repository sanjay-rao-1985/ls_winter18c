- dashboard: sales_summary_by_product
  title: Sales Summary by Product
  layout: newspaper
  elements:
  - title: Sales Summary by Product Categories (Trailing 12 Months)
    name: Sales Summary by Product Categories (Trailing 12 Months)
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales_ytd
    type: table
    fields:
    - mn_pg_prod_hrc.product_name_num
    - mn_combined_sale_fact.inv_qty_12_months
    - mn_combined_sale_fact.inv_qty_prior_12_months
    - mn_combined_sale_fact.inv_qty_12_months_growth
    - mn_combined_sale_fact.inv_revenue_12_months
    - mn_combined_sale_fact.inv_revenue_prior_12_months
    - mn_combined_sale_fact.inv_revenue_12_months_growth
    filters:
      mn_combined_sale_fact.invoice_date: 24 months ago for 24 months
    sorts:
    - mn_combined_sale_fact.inv_qty_12_months desc
    limit: 100
    column_limit: 10
    total: true
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      mn_combined_sale_fact.net_revenue_toggle_year: Current Net Revenue
      mn_combined_sale_fact.net_revenue_toggle_prior_year: Prior Net Revenue
      mn_combined_sale_fact.net_revenue_delta_year: Net Revenue Delta
      mn_combined_sale_fact.net_revenue_growth_year: Net Revenue Growth
      mn_combined_sale_fact.ytd_vs_year_label: Year
      sl_bill_to_customer.customer_name: Customer Name
      sl_bill_to_customer.customer_num: Customer ID
      mn_combined_sale_fact.inv_revenue_growth_year: Invoice Revenue Growth
      mn_combined_sale_fact.adm_revenue_growth_year: Admin Fee Growth
      mn_combined_sale_fact.rbt_fee_revenue_growth_year: Rebates Growth
      mn_combined_sale_fact.rbt_fee_revenue_delta_year: Rebates Growth
      mn_combined_sale_fact.adm_revenue_delta_year: Admin Fee Growth
      mn_combined_sale_fact.inv_revenue_delta_year: Invoice Revenue Growth
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: mn_combined_sale_fact.net_revenue_toggle_prior_year
        name: Prior Net Revenue
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 661
      - id: mn_combined_sale_fact.inv_revenue_delta_year
        name: Invoice Revenue Growth
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 662
      - id: mn_combined_sale_fact.adm_revenue_delta_year
        name: Admin Fee Growth
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 663
      - id: mn_combined_sale_fact.rbt_fee_revenue_delta_year
        name: Rebates Growth
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 664
      - id: mn_combined_sale_fact.net_revenue_toggle_year
        name: Current Net Revenue
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 665
      __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
      __LINE_NUM: 659
    x_axis_reversed: false
    show_dropoff: false
    y_axis_reversed: false
    listen:
      catalog_level_selection_flt: mn_pg_prod_hrc.catalog_level_selection
      level4_product_name_num_flt: mn_pg_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: mn_pg_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: mn_pg_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: mn_pg_prod_hrc.level1_product_name_num
      product_name_num_flt: sl_mn_product_dim.product_name_num
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
    row: 7
    col: 0
    width: 24
    height: 10
  - title: Total Sales by Product Category
    name: Total Sales by Product Category
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales_ytd
    type: looker_column
    fields:
    - mn_pg_prod_hrc.product_name_num
    - mn_combined_sale_fact.rolling_12_months_year_label
    - mn_combined_sale_fact.decimal_revenue
    pivots:
    - mn_pg_prod_hrc.product_name_num
    filters:
      mn_combined_sale_fact.rolling_12_months_year_label: "-NULL"
      mn_combined_sale_fact.invoice_date: 24 months ago for 24 months
    sorts:
    - mn_pg_prod_hrc.product_name_num
    - mn_combined_sale_fact.decimal_revenue desc 0
    limit: 100
    column_limit: 50
    total: true
    stacking: normal
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: true
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
      mn_combined_sale_fact.net_revenue_toggle_year: Current Net Revenue
      mn_combined_sale_fact.net_revenue_toggle_prior_year: Prior Net Revenue
      mn_combined_sale_fact.net_revenue_delta_year: Net Revenue Delta
      mn_combined_sale_fact.net_revenue_growth_year: Net Revenue Growth
      mn_combined_sale_fact.ytd_vs_year_label: Year
      sl_bill_to_customer.customer_name: Customer Name
      sl_bill_to_customer.customer_num: Customer ID
      mn_combined_sale_fact.inv_revenue_growth_year: Invoice Revenue Growth
      mn_combined_sale_fact.adm_revenue_growth_year: Admin Fee Growth
      mn_combined_sale_fact.rbt_fee_revenue_growth_year: Rebates Growth
      mn_combined_sale_fact.rbt_fee_revenue_delta_year: Rebates Growth
      mn_combined_sale_fact.adm_revenue_delta_year: Admin Fee Growth
      mn_combined_sale_fact.inv_revenue_delta_year: Invoice Revenue Growth
    series_types: {}
    y_axes:
    - label: Invoice Revenue
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: Apollo [APOLLO]
        name: Apollo [APOLLO]
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 757
      - id: Casotrex [199993214]
        name: Casotrex [199993214]
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 758
      - id: Chemistry [CHEMASSAY]
        name: Chemistry [CHEMASSAY]
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 759
      - id: Fostrex [199990232]
        name: Fostrex [199990232]
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 760
      - id: Galfen [199991166]
        name: Galfen [199991166]
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 760
      - id: Repritux [199993330]
        name: Repritux [199993330]
        __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
        __LINE_NUM: 761
      __FILE: ls_winter17m/base_ls_provider_int_app_sales_summary.dashboard.lookml
      __LINE_NUM: 755
    x_axis_reversed: false
    show_dropoff: false
    y_axis_reversed: false
    hidden_fields:
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    listen:
      catalog_level_selection_flt: mn_pg_prod_hrc.catalog_level_selection
      level4_product_name_num_flt: mn_pg_prod_hrc.level4_product_name_num
      level3_product_name_num_flt: mn_pg_prod_hrc.level3_product_name_num
      level2_product_name_num_flt: mn_pg_prod_hrc.level2_product_name_num
      level1_product_name_num_flt: mn_pg_prod_hrc.level1_product_name_num
      product_name_num_flt: sl_mn_product_dim.product_name_num
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
    height: 7
  filters:
  - name: catalog_level_selection_flt
    title: Product Catalog Level
    type: field_filter
    default_value: '1'
    allow_multiple_values: false
    required: true
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales_ytd
    listens_to_filters: []
    field: mn_pg_prod_hrc.catalog_level_selection
  - name: level4_product_name_num_flt
    title: Level 4 Product Name [Number]
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: base_ls_provider_int_app_model_ls_winter18c
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
    explore: provider_sales_ytd
    listens_to_filters:
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
