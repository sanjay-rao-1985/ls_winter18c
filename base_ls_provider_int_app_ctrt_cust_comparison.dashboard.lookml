- dashboard: ls_provider_int_app_ctrt_cust_comparison
  title: Contract/Price Comparison Report
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
    explore: provider_sales_and_contract_pricing
    default_value: 'Local'
    allow_multiple_values: false
    required: true
    field: mn_combined_sale_fact.base_local_curr_selection

  - name: price_contract_name_flt
    title: "Proposed Price Contract Name"
    default_value:
    type: field_filter
    explore: provider_sales_and_contract_pricing
    field:  mn_org_contract_header_dim.contract_name
    allow_multiple_values: false
    #required: true
    listens_to_filters: [pg_name_flt, tier_idx_flt]

  - name: pg_name_flt
    title: "Proposed Price Program Name"
    default_value:
    type: field_filter
    explore: provider_sales_and_contract_pricing
    field: mn_org_comb_product_group_dim.pg_name
    allow_multiple_values: false
    #required: true
    listens_to_filters:  [price_contract_name_flt, tier_idx_flt]

  - name: tier_idx_flt
    title: "Tier Index"
    default_value: 1
    type: field_filter
    explore: provider_sales_and_contract_pricing
    field: mn_pg_product_fact.tier_idx
    #allow_multiple_values: false
    #required: true
    listens_to_filters:  [pg_name_flt, price_contract_name_flt]

  - name: invoice_date_flt
    title: 'Invoice Date'
    type: date_filter
    default_value:

  - name: level4_product_name_num_flt
    title: 'Level 4 Product Name [Number]'
    type: field_filter
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_pg_prod_hrc.level4_product_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_pg_prod_hrc.level3_product_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_pg_prod_hrc.level2_product_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_pg_prod_hrc.level1_product_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_mn_product_dim.product_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_gpo_customer.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_gpo_customer.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_idn_customer.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_bill_to_customer.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_sold_to_customer.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_hip_to_customer.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_parent_wholesaler.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_wholesaler.customer_name_num
    listens_to_filters: [invoice_date_flt,
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
    title: 'Sale Contract Name'
    type: field_filter
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_contract_header_dim.contract_name
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_ctrt_type_dim.ctrt_type_name
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_ctrt_sub_type_dim.ctrt_sub_type_name
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_sale_elig_cot_dim.description
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: sl_contr_cot_dim.description
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_combined_sale_fact.sale_type
    listens_to_filters: [invoice_date_flt,
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
    explore: provider_sales_and_contract_pricing
    default_value:
    field: mn_sale_org_dim.org_display_name
    listens_to_filters: [invoice_date_flt,
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

  - name: price_table
    title: Contract/Price Comparison Report
    explore: provider_sales_and_contract_pricing
    type: table
    fields: [mn_org_contract_header_dim.contract_name, mn_org_comb_product_group_dim.pg_name,
      mn_product_prc_dim.product_name, mn_product_prc_dim.product_num, sl_mn_product_dim.sku,
      mn_pg_product_fact.tier_idx, mn_pg_product_fact.end_date, mn_pg_product_fact.product_price,
      mn_combined_sale_fact.invoice_revenue, mn_combined_sale_fact.invoice_quantity,
      mn_combined_sale_fact.avg_invoice_price, mn_combined_sale_fact.total_ir_rebate,
      mn_combined_sale_fact.total_adm_fee_rebate]
    filters:
    listen:
        currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
        price_contract_name_flt: mn_org_contract_header_dim.contract_name
        pg_name_flt: mn_org_comb_product_group_dim.pg_name
        tier_idx_flt: mn_pg_product_fact.tier_idx
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
    sorts: [mn_product_prc_dim.product_name, mn_pg_product_fact.tier_idx]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: net_price
      label: Net Price
      expression: "(${mn_combined_sale_fact.invoice_revenue} - ${mn_combined_sale_fact.total_ir_rebate}\
        \ - ${mn_combined_sale_fact.total_adm_fee_rebate})/${mn_combined_sale_fact.invoice_quantity}"
      value_format:
      value_format_name: decimal_2
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
    hidden_fields: [mn_org_contract_header_dim.contract_name, mn_org_comb_product_group_dim.pg_name]
    series_labels:
      mn_pg_product_fact.product_price: Contract Price
      mn_combined_sale_fact.avg_invoice_price: ASP (Invoice Price)
      mn_combined_sale_fact.invoice_quantity: Quantity
      mn_product_prc_dim.product_num: Product Number
      mn_product_prc_dim.product_name: Product Name
