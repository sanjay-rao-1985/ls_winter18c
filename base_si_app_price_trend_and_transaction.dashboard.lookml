- dashboard: si_app_price_trend_and_transaction
  title: Account Price Trend and Transactions
  layout: grid
  rows:
  - elements: [price_trend_chart]
    height: 400
  - elements: [price_trend_table]
    height: 400
  show_applied_filters: true
  auto_run:  true

  filters:
  - name: account
    title: 'Account'
    type: field_filter
    explore: mn_combined_sale_fact
    default_value:
    field: mn_customer_account_dim.customer_name
    listens_to_filters: [product_name, contract_number, contract_name, invoice_year]

  - name: product_name
    title: 'Product Name'
    type: field_filter
    explore: mn_combined_sale_fact
    default_value:
    field: mn_product_dim.product_name
    listens_to_filters: [account, contract_number, contract_name, invoice_year]

  - name: contract_name
    title: 'Contract Name'
    type: field_filter
    explore: mn_combined_sale_fact
    default_value:
    field: mn_contract_header_dim.contract_name
    listens_to_filters: [product_name, account, contract_number, invoice_year]

  - name: contract_number
    title: 'Contract Number'
    type: field_filter
    explore: mn_combined_sale_fact
    default_value:
    field: mn_contract_header_dim.contract_number
    listens_to_filters: [product_name, account, contract_name, invoice_year]

  - name: invoice_year
    title: 'Invoice Date'
    type: field_filter
    explore: mn_combined_sale_fact
    default_value: ''
    field: mn_date_dim.date_sql_date
    listens_to_filters: [product_name, account, contract_number, contract_name, invoice_month]

  - name: rolling_12_months
    title: 'Rolling 12 Months'
    type: field_filter
    explore: mn_combined_sale_fact
    default_value: 'Yes'
    field: mn_combined_sale_fact.rolling_12_months

  - name: date_frame_selection
    title: "Period Timeframe Selection"
    default_value: "Year"
    type: field_filter
    explore: mn_combined_sale_fact
    field: mn_combined_sale_fact.date_frame_selection

  elements:

  - name: price_trend_table
    title: Transactions
    type: table
    explore: mn_combined_sale_fact
    dimensions: [mn_product_dim.product_name, mn_contract_header_dim.contract_name,
      mn_contract_header_dim.contract_number, mn_combined_sale_fact.invoice_year, mn_combined_sale_fact.invoice_month]
    measures: [mn_combined_sale_fact.revenue, mn_combined_sale_fact.volume, mn_combined_sale_fact.rebate,
      mn_combined_sale_fact.price, mn_combined_sale_fact.net_price]
    filters:
    listen:
      account: mn_customer_account_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      invoice_year: mn_date_dim.date_sql_date
      rolling_12_months: mn_combined_sale_fact.rolling_12_months
      product_name: mn_product_dim.product_name
    sorts: [mn_product_dim.product_name, mn_combined_sale_fact.invoice_month]
    limit: '500'
    column_limit: '50'
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
      mn_combined_sale_fact.invoice_year: Year
      mn_combined_sale_fact.invoice_month: Year Month

  - name: price_trend_chart
    title: Price Trend
    type: looker_line
    explore: mn_combined_sale_fact
    dimensions: [mn_combined_sale_fact.date_period]
    fill_fields: []
    measures: [mn_combined_sale_fact.price, mn_combined_sale_fact.net_price]
    filters:
    listen:
      account: mn_customer_account_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      invoice_year: mn_date_dim.date_sql_date
      rolling_12_months: mn_combined_sale_fact.rolling_12_months
      product_name: mn_product_dim.product_name
      date_frame_selection: mn_combined_sale_fact.date_frame_selection
    sorts: [mn_combined_sale_fact.date_period]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: circle
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_labels:
      mn_product_dim.product_name: Product
      mn_combined_sale_fact.invoice_year: Year
      mn_combined_sale_fact.invoice_month: Year Month
    series_types: {}
    discontinuous_nulls: false
    y_axis_unpin: true
    hide_legend: false
    show_null_labels: false
    label_rotation: -15
    x_axis_label: Price
    colors: ["#33BCE7", "#FE8F60", "#9895EE", "#EF6E64", "#0079BC", "#FD90B5", "#DC37D", "#54698D", "#FFCC00"]
