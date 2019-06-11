- dashboard: ls_provider_int_app_pricing_view
  title: Pricing View by Customer
  layout: grid
  rows:
  - elements: [rev_chart, vol_chart]
    height: 400
  - elements: [rev_color_legend, vol_color_legend]
    height: 90
  - elements: [data_table]
    height: 400

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

  - name: bill_customer_name_num_flt
    title: 'Bill To Customer Name [Number]'
    type: field_filter
    explore: provider_sales_ytd
    default_value:
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
  - name: vol_chart
    title: Sold Units
    explore: provider_sales_ytd
    type: looker_column
    fields: [mn_combined_sale_fact.inv_qty_year3, mn_combined_sale_fact.inv_qty_year2,
      mn_combined_sale_fact.inv_qty_year1, mn_combined_sale_fact.inv_qty_prior_12_months,
      mn_combined_sale_fact.inv_qty_12_months]
    limit: 500
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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
    column_spacing_ratio:
    column_group_spacing_ratio:
    show_dropoff: true
    hide_legend: true
    series_colors:
      mn_combined_sale_fact.inv_qty_year3: green
      mn_combined_sale_fact.inv_qty_year2: darkblue
      mn_combined_sale_fact.inv_qty_year1: blue
      mn_combined_sale_fact.inv_qty_prior_12_months: orange
      mn_combined_sale_fact.inv_qty_12_months: red
    y_axes: [{label: Sold Units, maxValue: !!null '', minValue: !!null '', orientation: left,
    showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
    type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: mn_combined_sale_fact.inv_qty_year3,
        name: Invoice Quantity Prior Year 3, axisId: mn_combined_sale_fact.inv_qty_year3},
      {id: mn_combined_sale_fact.inv_qty_year2, name: Invoice Quantity Prior Year
          2, axisId: mn_combined_sale_fact.inv_qty_year2}, {id: mn_combined_sale_fact.inv_qty_year1,
        name: Invoice Quantity Prior Year, axisId: mn_combined_sale_fact.inv_qty_year1},
      {id: mn_combined_sale_fact.inv_qty_prior_12_months, name: Invoice Quantity
          Prior Trailing 12 Months, axisId: mn_combined_sale_fact.inv_qty_prior_12_months},
      {id: mn_combined_sale_fact.inv_qty_12_months, name: Invoice Quantity Trailing
          12 Months, axisId: mn_combined_sale_fact.inv_qty_12_months}]}]


  - name: rev_chart
    title: Revenue
    explore: provider_sales_ytd
    type: looker_column
    fields: [mn_combined_sale_fact.inv_revenue_year3, mn_combined_sale_fact.inv_revenue_year2,
      mn_combined_sale_fact.inv_revenue_year1, mn_combined_sale_fact.inv_revenue_prior_12_months,
      mn_combined_sale_fact.inv_revenue_12_months]
    limit: 500
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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
    column_spacing_ratio:
    column_group_spacing_ratio:
    show_dropoff: true
    hide_legend: true
    series_colors:
      mn_combined_sale_fact.inv_revenue_year3: green
      mn_combined_sale_fact.inv_revenue_year2: darkblue
      mn_combined_sale_fact.inv_revenue_year1: blue
      mn_combined_sale_fact.inv_revenue_prior_12_months: orange
      mn_combined_sale_fact.inv_revenue_12_months: red
    y_axes: [{label: Revenue, maxValue: !!null '', minValue: !!null '', orientation: left,
    showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
    type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: mn_combined_sale_fact.inv_revenue_year3,
        name: Invoice Quantity Prior Year 3, axisId: mn_combined_sale_fact.inv_revenue_year3},
      {id: mn_combined_sale_fact.inv_revenue_year2, name: Invoice Quantity Prior Year
          2, axisId: mn_combined_sale_fact.inv_revenue_year2}, {id: mn_combined_sale_fact.inv_revenue_year1,
        name: Invoice Quantity Prior Year, axisId: mn_combined_sale_fact.inv_revenue_year1},
      {id: mn_combined_sale_fact.inv_revenue_prior_12_months, name: Invoice Quantity
          Prior Trailing 12 Months, axisId: mn_combined_sale_fact.inv_revenue_prior_12_months},
      {id: mn_combined_sale_fact.inv_revenue_12_months, name: Invoice Quantity Trailing
          12 Months, axisId: mn_combined_sale_fact.inv_revenue_12_months}]}]


  - name: data_table
    title: Sales History
    explore: provider_sales_ytd
    type: table
    fields: [sl_hip_to_customer.customer_num, sl_hip_to_customer.customer_name, sl_hip_to_customer.org_id,
    sl_bill_to_customer.customer_num, sl_bill_to_customer.customer_name, sl_bill_to_customer.org_id,
    mn_contract_srep_dim.full_name, mn_contract_header_dim.contract_name, mn_contract_header_dim.contract_number,
    mn_contract_header_dim.doc_tz_eff_start_date, mn_contract_header_dim.doc_tz_eff_end_date,
    sl_mn_product_dim.product_name, mn_combined_sale_fact.price, mn_combined_sale_fact.volume,
    mn_combined_sale_fact.revenue]
    filters:
      mn_combined_sale_fact.invoice_date:  after 1 years ago
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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

    sorts: [ sl_hip_to_customer.customer_name, sl_bill_to_customer.customer_name, mn_contract_header_dim.contract_number, sl_mn_product_dim.product_name]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_labels:
      mn_product_dim.product_name: Product
      sl_bill_to_customer.customer_name: Bill To Customer Name
      sl_hip_to_customer.customer_name: Ship To Customer Name
      mn_channel_customer_dim.customer_name: Channel
      mn_contract_header_dim.contract_name: Contract Name
      sl_hip_to_customer.customer_num: Ship To Customer Number
      sl_hip_to_customer.org_id: Ship To Customer ID
      sl_bill_to_customer.customer_num: Bill To Customer Number
      sl_bill_to_customer.org_id: Bill To Customer ID
      mn_contract_srep_dim.full_name: Contract Sales Rep
      mn_contract_header_dim.contract_number: Contract Number
      sl_mn_product_dim.product_name: Product Name
      mn_contract_header_dim.doc_tz_eff_start_date: Contract Start Date
      mn_contract_header_dim.doc_tz_eff_end_date: Contract End Date
      mn_combined_sale_fact.volume: Sold Units
      mn_combined_sale_fact.revenue: Revenue
      mn_combined_sale_fact.price: Average Price

  - name: vol_color_legend
    title: Sold Units
    type: looker_single_record
    explore: mn_labels_view
    measures: [mn_labels_view.year_table_name]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}

  - name: rev_color_legend
    title: Revenue
    type: looker_single_record
    explore: mn_labels_view
    measures: [mn_labels_view.year_table_name]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
