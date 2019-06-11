include: "base_mn_product_group_dim.view.lkml"

view: mn_product_group_dim_ext {
  extends: [mn_product_group_dim]

  dimension: dir_pg_name {
    type: string
    view_label: "Direct Sales"
    label: "Pricing Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${pg_name} ELSE NULL END ;;
  }

  dimension: indir_pg_name {
    type: string
    view_label: "Indirect Sales"
    label: "Pricing Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${pg_name} ELSE NULL END ;;
  }

  dimension: chb_pg_name {
    type: string
    view_label: "Chargebacks"
    label: "Pricing Strategy Name"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${pg_name} ELSE NULL END ;;
  }


  set: tx_pg_name_set {
    fields: [dir_pg_name,indir_pg_name,chb_pg_name]
  }

}
