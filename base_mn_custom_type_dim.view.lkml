view: mn_custom_type_dim {
  sql_table_name: MN_CUSTOM_TYPE_DIM_VW ;;

  dimension: custom_type_code {
    type: string
    sql: ${TABLE}.CUSTOM_TYPE_CODE ;;
  }

  dimension: custom_type_desc {
    type: string
    sql: ${TABLE}.CUSTOM_TYPE_DESC ;;
  }

  dimension: custom_type_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CUSTOM_TYPE_WID ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.SOURCE_TYPE ;;
  }


  dimension: dir_cust_type1 {
    type: string
    view_label: "Direct Sales"
    label: "Transaction Custom Sale Type"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: dir_cust_type2 {
    type: string
    view_label: "Direct Sales"
    label: "Transaction Custom Sale Type 2"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: dir_cust_type3 {
    type: string
    view_label: "Direct Sales"
    label: "Transaction Custom Sale Type 3"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Direct' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: indir_cust_type1 {
    type: string
    view_label: "Indirect Sales"
    label: "Transaction Custom Sale Type"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: indir_cust_type2 {
    type: string
    view_label: "Indirect Sales"
    label: "Transaction Custom Sale Type 2"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: indir_cust_type3 {
    type: string
    view_label: "Indirect Sales"
    label: "Transaction Custom Sale Type 3"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.tracing_flag} = 'Y' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: chb_cust_type1 {
    type: string
    view_label: "Chargebacks"
    label: "Transaction Custom Sale Type"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: chb_cust_type2 {
    type: string
    view_label: "Chargebacks"
    label: "Transaction Custom Sale Type 2"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: chb_cust_type3 {
    type: string
    view_label: "Chargebacks"
    label: "Transaction Custom Sale Type 3"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.chargeback_flag} = 'Y' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: pr_cust_type1 {
    type: string
    view_label: "Projected Rebates"
    label: "Transaction Custom Sale Type"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: pr_cust_type2 {
    type: string
    view_label: "Projected Rebates"
    label: "Transaction Custom Sale Type 2"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: pr_cust_type3 {
    type: string
    view_label: "Projected Rebates"
    label: "Transaction Custom Sale Type 3"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: custom_cust_type1 {
    type: string
    view_label: "Custom Sales"
    label: "Transaction Custom Sale Type"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: custom_cust_type2 {
    type: string
    view_label: "Custom Sales"
    label: "Transaction Custom Sale Type 2"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  dimension: custom_cust_type3 {
    type: string
    view_label: "Custom Sales"
    label: "Transaction Custom Sale Type 3"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Custom' THEN ${TABLE}.CUSTOM_TYPE_DESC ELSE NULL END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

   set: custom_type1_set {
     fields: [dir_cust_type1,indir_cust_type1,pr_cust_type1,custom_cust_type1,chb_cust_type1]
   }

  set: custom_type2_set {
    fields: [dir_cust_type2,indir_cust_type2,pr_cust_type2,custom_cust_type2,chb_cust_type2]
  }

  set: custom_type3_set {
    fields: [dir_cust_type3,indir_cust_type3,pr_cust_type3,custom_cust_type3,chb_cust_type3]
  }
}
