- dashboard: c_ls_revenue_waterfall
  title: Sales Revenue Gross to Net
  layout: grid
  rows:
  - elements: [revenue_gtn]
    height: 400
  - elements: [Per_Top_10_Cust, Top_10_Cust_Revenue, Weighted_Avg_Disc]
    height: 100
  - elements: [Top10_Revenue_vs_Discount]
    height: 400
  - elements: [Cust_gross_net_chart]
    height: 400

  show_applied_filters: true
  auto_run:  true

  filters:

    - name: invoice_date_flt
      title: 'Invoice Date'
      type: date_filter
      explore: c_gross_to_net_sales
      default_value: ''
      field: mn_combined_sale_fact.invoice_date
      listens_to_filters: []

    - name: level4_product_name_num_flt
      title: 'Level 4 Product Name [Number]'
      type: field_filter
      explore: c_gross_to_net_sales
      default_value: Cardiac Rhythm Mgmt [CRMGMT]
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
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
      explore: c_gross_to_net_sales
      default_value: Direct
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
      explore: c_gross_to_net_sales
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
    explore: c_gross_to_net_sales
    type: looker_column
    fields: [mn_gross_to_net_label.kpi_name, mn_gross_to_net_label.kpi_num, mn_combined_sale_fact.list_revenue,
      mn_combined_sale_fact.oninvoice_total_rebate, mn_combined_sale_fact.invoice_revenue,
      mn_combined_sale_fact.total_ir_rebate, mn_combined_sale_fact.total_ffs_rebate,
      mn_combined_sale_fact.total_dist_srv_fee_rebate, mn_combined_sale_fact.total_bsr_rebate,
      mn_combined_sale_fact.total_adm_fee_rebate, mn_combined_sale_fact.total_other_rebate,
      mn_combined_sale_fact.net_revenue, mn_combined_sale_fact.cogs_revenue, mn_combined_sale_fact.net_profit]
    filters:
    listen:
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
      offset: 'transparent '
      rebates_and_discounts: red
      revenue: darkgreen
    colors: ['palette: Santa Cruz']
    x_axis_reversed: false

  - name: Cust_gross_net_chart
    title: Customer Gross to Net Chart
    model: c_ls_provider_int_solutions_model
    explore: c_gross_to_net_sales
    type: table
    fields: [sl_sold_to_customer.customer_name_num, mn_combined_sale_fact.list_revenue,
      mn_combined_sale_fact.oninvoice_total_rebate, mn_combined_sale_fact.invoice_revenue,
      mn_combined_sale_fact.total_ir_rebate, mn_combined_sale_fact.total_ffs_rebate,
      mn_combined_sale_fact.total_dist_srv_fee_rebate, mn_combined_sale_fact.total_bsr_rebate,
      mn_combined_sale_fact.total_adm_fee_rebate, mn_combined_sale_fact.total_other_rebate,
      mn_combined_sale_fact.net_revenue, mn_combined_sale_fact.cogs_revenue, mn_combined_sale_fact.net_profit]
    filters:
    listen:
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
    sorts: [mn_combined_sale_fact.list_revenue desc]
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
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    series_types: {}
    show_dropoff: false
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: offset,
            name: Offset, __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
            __LINE_NUM: 724}, {id: revenue, name: Revenue, __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
            __LINE_NUM: 725}, {id: rebates_and_discounts, name: Rebates and Discounts,
            __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 725}],
        __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 722}]
    hidden_fields:
    series_colors:
      offset: 'transparent '
      rebates_and_discounts: red
      revenue: lightgreen
    colors: ['palette: Looker Classic']
    x_axis_reversed: false

  - name: Top10_Revenue_vs_Discount
    title: Top 10 Revenue Customers vs Discount
    model: c_ls_provider_int_solutions_model
    explore: c_gross_to_net_sales
    type: looker_scatter
    fields: [sl_sold_to_customer.customer_name_num, mn_combined_sale_fact.list_revenue,
      mn_combined_sale_fact.oninvoice_total_rebate, mn_combined_sale_fact.oninvoice_percent_rebate,
      mn_combined_sale_fact.total_rbt_disc_percent_rebate, mn_combined_sale_fact.invoice_revenue]
    filters:
    listen:
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
    sorts: [mn_combined_sale_fact.invoice_revenue desc]
    limit: 10
    column_limit: 50
    total: true
    stacking: ''
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
    show_null_points: true
    point_style: circle
    value_labels: labels
    label_type: labVal
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      mn_combined_sale_fact.oninvoice_total_rebate: column
      mn_combined_sale_fact.invoice_revenue: column
      mn_combined_sale_fact.total_rbt_disc_percent_rebate: line
    show_dropoff: false
    hide_legend: false
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: mn_combined_sale_fact.invoice_revenue,
            name: Invoice Revenue, __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
            __LINE_NUM: 918}], __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
        __LINE_NUM: 916}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: mn_combined_sale_fact.total_rbt_disc_percent_rebate, name: Total
              Rebates and Discount Percent (On and Off Invoice)}, {id: mn_combined_sale_fact.oninvoice_percent_rebate,
            name: On-Invoice Discount Percent}]}]
    hidden_fields: [mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate]
    series_colors:
      mn_combined_sale_fact.oninvoice_percent_rebate: "#ea4f25"
      mn_combined_sale_fact.invoice_revenue: "#336699"
      mn_combined_sale_fact.total_rbt_disc_percent_rebate: "#d58826"
    colors: ["#a6cee3", "#1f78b4", "#b2df8a", "#33a02c", "#fb9a99", "#e31a1c", "#fdbf6f",
      "#ff7f00", "#cab2d6", "#6a3d9a", "#edbc0e", "#b15928", "#336699", "#D67C0A"]
    x_axis_reversed: false
    label_color: []
    y_axis_reversed: false

  - name: Per_Top_10_Cust
    title: Top 10 Customer % of Revenue
    model: c_ls_provider_int_solutions_model
    explore: c_gross_to_net_sales
    type: single_value
    fields: [sl_sold_to_customer.customer_name_num, mn_combined_sale_fact.oninvoice_percent_rebate,
      mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate,
      mn_combined_sale_fact.invoice_revenue]
    filters:
    listen:
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
    sorts: [mn_combined_sale_fact.list_revenue desc]
    limit: 10
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: max
      label: Max %
      expression: max(${of_total})
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: of_total_gross_revenue
      label: "% of Total Gross Revenue"
      expression: "${mn_combined_sale_fact.list_revenue}/${mn_combined_sale_fact.list_revenue:total}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: rolling_percent_total
      label: Rolling Percent Total
      expression: running_total(${mn_combined_sale_fact.list_revenue})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: of_total
      label: "% of Total"
      expression: "${rolling_percent_total}/${mn_combined_sale_fact.list_revenue:total}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    show_null_points: true
    point_style: circle
    value_labels: labels
    label_type: labVal
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_dropoff: false
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: mn_combined_sale_fact.oninvoice_percent_rebate,
            name: On-Invoice Discount Percent, __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
            __LINE_NUM: 915}], __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
        __LINE_NUM: 913}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: mn_combined_sale_fact.invoice_revenue, name: Invoice Revenue,
            __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 921}],
        __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 918}]
    hidden_fields: [mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate,
      of_total_gross_revenue, mn_combined_sale_fact.oninvoice_percent_rebate, mn_combined_sale_fact.invoice_revenue]
    series_colors:
      mn_combined_sale_fact.oninvoice_percent_rebate: "#D67C0A"
      mn_combined_sale_fact.invoice_revenue: "#336699"
    colors: ["#a6cee3", "#1f78b4", "#b2df8a", "#33a02c", "#fb9a99", "#e31a1c", "#fdbf6f",
      "#ff7f00", "#cab2d6", "#6a3d9a", "#edbc0e", "#b15928", "#336699", "#D67C0A"]
    x_axis_reversed: false
    label_color: []

  - name: Top_10_Cust_Revenue
    title: Top 10 Customer Revenue Total
    model: c_ls_provider_int_solutions_model
    explore: c_gross_to_net_sales
    type: single_value
    fields: [sl_sold_to_customer.customer_name_num, mn_combined_sale_fact.oninvoice_percent_rebate,
      mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate,
      mn_combined_sale_fact.invoice_revenue]
    filters:
    listen:
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
    sorts: [mn_combined_sale_fact.list_revenue desc]
    limit: 10
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: max
      label: Max %
      expression: max(${rolling_percent_total})
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: of_total_gross_revenue
      label: "% of Total Gross Revenue"
      expression: "${mn_combined_sale_fact.list_revenue}/${mn_combined_sale_fact.list_revenue:total}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: rolling_percent_total
      label: Rolling Percent Total
      expression: running_total(${mn_combined_sale_fact.list_revenue})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: of_total
      label: "% of Total"
      expression: "${rolling_percent_total}/${mn_combined_sale_fact.list_revenue:total}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    show_null_points: true
    point_style: circle
    value_labels: labels
    label_type: labVal
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_dropoff: false
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: mn_combined_sale_fact.oninvoice_percent_rebate,
            name: On-Invoice Discount Percent, __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
            __LINE_NUM: 915}], __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
        __LINE_NUM: 913}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: mn_combined_sale_fact.invoice_revenue, name: Invoice Revenue,
            __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 921}],
        __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 918}]
    hidden_fields: [mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate,
      of_total_gross_revenue, mn_combined_sale_fact.oninvoice_percent_rebate, mn_combined_sale_fact.invoice_revenue]
    series_colors:
      mn_combined_sale_fact.oninvoice_percent_rebate: "#D67C0A"
      mn_combined_sale_fact.invoice_revenue: "#336699"
    colors: ["#a6cee3", "#1f78b4", "#b2df8a", "#33a02c", "#fb9a99", "#e31a1c", "#fdbf6f",
      "#ff7f00", "#cab2d6", "#6a3d9a", "#edbc0e", "#b15928", "#336699", "#D67C0A"]
    x_axis_reversed: false
    label_color: []

  - name: Weighted_Avg_Disc
    title: Top 10 Weighted Avg Discount
    model: c_ls_provider_int_solutions_model
    explore: c_gross_to_net_sales
    type: single_value
    fields: [sl_sold_to_customer.customer_name_num, mn_combined_sale_fact.oninvoice_percent_rebate,
      mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate,
      mn_combined_sale_fact.invoice_revenue]
    filters:
    listen:
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
    sorts: [mn_combined_sale_fact.list_revenue desc]
    limit: 10
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: max
      label: Max %
      expression: max(${rolling_discount_total})/max(${rolling_revenue_total})
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: rolling_revenue_total
      label: Rolling Revenue Total
      expression: running_total(${mn_combined_sale_fact.list_revenue})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: rolling_discount_total
      label: Rolling Discount  Total
      expression: running_total(${mn_combined_sale_fact.oninvoice_total_rebate})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    show_null_points: true
    point_style: circle
    value_labels: labels
    label_type: labVal
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_dropoff: false
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: mn_combined_sale_fact.oninvoice_percent_rebate,
            name: On-Invoice Discount Percent, __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
            __LINE_NUM: 915}], __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml,
        __LINE_NUM: 913}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: mn_combined_sale_fact.invoice_revenue, name: Invoice Revenue,
            __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 921}],
        __FILE: ls_winter17m/c_ls_revenue_waterfall.dashboard.lookml, __LINE_NUM: 918}]
    hidden_fields: [mn_combined_sale_fact.list_revenue, mn_combined_sale_fact.oninvoice_total_rebate,
      of_total_gross_revenue, mn_combined_sale_fact.oninvoice_percent_rebate, mn_combined_sale_fact.invoice_revenue]
    series_colors:
      mn_combined_sale_fact.oninvoice_percent_rebate: "#D67C0A"
      mn_combined_sale_fact.invoice_revenue: "#336699"
    colors: ["#a6cee3", "#1f78b4", "#b2df8a", "#33a02c", "#fb9a99", "#e31a1c", "#fdbf6f",
      "#ff7f00", "#cab2d6", "#6a3d9a", "#edbc0e", "#b15928", "#336699", "#D67C0A"]
    x_axis_reversed: false
    label_color: []

