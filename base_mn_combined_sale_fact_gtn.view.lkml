include: "base_mn_combined_sale_fact.view.lkml"

view: mn_combined_sale_fact_gtn {
  extends:[mn_combined_sale_fact]
  sql_table_name: MN_LKR_COMBINED_SALE_FACT_VW ;;


  dimension: access_user_wid {
    type: string
    sql: -1;;
  }


  dimension: dummy_id {
    type: number
    hidden: yes
    sql: 1 ;;
  }


  dimension: access_user_name {
    type: string
    sql: '';;
  }


  dimension: discount_percent {
    type: number
    hidden: yes
    label: "Discount Percent"
    sql:  {% parameter discount_percent_flt %} ;;
  }


  filter: gpo_idn_selection {
    label: "Customer Type Selection"
    default_value: "Bill-To"
    suggestions: ["Bill-To",
      "GPO",
      "IDN"]
  }

  dimension: gpo_idn_cust_selection {
    type:  string
    label: "Contract Price What If Toggle"
    sql:
          CASE
            WHEN {% condition gpo_idn_selection %} 'Bill-To' {% endcondition %} THEN ${sl_bill_to_customer.customer_name_num}
            WHEN {% condition gpo_idn_selection %} 'IDN' {% endcondition %} THEN ${sl_idn_customer.customer_name_num}
            WHEN {% condition gpo_idn_selection %} 'GPO' {% endcondition %} THEN ${sl_gpo_customer.customer_name_num}
      END ;;
  }

  filter: whatif_mode {
    label: "Customer Type Selection"
    default_value: "Contract Price"
    suggestions: ["Contract Price",
      "Base Price"]
  }

  dimension: whatif_mode_dim {
    type:  string
    label: "WhatIf Price Mode"
    sql: {% parameter whatif_mode %};;
  }

  # ***** Filters Section
  parameter: discount_percent_flt {
    type: number
    label: "Discount Percent filter"
  }

  set: gtn_set1  {
    fields: [  base_local_curr_selection,
      invoice_date, invoice_month, invoice_quarter, invoice_year, sale_type, sale_currency, line_ref_num, list_price, inv_amt,
      count, invoice_quantity,
      list_revenue, invoice_revenue, net_revenue,
      avg_list_price, avg_invoice_price, avg_net_price,
      oninvoice_total_rebate, oninvoice_unit_rebate, oninvoice_percent_rebate,
      total_rebate_sum, net_rebate_unit_rebate, net_rebate_percent,
      total_rbt_disc, total_rbt_disc_unit_rebate, total_rbt_disc_percent_rebate,
      total_ir_rebate, ir_unit_rebate, ir_rebate_percent,
      total_adm_fee_rebate, adm_fee_unit_rebate, adm_fee_rebate_percent,
      total_bsr_rebate, bsr_unit_rebate, bsr_rebate_percent ,
      total_ffs_rebate, ffs_unit_rebate, ffs_rebate_percent,
      total_dist_srv_fee_rebate, dist_srv_fee_unit_rebate, dist_srv_fee_rebate_percent,
      total_other_rebate, other_unit_rebate, other_rebate_percent,
      cogs_revenue,cogs_per_unit ,
      net_profit_unit, net_profit,net_profit_percent,
      paid_chargeback_amount, total_chargeback_amount,
      max_discount_percent, discount_percent_flt, whatif_mode_dim, whatif_mode,
      date_frame_selection, date_period, chgbk_close_date, chgbk_close_month, chgbk_close_quarter, chgbk_close_year,
      kpi_selection, growth_kpi_selection,
      gpo_idn_cust_selection, gpo_idn_selection
    ]
  }

  measure: invoice_quantity {
    label: "Sold Units"
  }

  # List KPIS
  measure: list_revenue {
    group_label: "List"
    label: "Gross Revenue"
    value_format: "#,##0"
    }

  measure: avg_list_price {
    group_label: "List"
    value_format_name: decimal_2
    label: "Average List Price"
  }

  #Invoice KPIs
  measure: invoice_revenue {
    group_label: "Invoice"
    label: "Invoice Revenue"
    type:  number
    sql: ${revenue} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
    }

  measure: avg_invoice_price {
    group_label: "Invoice"
    type:  number
    sql:  ${invoice_revenue}/NULLIF(${invoice_quantity},0) ;;
    label: "Average Invoice Price"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: oninvoice_total_rebate {
    sql:  (${list_revenue} - ${invoice_revenue} ) ;;
    group_label: "Invoice"
    type:  number
    label: "On-Invoice Total Discount"
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: oninvoice_unit_rebate {
    sql:  (${list_revenue} - ${invoice_revenue} )/NULLIF(${invoice_quantity},0) ;;
    type:  number
    group_label: "Invoice"
    label: "On-Invoice Discount Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: oninvoice_percent_rebate {
    sql:  (${list_revenue} - ${invoice_revenue} )/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Invoice"
    label: "On-Invoice Discount Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  # Net price of rebates

  measure: total_rebate_sum {
    group_label: "Rebates and Fees"
    label: "Rebates and Fees"
    type:  number
    sql: ${rebate} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: avg_net_price {
    sql:  (${invoice_revenue} - ${total_rebate_sum})/NULLIF(${invoice_quantity},0) ;;
    type:  number
    # same as sql:  ${net_price} ;;
    group_label: "Rebates and Fees"
    label: "Average Net Price"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: net_revenue {
    sql:  (${invoice_revenue} - ${total_rebate_sum}) ;;
    type:  number
    group_label: "Rebates and Fees"
    # same as sql:  ${net_price} ;;
    label: "Net Revenue"
    value_format_name: decimal_0
    drill_fields: [detail*]
    }

  measure: net_rebate_unit_rebate {
    #Same as unit_rebate
    sql:  (${total_rebate_sum} )/NULLIF(${volume},0) ;;
    group_label: "Rebates and Fees"
    type:  number
    label: "Rebate and Fees Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: net_rebate_percent {
    sql:   1 - (${list_revenue} - ${total_rebate_sum})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Rebates and Fees"
    label: "Rebates and Fees Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  # Total after On and Off Invoice

  measure: total_rbt_disc_percent_rebate {
    sql:   (${list_revenue} - ${revenue} + ${total_rebate_sum})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Total Rebate (after Rebates and Discounts)"
    label: "Total Rebates and Discount Percent (On and Off Invoice)"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  measure: total_rbt_disc_unit_rebate {
    sql:   (${list_revenue} - ${revenue} + ${total_rebate_sum})/NULLIF(${volume},0) ;;
    type:  number
    group_label: "Total Rebate (after Rebates and Discounts)"
    label: "Total Rebates and Discount Per Unit (On and Off Invoice)"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: total_rbt_disc  {
    sql:   (${list_revenue} - ${revenue} + ${total_rebate_sum}) ;;
    type:  number
    group_label: "Total Rebate (after Rebates and Discounts)"
    label: "Total Rebates and Discount (On and Off Invoice)"
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

 # Rebates by type
 # IR
  measure: total_ir_rebate {
    group_label: "Rebates and Fees: Incentive Rebates"
    label: "Incentive Rebates"
    type:  sum
    sql: ${ir_rbt_amt} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
    }

  measure: ir_unit_rebate {
    #Same as unit_rebate
    group_label: "Rebates and Fees: Incentive Rebates"
    sql:  (${total_ir_rebate} )/NULLIF(${volume},0) ;;
    type:  number
    label: "Incentive Rebate Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: ir_rebate_percent {
    sql:   1 - (${list_revenue} - ${total_ir_rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Rebates and Fees: Incentive Rebates"
    label: "Incentive Rebate Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

 # adm_fee_amt
  measure: total_adm_fee_rebate {
    group_label: "Rebates and Fees: Admin Fees"
    label: "Admin Fees"
    type:  sum
    sql: ${adm_fee_amt} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
    }

  measure: adm_fee_unit_rebate {
    #Same as unit_rebate
    sql:  (${total_adm_fee_rebate} )/NULLIF(${volume},0) ;;
    type:  number
    group_label: "Rebates and Fees: Admin Fees"
    label: "Admin Fees Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: adm_fee_rebate_percent {
    sql:   1 - (${list_revenue} - ${total_adm_fee_rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Rebates and Fees: Admin Fees"
    label: "Admin Fees Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

 # basic_rbt_amt
  measure: total_bsr_rebate {
    type:  sum
    group_label: "Rebates and Fees: Basic Rebates"
    label: "Basic Rebates"
    sql: ${basic_rbt_amt} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
    }

  measure: bsr_unit_rebate {
    #Same as unit_rebate
    sql:  (${total_bsr_rebate} )/NULLIF(${volume},0) ;;
    group_label: "Rebates and Fees: Basic Rebates"
    type:  number
    label: "Basic Rebates Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: bsr_rebate_percent {
    sql:   1 - (${list_revenue} - ${total_bsr_rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Rebates and Fees: Basic Rebates"
    label: "Basic Rebates Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }
 #dist_srv_fee_amt

  measure: total_dist_srv_fee_rebate {
    label: "Distributor Service Fee"
    group_label: "Rebates and Fees: Distributor Service Fee"
    type:  sum
    sql: ${dist_srv_fee_amt} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: dist_srv_fee_unit_rebate {
    #Same as unit_rebate
    sql:  (${total_dist_srv_fee_rebate} )/NULLIF(${volume},0) ;;
    group_label: "Rebates and Fees: Distributor Service Fee"
    type:  number
    label: "Distributor Service Fee Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: dist_srv_fee_rebate_percent {
    sql:   1 - (${list_revenue} - ${total_dist_srv_fee_rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Rebates and Fees: Distributor Service Fee"
    label: "Distributor Service Fee Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

 # fee_for_srvs_amt
  measure: total_ffs_rebate {
    label: "Fee for Service"
    group_label: "Rebates and Fees: Fee for Service"
    type:  sum
    sql: ${fee_for_srvs_amt} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
    }

  measure: ffs_unit_rebate {
    #Same as unit_rebate
    sql:  (${total_ffs_rebate} )/NULLIF(${volume},0) ;;
    group_label: "Rebates and Fees: Fee for Service"
    type:  number
    label: "Fee for Service Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: ffs_rebate_percent {
    sql:   1 - (${list_revenue} - ${total_ffs_rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Rebates and Fees: Fee for Service"
    label: "Fee for Service Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

# fee_for_srvs_amt
  measure: total_other_rebate {
    label: "Other Rebates"
    group_label: "Rebates and Fees: Others"
    type:  sum
    sql: ( ${total_rebate} - ${fee_for_srvs_amt} - ${basic_rbt_amt} - ${adm_fee_amt} - ${ir_rbt_amt} - ${dist_srv_fee_amt} );;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: other_unit_rebate {
    #Same as unit_rebate
    sql:  (${total_other_rebate} )/NULLIF(${volume},0) ;;
    group_label: "Rebates and Fees: Others"
    type:  number
    label: "Other Rebates Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: other_rebate_percent {
    sql:   1 - (${list_revenue} - ${total_other_rebate})/NULLIF(${list_revenue},0) ;;
    type:  number
    group_label: "Rebates and Fees: Others"
    label: "Other Rebates Percent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  #
  measure: cogs_revenue {
    sql:  (${sl_mn_product_dim.cogs} * ${inv_qty}) ;;
    type:  sum
    group_label: "Cost Of Goods"
    label: "Total Cost Of Goods"
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: cogs_per_unit {
    sql:  ${cogs_revenue}/NULLIF(${volume},0)  ;;
    type:  number
    group_label: "Cost Of Goods"
    label: "Cost Of Goods Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }


  #
  measure: net_profit_unit {
    sql:  (${invoice_revenue} - ${total_rebate_sum} - ${cogs_revenue})/NULLIF(${invoice_quantity},0) ;;
    type:  number
    # same as sql:  ${net_price} ;;
    group_label: "Net Profit"
    label: "Net Profit Per Unit"
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: net_profit {
    sql:  (${invoice_revenue} - ${total_rebate_sum}- ${cogs_revenue}) ;;
    type:  number
    # same as sql:  ${net_price} ;;
    group_label: "Net Profit"
    label: "Net Profit"
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: net_profit_percent {
    sql: 1- (${list_revenue} - ${invoice_revenue} + ${total_rebate_sum} + ${cogs_revenue})/(NULLIF(${list_revenue},0) ) ;;
    type:  number
    # same as sql:  ${net_price} ;;
    group_label: "Net Profit"
    label: "Net Profit Perent"
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  filter: kpi_selection {
    label: "Comparison KPI Selection"
    default_value: "Gross Revenue"
    suggestions: ["Gross Revenue",
      "Net Revenue",
      "Total Discount",
      "Invoice Revenue",
      "Rebates and Fees (Total)",
      "Net Profit",
      "Net Profit(%)",
      "Net Profit (per unit)",
      "All Units",
      "Invoice Price",
      "List Price",
      "Net Price"]
  }

    measure: growth_kpi_selection {
      type:  number
      label: "Growth KPI"
      value_format_name: decimal_2
      sql:
          CASE
            WHEN {% condition kpi_selection %} 'Gross Revenue' {% endcondition %} THEN ${list_revenue}
            WHEN {% condition kpi_selection %} 'Total Discount' {% endcondition %} THEN ${oninvoice_total_rebate}
            WHEN {% condition kpi_selection %} 'Invoice Revenue' {% endcondition %} THEN ${invoice_revenue}
            WHEN {% condition kpi_selection %} 'Rebates and Fees (Total)' {% endcondition %} THEN ${total_rebate_sum}
            WHEN {% condition kpi_selection %} 'Net Revenue' {% endcondition %} THEN ${net_revenue}
            WHEN {% condition kpi_selection %} 'List Price' {% endcondition %} THEN ${avg_list_price}
            WHEN {% condition kpi_selection %} 'Invoice Price' {% endcondition %} THEN ${avg_invoice_price}
            WHEN {% condition kpi_selection %} 'Net Price' {% endcondition %} THEN ${avg_net_price}
            WHEN {% condition kpi_selection %} 'Net Profit (per unit)' {% endcondition %} THEN ${net_profit_unit}
            WHEN {% condition kpi_selection %} 'Net Profit' {% endcondition %} THEN ${net_profit}
            WHEN {% condition kpi_selection %} 'Net Profit(%)' {% endcondition %} THEN ${net_profit_percent}*100
            WHEN {% condition kpi_selection %} 'All Units' {% endcondition %} THEN ${invoice_quantity}
      END ;;
    }






# ***** Measures
  measure: max_discount_percent{
    type: max
    label: "Discount Percent"
    value_format_name: decimal_2
    sql:  ${discount_percent}  ;;
  }


}
