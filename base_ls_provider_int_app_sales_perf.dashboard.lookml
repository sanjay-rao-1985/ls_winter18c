- dashboard: ls_provider_int_app_sales_per
  title: Customer Sales Performance
  layout: grid
  rows:

  - elements: [total_chart]
    height: 250
  - elements: [prior_chart, current_chart]
    height: 450
  - elements: [sales_chart]
    height: 350
  - elements: [data_table]
    height: 500
  show_applied_filters: true
  auto_run:  false

  filters:

  - name: currency_mode_flt
    title: 'Base/Local Currency Mode'
    type: field_filter
    explore: provider_sales_ytd
    default_value: 'Local'
    allow_multiple_values: false
    required: true
    field: mn_combined_sale_fact.base_local_curr_selection

  - name: catalog_level_selection_flt
    title: "Product Catalog Level"
    default_value: 4
    type: field_filter
    explore: provider_sales_ytd
    field:  mn_pg_prod_hrc.catalog_level_selection
    allow_multiple_values: false
    required: true

  - name: date_frame_selection_flt
    title: "Period Selection"
    default_value: "Year"
    type: field_filter
    explore: provider_sales_ytd
    field: mn_combined_sale_fact.date_frame_selection
    allow_multiple_values: false
    required: true

  - name: bill_customer_name_num_flt
    title: 'Bill To Customer Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
#     allow_multiple_values: false
#     required: true
    field: sl_bill_to_customer.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: invoice_date_flt
    title: 'Invoice Date'
    type: date_filter
    default_value: 3 years ago for 3 years

  - name: level4_product_name_num_flt
    title: 'Level 4 Product Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_pg_prod_hrc.level4_product_name_num
    listens_to_filters: [
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]


  - name: level3_product_name_num_flt
    title: 'Level 3 Product Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_pg_prod_hrc.level3_product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: level2_product_name_num_flt
    title: 'Level 2 Product Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_pg_prod_hrc.level2_product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]


  - name: level1_product_name_num_flt
    title: 'Level 1 Product Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_pg_prod_hrc.level1_product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]


  - name: product_name_num_flt
    title: 'Line Product Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_mn_product_dim.product_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: ctrt_customer_name_num_flt
    title: 'Contracted Customer Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_gpo_customer.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: gpo_customer_name_num_flt
    title: 'GPO Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_gpo_customer.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: idn_customer_name_num_flt
    title: 'IDN Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_idn_customer.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]


  - name: sold_customer_name_num_flt
    title: 'Sold To Customer Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_sold_to_customer.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: ship_customer_name_num_flt
    title: 'Ship To Customer Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_hip_to_customer.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: pwh_customer_name_num_flt
    title: 'Parent Wholesaler Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_parent_wholesaler.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: wh_customer_name_num_flt
    title: 'Wholesaler Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_wholesaler.customer_name_num
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: contract_name_flt
    title: 'Contract Name'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_contract_header_dim.contract_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: ctrt_type_name_flt
    title: 'Contract Type'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_ctrt_type_dim.ctrt_type_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: ctrt_sub_type_name_flt
    title: 'Contract Sub-Type'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_ctrt_sub_type_dim.ctrt_sub_type_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: sale_cot_flt
    title: 'Sale COT'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_sale_elig_cot_dim.description
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      cust_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: cust_cot_flt
    title: 'Contracted Customer COT'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: sl_contr_cot_dim.description
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      sale_type_flt,
      org_display_name_flt]

  - name: sale_type_flt
    title: 'Sale Type'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_combined_sale_fact.sale_type
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      org_display_name_flt]


  - name: org_display_name_flt
    title: 'Sale Org'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
    field: mn_sale_org_dim.org_display_name
    listens_to_filters: [
      level4_product_name_num_flt,
      level3_product_name_num_flt,
      level2_product_name_num_flt,
      level1_product_name_num_flt,
      product_name_num_flt,
      ctrt_customer_name_num_flt,
      gpo_customer_name_num_flt,
      idn_customer_name_num_flt,
      bill_customer_name_num_flt,
      sold_customer_name_num_flt,
      ship_customer_name_num_flt,
      pwh_customer_name_num_flt,
      wh_customer_name_num_flt,
      contract_name_flt,
      ctrt_type_name_flt,
      ctrt_sub_type_name_flt,
      sale_cot_flt,
      cust_cot_flt,
      sale_type_flt]


  elements:

  - name: total_chart
    title: Total Sales Rolling 36 Months
    explore: provider_sales_ytd
    type: looker_column
    fields: [mn_combined_sale_fact.rolling_24_months_year_label, mn_combined_sale_fact.inv_revenue_2_prior_12_months,
      mn_combined_sale_fact.inv_revenue_prior_12_months, mn_combined_sale_fact.inv_revenue_12_months]
    sorts: [mn_combined_sale_fact.rolling_24_months_year_label]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: revenue
      label: Revenue
      expression: "${mn_combined_sale_fact.inv_revenue_2_prior_12_months} + ${mn_combined_sale_fact.inv_revenue_prior_12_months}\
        \ + ${mn_combined_sale_fact.inv_revenue_12_months}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    filters:
      mn_combined_sale_fact.invoice_date:  36 months ago for 36 months
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [mn_combined_sale_fact.inv_revenue_2_prior_12_months, mn_combined_sale_fact.inv_revenue_12_months,
      mn_combined_sale_fact.inv_revenue_prior_12_months]
    hide_legend: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: revenue,
            name: Revenue, axisId: revenue}]}]
    show_dropoff: true


  - name: prior_chart
    title: Prior vs 2 Prior Year 12 Rolling Months Performance
    explore: provider_sales_ytd
    type: looker_column
    fields: [mn_pg_prod_hrc.product_name_num,
      mn_combined_sale_fact.inv_revenue_2_prior_12_months, mn_combined_sale_fact.inv_revenue_prior_12_months]
    filters:
      mn_combined_sale_fact.rolling_past_12_months_year_label: "-NULL"
      mn_combined_sale_fact.invoice_date:   36 months ago for 36 months
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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
    sorts: [mn_pg_prod_hrc.product_name_num desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: revenue_offset
      label: Revenue Offset
      expression: "  ${running_revenue} - if (${revenue_delta} >0 , ${revenue_delta},\
        \ 0)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_delta
      label: Revenue Delta
      expression: "${mn_combined_sale_fact.inv_revenue_prior_12_months} - ${mn_combined_sale_fact.inv_revenue_2_prior_12_months}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: running_revenue
      label: Running Revenue
      expression: "${mn_combined_sale_fact.inv_revenue_2_prior_12_months:total} + running_total(${revenue_delta})"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_delta_positive
      label: Revenue Delta Positive
      expression: if (${revenue_delta} >0 ,${revenue_delta}, 0)
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_delta_negative
      label: Revenue Delta Negative
      expression: if (${revenue_delta} <0 ,abs(${revenue_delta}), 0)
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    stacking: normal
    total: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    hidden_fields: [running_revenue, revenue_delta, mn_combined_sale_fact.inv_revenue_prior_12_months,
      label, mn_combined_sale_fact.inv_revenue_2_prior_12_months]
    series_colors:
      revenue_delta_negative: red
      revenue_delta_positive: green
      revenue_offset: transparent
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true, valueFormat: !!null '', series: [{id: revenue_offset,
            name: Revenue Offset, axisId: revenue_offset}, {id: revenue_delta_positive,
            name: Revenue Delta Positive, axisId: revenue_delta_positive}, {id: revenue_delta_negative,
            name: Revenue Delta Negative, axisId: revenue_delta_negative}]}]


  - name: current_chart
    title: Current vs Prior Year 12 Rolling Months Performance
    explore: provider_sales_ytd
    type: looker_column
    fields: [mn_pg_prod_hrc.product_name_num, mn_combined_sale_fact.inv_revenue_prior_12_months,
      mn_combined_sale_fact.inv_revenue_12_months]
    filters:
      mn_combined_sale_fact.rolling_12_months_year_label: "-NULL"
      mn_combined_sale_fact.invoice_date:  24 months ago for 24 months
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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
    sorts: [mn_pg_prod_hrc.product_name_num desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: revenue_offset
      label: Revenue Offset
      expression: "  ${running_revenue} - if (${revenue_delta} >0 , ${revenue_delta},\
        \ 0)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_delta
      label: Revenue Delta
      expression: "${mn_combined_sale_fact.inv_revenue_12_months} - ${mn_combined_sale_fact.inv_revenue_prior_12_months}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: running_revenue
      label: Running Revenue
      expression: "${mn_combined_sale_fact.inv_revenue_prior_12_months:total}  + running_total(${revenue_delta})"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_delta_positive
      label: Revenue Delta Positive
      expression: if (${revenue_delta} >0 ,${revenue_delta}, 0)
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_delta_negative
      label: Revenue Delta Negative
      expression: if (${revenue_delta} <0 ,abs(${revenue_delta}), 0)
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    hidden_fields: [running_revenue, revenue_delta, mn_combined_sale_fact.inv_revenue_prior_12_months,
      mn_combined_sale_fact.inv_revenue_12_months, label]
    series_colors:
      revenue_delta_negative: red
      revenue_delta_positive: green
      revenue_offset: transparent
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true, valueFormat: !!null '', series: [{id: revenue_offset,
            name: Revenue Offset, axisId: revenue_offset}, {id: revenue_delta_positive,
            name: Revenue Delta Positive, axisId: revenue_delta_positive}, {id: revenue_delta_negative,
            name: Revenue Delta Negative, axisId: revenue_delta_negative}]}]

  - name: data_table
    title: Sales Summary by Product Categories
    explore: provider_sales_ytd
    type: table
    fields: [mn_pg_prod_hrc.product_name_num, mn_combined_sale_fact.decimal_revenue,
      mn_combined_sale_fact.date_period, mn_combined_sale_fact.volume]
    pivots: [mn_combined_sale_fact.date_period]
    filters:
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
      invoice_date_flt: mn_combined_sale_fact.invoice_date
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
      date_frame_selection_flt: mn_combined_sale_fact.date_frame_selection

    sorts: [mn_combined_sale_fact.date_period 0, mn_pg_prod_hrc.product_name_num 0]
    limit: 100
    column_limit: 50
    total: false
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
    stacking: normal
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      mn_combined_sale_fact.date_period: Period
      mn_combined_sale_fact.decimal_revenue: Invoice Revenue
    series_types: {}
    y_axes: [{label: Invoice Revenue, maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: []}]
    x_axis_reversed: false
    show_dropoff: false
    y_axis_reversed: false
    hidden_fields:
    colors: ['palette: Mixed Dark']
    series_colors: {}

  - name: sales_chart
    title: Total Sales by Product Category
    explore: provider_sales_ytd
    type: looker_column
    fields: [mn_pg_prod_hrc.product_name_num, mn_combined_sale_fact.decimal_revenue,
      mn_combined_sale_fact.date_period]
    pivots: [mn_pg_prod_hrc.product_name_num]
    filters:
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
      invoice_date_flt: mn_combined_sale_fact.invoice_date
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
      date_frame_selection_flt: mn_combined_sale_fact.date_frame_selection
    sorts: [mn_pg_prod_hrc.product_name_num 0, mn_combined_sale_fact.date_period]
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: true
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      mn_combined_sale_fact.date_period: Period
    series_types: {}
    y_axes: [{label: Invoice Revenue, maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: []}]
    x_axis_reversed: false
    show_dropoff: false
    y_axis_reversed: false
    hidden_fields:
    colors: ['palette: Mixed Dark']
    series_colors: {}
