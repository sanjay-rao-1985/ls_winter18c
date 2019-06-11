include: "base_mn_customer_ids_dim.view.lkml"

view: mn_customer_ids_dim_ext {
  extends: [mn_customer_ids_dim]

  #*************************Master Data Customers Aliasing
  dimension: md_id_num {
    type: string
    sql: ${id_num} ;;
    label: "Number"
  }

  dimension: md_id_type {
    type: string
    sql: ${id_type} ;;
    label: "Type"
  }

  dimension: md_primary_flag {
    type: string
    label: "Is Primary ?"
    sql: CASE WHEN ${primary_flag} = 'Y' THEN 'Yes'
              WHEN ${primary_flag} = 'N' THEN 'No' ELSE NULL END;;
  }

  measure: md_customer_ids_count {
    type: count
    label: "Count"
    drill_fields: []
  }

#   Transaction Explore Customer Identifiers Start

    # ****** Direct Sales group attributes start
  dimension: dir_id_340_num {
    type: string
    view_label: "Direct Sales"
    label: "Customer 340b Grant Code"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: dir_id_dea_num {
    type: string
    view_label: "Direct Sales"
    label: "Customer Primary DEA Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: dir_id_gln_num {
    type: string
    view_label: "Direct Sales"
    label: "Customer Primary GLN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: dir_id_hin_num {
    type: string
    view_label: "Direct Sales"
    label: "Customer Primary HIN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${id_num} ELSE NULL END ;;
  }

  # ****** Direct Sales group attributes end

  # ****** Indirect Sales group attributes start
  dimension: indir_id_340_num {
    type: string
    view_label: "Indirect Sales"
    label: "Customer 340b Grant Code"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: indir_id_dea_num {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Primary DEA Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: indir_id_gln_num {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Primary GLN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: indir_id_hin_num {
    type: string
    view_label: "Indirect Sales"
    label: "Customer Primary HIN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  # ****** Indirect Sales group attributes end

  # ****** Chargebacks group attributes start
  dimension: chb_id_340_num {
    type: string
    view_label: "Chargebacks"
    label: "Customer 340b Grant Code"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: chb_id_dea_num {
    type: string
    view_label: "Chargebacks"
    label: "Customer Primary DEA Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: chb_id_gln_num {
    type: string
    view_label: "Chargebacks"
    label: "Customer Primary GLN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: chb_id_hin_num {
    type: string
    view_label: "Chargebacks"
    label: "Customer Primary HIN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${id_num} ELSE NULL END ;;
  }

  # ****** chargebacks group attributes end

  # ****** Rebates group attributes start
  dimension: rbt_id_340_num {
    type: string
    view_label: "Rebates"
    label: "Customer 340b Grant Code"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: rbt_id_dea_num {
    type: string
    view_label: "Rebates"
    label: "Customer Primary DEA Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: rbt_id_gln_num {
    type: string
    view_label: "Rebates"
    label: "Customer Primary GLN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: rbt_id_hin_num {
    type: string
    view_label: "Rebates"
    label: "Customer Primary HIN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  # ****** Rebates group attributes end

  # ****** Projected Rebates group attributes start
  dimension: pr_id_340_num {
    type: string
    view_label: "Projected Rebates"
    label: "Customer 340b Grant Code"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: pr_id_dea_num {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Primary DEA Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: pr_id_gln_num {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Primary GLN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: pr_id_hin_num {
    type: string
    view_label: "Projected Rebates"
    label: "Customer Primary HIN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${id_num} ELSE NULL END ;;
  }

  # ****** Projected Rebates group attributes end

  # ****** Custom Sales group attributes start
  dimension: custom_id_340_num {
    type: string
    view_label: "Custom Sales"
    label: "Customer 340b Grant Code"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: custom_id_dea_num {
    type: string
    view_label: "Custom Sales"
    label: "Customer Primary DEA Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: custom_id_gln_num {
    type: string
    view_label: "Custom Sales"
    label: "Customer Primary GLN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${id_num} ELSE NULL END ;;
  }

  dimension: custom_id_hin_num {
    type: string
    view_label: "Custom Sales"
    label: "Customer Primary HIN Number"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${id_num} ELSE NULL END ;;
  }

  # ****** Custom Sales group attributes end



  # ****** MCO Utilizations group attributes start

 dimension: mco_id_340_num {
    type: string
    view_label: "MCO Utilization"
    label: "Customer 340b Grant Code"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'MCO Utilizations' THEN ${id_num} ELSE NULL END ;;
  }


  # ****** MCO Utilizations group attributes end

#   Transaction Explore Customer Identifiers End

  #**************************Customer Ids Set
  set: customer_ids_set {
    fields: [md_id_num,md_id_type,eff_start_raw,eff_start_time,eff_start_date,eff_start_week_of_year,eff_start_month,eff_start_quarter,eff_start_year,
      eff_end_raw,eff_end_time,eff_end_date,eff_end_week_of_year,eff_end_month,eff_end_quarter,eff_end_year,md_primary_flag,md_customer_ids_count]
  }

  set: tx_cust_340_code_set {
    fields: [dir_id_340_num,indir_id_340_num,rbt_id_340_num,pr_id_340_num,mco_id_340_num,custom_id_340_num,chb_id_340_num]
  }

  set: tx_cust_dea_code_set {
    fields: [dir_id_dea_num,indir_id_dea_num,rbt_id_dea_num,pr_id_dea_num,custom_id_dea_num,chb_id_dea_num]
  }

  set: tx_cust_gln_code_set {
    fields: [dir_id_gln_num,indir_id_gln_num,rbt_id_gln_num,pr_id_gln_num,custom_id_gln_num,chb_id_gln_num]
  }

  set: tx_cust_hin_code_set {
    fields: [dir_id_hin_num,indir_id_hin_num,rbt_id_hin_num,pr_id_hin_num,custom_id_hin_num,chb_id_gln_num]
  }
}
