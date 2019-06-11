- dashboard: ls_provider_int_app_gross_to_net
  title: Customer Gross To Net
  layout: grid
  rows:
  - elements: [revenue_gtn]
    height: 400
  - elements: [price_gtn]
    height: 400
  show_applied_filters: true
  auto_run:  false

  filters:


    - name: currency_mode_flt
      title: 'Base/Local Currency Mode'
      type: field_filter
      explore: gross_to_net_sales
      default_value: 'Local'
      allow_multiple_values: false
      required: true
      field: mn_combined_sale_fact.base_local_curr_selection

    - name: invoice_date_flt
      title: 'Invoice Date'
      type: date_filter
      default_value: ''

    - name: level4_product_name_num_flt
      title: 'Level 4 Product Name [Number]'
      type: field_filter
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      title: 'Contract Name'
      type: field_filter
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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
      explore: gross_to_net_sales
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

  - name: revenue_gtn
    title: Revenue Gross To Net
    explore: gross_to_net_sales
    type: looker_column
    fields: [mn_gross_to_net_label.kpi_name, mn_gross_to_net_label.kpi_num, mn_combined_sale_fact.list_revenue,
      mn_combined_sale_fact.oninvoice_total_rebate, mn_combined_sale_fact.invoice_revenue,
      mn_combined_sale_fact.total_ir_rebate, mn_combined_sale_fact.total_ffs_rebate,
      mn_combined_sale_fact.total_dist_srv_fee_rebate, mn_combined_sale_fact.total_bsr_rebate,
      mn_combined_sale_fact.total_adm_fee_rebate, mn_combined_sale_fact.total_other_rebate,
      mn_combined_sale_fact.net_revenue, mn_combined_sale_fact.cogs_revenue, mn_combined_sale_fact.net_profit]
    filters:
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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
    sorts: [mn_gross_to_net_label.kpi_num]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: offset
      label: Offset
      expression: "if(${mn_gross_to_net_label.kpi_num} =1, 0 , \n  if(${mn_gross_to_net_label.kpi_num}\
        \ =2, ${mn_combined_sale_fact.list_revenue} - ${mn_combined_sale_fact.oninvoice_total_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =3, 0,\n  if(${mn_gross_to_net_label.kpi_num}\
        \ =4, ${mn_combined_sale_fact.invoice_revenue} - ${mn_combined_sale_fact.total_ir_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =5, ${mn_combined_sale_fact.invoice_revenue}\
        \ - ${mn_combined_sale_fact.total_ir_rebate} - ${mn_combined_sale_fact.total_ffs_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =6, ${mn_combined_sale_fact.invoice_revenue}\
        \ - ${mn_combined_sale_fact.total_ir_rebate} - ${mn_combined_sale_fact.total_ffs_rebate}\
        \ - \n    ${mn_combined_sale_fact.total_dist_srv_fee_rebate},\n  if(${mn_gross_to_net_label.kpi_num}\
        \ =7, ${mn_combined_sale_fact.invoice_revenue} - ${mn_combined_sale_fact.total_ir_rebate}\
        \ - ${mn_combined_sale_fact.total_ffs_rebate} - \n    ${mn_combined_sale_fact.total_dist_srv_fee_rebate}\
        \ - \n    ${mn_combined_sale_fact.total_bsr_rebate},\n  if(${mn_gross_to_net_label.kpi_num}\
        \ =8, ${mn_combined_sale_fact.invoice_revenue} - ${mn_combined_sale_fact.total_ir_rebate}\
        \ - ${mn_combined_sale_fact.total_ffs_rebate} - \n    ${mn_combined_sale_fact.total_dist_srv_fee_rebate}\
        \ - \n    ${mn_combined_sale_fact.total_bsr_rebate} - \n    ${mn_combined_sale_fact.total_adm_fee_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =9, ${mn_combined_sale_fact.invoice_revenue}\
        \ - ${mn_combined_sale_fact.total_ir_rebate} - ${mn_combined_sale_fact.total_ffs_rebate}\
        \ - \n    ${mn_combined_sale_fact.total_dist_srv_fee_rebate} - \n    ${mn_combined_sale_fact.total_bsr_rebate}\
        \ - \n    ${mn_combined_sale_fact.total_adm_fee_rebate} - \n    ${mn_combined_sale_fact.total_other_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =10,  0,\n  if(${mn_gross_to_net_label.kpi_num}\
        \ = 11, ${mn_combined_sale_fact.net_revenue} - ${mn_combined_sale_fact.cogs_revenue},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =12, 0, null\n  )\n  )\n  )\n  )\n  )\n\
        \  )\n  )\n  )\n  )\n  )\n  )\n)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: kpi
      label: KPI
      expression: "if(${mn_gross_to_net_label.kpi_num} =1, ${mn_combined_sale_fact.list_revenue}\
        \ , \n  if(${mn_gross_to_net_label.kpi_num} =2, ${mn_combined_sale_fact.oninvoice_total_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =3, ${mn_combined_sale_fact.invoice_revenue},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =4, ${mn_combined_sale_fact.total_ir_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =5, ${mn_combined_sale_fact.total_ffs_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =6, ${mn_combined_sale_fact.total_dist_srv_fee_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =7, ${mn_combined_sale_fact.total_bsr_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =8, ${mn_combined_sale_fact.total_adm_fee_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =9, ${mn_combined_sale_fact.total_other_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =10, ${mn_combined_sale_fact.net_revenue},\n\
        \  if(${mn_gross_to_net_label.kpi_num} = 11, ${mn_combined_sale_fact.cogs_revenue},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =12, ${mn_combined_sale_fact.net_profit},\
        \ null\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue
      label: Revenue
      expression: "if(${mn_gross_to_net_label.kpi_num} =1, ${mn_combined_sale_fact.list_revenue}\
        \ , \n  if(${mn_gross_to_net_label.kpi_num} =3, ${mn_combined_sale_fact.invoice_revenue},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =10, ${mn_combined_sale_fact.net_revenue},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =12, ${mn_combined_sale_fact.net_profit},\
        \ 0\n  )\n  )\n  )\n)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: rebates_and_discounts
      label: Rebates and Discounts
      expression: |-
        if(${mn_gross_to_net_label.kpi_num} =2, ${mn_combined_sale_fact.oninvoice_total_rebate},
          if(${mn_gross_to_net_label.kpi_num} =4, ${mn_combined_sale_fact.total_ir_rebate},
          if(${mn_gross_to_net_label.kpi_num} =5, ${mn_combined_sale_fact.total_ffs_rebate},
          if(${mn_gross_to_net_label.kpi_num} =6, ${mn_combined_sale_fact.total_dist_srv_fee_rebate},
          if(${mn_gross_to_net_label.kpi_num} =7, ${mn_combined_sale_fact.total_bsr_rebate},
          if(${mn_gross_to_net_label.kpi_num} =8, ${mn_combined_sale_fact.total_adm_fee_rebate},
          if(${mn_gross_to_net_label.kpi_num} =9, ${mn_combined_sale_fact.total_other_rebate},
          if(${mn_gross_to_net_label.kpi_num} = 11, ${mn_combined_sale_fact.cogs_revenue},
          0
          )
          )
          )
          )
          )
          )
          )
        )
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    series_types: {}
    show_dropoff: false
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: offset,
            name: Offset}, {id: revenue, name: Revenue}, {id: rebates_and_discounts,
            name: Rebates and Discounts}]}]
    hidden_fields: [mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate,
      mn_combined_sale_fact.invoice_revenue, mn_combined_sale_fact.total_ir_rebate,
      mn_combined_sale_fact.total_ffs_rebate, mn_combined_sale_fact.total_dist_srv_fee_rebate,
      mn_combined_sale_fact.total_bsr_rebate, mn_combined_sale_fact.total_adm_fee_rebate,
      mn_combined_sale_fact.total_other_rebate, mn_combined_sale_fact.net_revenue, mn_combined_sale_fact.cogs_revenue,
      mn_combined_sale_fact.net_profit, mn_gross_to_net_label.kpi_num, kpi]
    series_colors:
      offset: 'transparent'
      rebates_and_discounts: red
      revenue: lightgreen
    colors: ['palette: Looker Classic']
    x_axis_reversed: false


  - name: price_gtn
    title: Price Gross To Net
    explore: gross_to_net_sales
    type: looker_column
    fields: [mn_gross_to_net_label.kpi_num, mn_combined_sale_fact.avg_list_price, mn_combined_sale_fact.oninvoice_unit_rebate,
      mn_combined_sale_fact.avg_invoice_price, mn_combined_sale_fact.ir_unit_rebate,
      mn_combined_sale_fact.ffs_unit_rebate, mn_combined_sale_fact.dist_srv_fee_unit_rebate,
      mn_combined_sale_fact.bsr_unit_rebate, mn_combined_sale_fact.adm_fee_unit_rebate,
      mn_combined_sale_fact.other_unit_rebate, mn_combined_sale_fact.avg_net_price,
      mn_combined_sale_fact.cogs_per_unit, mn_combined_sale_fact.net_profit_unit, mn_gross_to_net_label.price_kpi_name]
    filters:
    listen:
      currency_mode_flt: mn_combined_sale_fact.base_local_curr_selection
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
    sorts: [mn_gross_to_net_label.kpi_num]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: offset
      label: Offset
      expression: "if(${mn_gross_to_net_label.kpi_num} =1, 0 , \n  if(${mn_gross_to_net_label.kpi_num}\
        \ =2, ${mn_combined_sale_fact.avg_list_price} - ${mn_combined_sale_fact.oninvoice_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =3, 0,\n  if(${mn_gross_to_net_label.kpi_num}\
        \ =4, ${mn_combined_sale_fact.avg_invoice_price} - ${mn_combined_sale_fact.ir_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =5, ${mn_combined_sale_fact.avg_invoice_price}\
        \ - ${mn_combined_sale_fact.ir_unit_rebate} - ${mn_combined_sale_fact.ffs_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =6, ${mn_combined_sale_fact.avg_invoice_price}\
        \ - ${mn_combined_sale_fact.ir_unit_rebate} - ${mn_combined_sale_fact.ffs_unit_rebate}\
        \ - \n    ${mn_combined_sale_fact.dist_srv_fee_unit_rebate},\n  if(${mn_gross_to_net_label.kpi_num}\
        \ =7, ${mn_combined_sale_fact.avg_invoice_price} - ${mn_combined_sale_fact.ir_unit_rebate}\
        \ - ${mn_combined_sale_fact.ffs_unit_rebate} - \n    ${mn_combined_sale_fact.dist_srv_fee_unit_rebate}\
        \ - \n    ${mn_combined_sale_fact.bsr_unit_rebate},\n  if(${mn_gross_to_net_label.kpi_num}\
        \ =8, ${mn_combined_sale_fact.avg_invoice_price} - ${mn_combined_sale_fact.ir_unit_rebate}\
        \ - ${mn_combined_sale_fact.ffs_unit_rebate} - \n    ${mn_combined_sale_fact.dist_srv_fee_unit_rebate}\
        \ - \n    ${mn_combined_sale_fact.bsr_unit_rebate} - \n    ${mn_combined_sale_fact.adm_fee_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =9, ${mn_combined_sale_fact.avg_invoice_price}\
        \ - ${mn_combined_sale_fact.ir_unit_rebate} - ${mn_combined_sale_fact.ffs_unit_rebate}\
        \ - \n    ${mn_combined_sale_fact.dist_srv_fee_unit_rebate} - \n    ${mn_combined_sale_fact.bsr_unit_rebate}\
        \ - \n    ${mn_combined_sale_fact.adm_fee_unit_rebate} - \n    ${mn_combined_sale_fact.other_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =10,  0,\n  if(${mn_gross_to_net_label.kpi_num}\
        \ = 11, ${mn_combined_sale_fact.avg_net_price} - ${mn_combined_sale_fact.cogs_per_unit},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =12, 0, null\n  )\n  )\n  )\n  )\n  )\n\
        \  )\n  )\n  )\n  )\n  )\n  )\n)"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: kpi
      label: KPI
      expression: "if(${mn_gross_to_net_label.kpi_num} =1, ${mn_combined_sale_fact.avg_list_price}\
        \ , \n  if(${mn_gross_to_net_label.kpi_num} =2, ${mn_combined_sale_fact.oninvoice_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =3, ${mn_combined_sale_fact.avg_invoice_price},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =4, ${mn_combined_sale_fact.ir_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =5, ${mn_combined_sale_fact.ffs_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =6, ${mn_combined_sale_fact.dist_srv_fee_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =7, ${mn_combined_sale_fact.bsr_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =8, ${mn_combined_sale_fact.adm_fee_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =9, ${mn_combined_sale_fact.other_unit_rebate},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =10, ${mn_combined_sale_fact.avg_net_price},\n\
        \  if(${mn_gross_to_net_label.kpi_num} = 11, ${mn_combined_sale_fact.cogs_per_unit},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =12, ${mn_combined_sale_fact.net_profit_unit},\
        \ null\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n  )\n)"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: price
      label: Price
      expression: "if(${mn_gross_to_net_label.kpi_num} =1, ${mn_combined_sale_fact.avg_list_price}\
        \ , \n  if(${mn_gross_to_net_label.kpi_num} =3, ${mn_combined_sale_fact.avg_invoice_price},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =10, ${mn_combined_sale_fact.avg_net_price},\n\
        \  if(${mn_gross_to_net_label.kpi_num} =12, ${mn_combined_sale_fact.net_profit_unit},\
        \ 0\n  )\n  )\n  )\n)"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: rebates_and_discounts
      label: Rebates and Discounts
      expression: |-
        if(${mn_gross_to_net_label.kpi_num} =2, ${mn_combined_sale_fact.oninvoice_unit_rebate},
          if(${mn_gross_to_net_label.kpi_num} =4, ${mn_combined_sale_fact.ir_unit_rebate},
          if(${mn_gross_to_net_label.kpi_num} =5, ${mn_combined_sale_fact.ffs_unit_rebate},
          if(${mn_gross_to_net_label.kpi_num} =6, ${mn_combined_sale_fact.dist_srv_fee_unit_rebate},
          if(${mn_gross_to_net_label.kpi_num} =7, ${mn_combined_sale_fact.bsr_unit_rebate},
          if(${mn_gross_to_net_label.kpi_num} =8, ${mn_combined_sale_fact.adm_fee_unit_rebate},
          if(${mn_gross_to_net_label.kpi_num} =9, ${mn_combined_sale_fact.other_unit_rebate},
          if(${mn_gross_to_net_label.kpi_num} = 11, ${mn_combined_sale_fact.cogs_per_unit},
          0
          )
          )
          )
          )
          )
          )
          )
        )
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    show_dropoff: false
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: offset,
            name: Offset}, {id: price, name: Price}, {id: rebates_and_discounts, name: Rebates
              and Discounts}]}]
    hidden_fields: [mn_gross_to_net_label.kpi_num, kpi, mn_combined_sale_fact.avg_list_price,
      mn_combined_sale_fact.oninvoice_unit_rebate, mn_combined_sale_fact.avg_invoice_price,
      mn_combined_sale_fact.ir_unit_rebate, mn_combined_sale_fact.ffs_unit_rebate, mn_combined_sale_fact.dist_srv_fee_unit_rebate,
      mn_combined_sale_fact.bsr_unit_rebate, mn_combined_sale_fact.adm_fee_unit_rebate,
      mn_combined_sale_fact.other_unit_rebate, mn_combined_sale_fact.avg_net_price,
      mn_combined_sale_fact.cogs_per_unit, mn_combined_sale_fact.net_profit_unit]
    series_colors:
      offset: 'transparent'
      rebates_and_discounts: red
      price: lightgreen
    colors: ['palette: Looker Classic']
    x_axis_reversed: false
    hidden_series: []
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
