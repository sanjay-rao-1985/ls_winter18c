view: mn_rebate_type_dim {
  sql_table_name: MN_REBATE_TYPE_DIM_VW ;;

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

  dimension: description {
    type: string
    label: "Description"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: rbt_sub_type {
    type: string
    hidden: yes
    sql: ${TABLE}.RBT_SUB_TYPE ;;
    label: "Rebate Sub Type"
  }

  dimension: rbt_sub_type_name {
    type: string
    sql: ${TABLE}.RBT_SUB_TYPE_NAME ;;
    label: "Sub Type"
  }

  dimension: rbt_sub_type_shortname {
    type: string
    sql: ${TABLE}.RBT_SUB_TYPE_SHORTNAME ;;
    label: "Sub Type Short Name"
  }

  dimension: rbt_type {
    type: string
    hidden: yes
    sql: ${TABLE}.RBT_TYPE ;;
    label: "Rebate Type"
  }

  dimension: rbt_type_name {
    type: string
    sql: ${TABLE}.RBT_TYPE_NAME ;;
    label: "Type"
  }

  dimension: rbt_type_shortname {
    type: string
    sql: ${TABLE}.RBT_TYPE_SHORTNAME ;;
    label: "Type Short Name"
  }

  dimension: rebate_type_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.REBATE_TYPE_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
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


  dimension: rbt_ext_line_type {
    type: string
    label: "Transaction Type Code"
    view_label: "Rebates"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${TABLE}.EXTERNAL_LINE_TYPE ELSE NULL END ;;
  }

  dimension: rebate_sub_type {
    type: string
    label: "Transaction Rebate Sub Type"
    view_label: "Rebates"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${TABLE}.RBT_SUB_TYPE_NAME ELSE NULL END ;;
  }

  dimension: rebate_type_name {
    type: string
    label: "Transaction Rebate Program Type"
    view_label: "Rebates"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Paid Rebates' THEN ${TABLE}.RBT_TYPE_NAME ELSE NULL END ;;
  }

  dimension: proj_rbt_ext_line_type {
    type: string
    label: "Transaction Type Code"
    view_label: "Projected Rebates"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.EXTERNAL_LINE_TYPE ELSE NULL END ;;
  }

  dimension: proj_rebate_sub_type {
    type: string
    label: "Transaction Rebate Sub Type"
    view_label: "Projected Rebates"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.RBT_SUB_TYPE_NAME ELSE NULL END ;;
  }

  dimension: proj_rebate_type_name {
    type: string
    label: "Transaction Rebate Program Type"
    view_label: "Projected Rebates"
    sql: CASE WHEN ${mn_lkr_gp_comb_sales_fact.sale_type} = 'Projected Rebates' THEN ${TABLE}.RBT_TYPE_NAME ELSE NULL END ;;
  }

  measure: rebate_type_count {
    type: count
    drill_fields: [rbt_sub_type_name, rbt_type_name, rbt_type_shortname, rbt_sub_type_shortname]
  }

  set: rebate_type_set {
    fields: [rbt_ext_line_type,rebate_sub_type,rebate_type_name,proj_rbt_ext_line_type,proj_rebate_sub_type,proj_rebate_type_name]
  }
}
