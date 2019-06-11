view: mn_gp_workbook_result_fact {
  sql_table_name: MN_GP_WORKBOOK_RESULT_FACT_VW ;;

  dimension: workbook_result_fact_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.WORKBOOK_RESULT_FACT_WID ;;
  }

  dimension: workbook_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.WORKBOOK_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: contracted_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACTED_CUSTOMER_WID ;;
  }

  dimension: src_sys_workbook_result_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_WORKBOOK_RESULT_ID ;;
  }

  dimension: src_sys_workbook_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_WORKBOOK_ID ;;
  }

  dimension: src_sys_workbook_res_line_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_WORKBOOK_RES_LINE_ID ;;
  }

  dimension: src_sys_product_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PRODUCT_ID ;;
  }

  dimension: src_sys_contracted_cust_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CONTRACTED_CUST_ID ;;
  }

  dimension: workbook_result_type {
    type: string
    label: "Result Level"
    sql: ${TABLE}.WORKBOOK_RESULT_TYPE ;;
  }

  dimension: workbook_result_type_name {
    type: string
    sql: ${TABLE}.WORKBOOK_RESULT_TYPE_NAME ;;
  }

  dimension: ndc {
    type: string
    sql: ${TABLE}.NDC ;;
  }

  dimension: calc_price_amt {
    type: number
    label: "Calc Price Value"
    value_format_name: usd_6
    sql: ${TABLE}.CALC_PRICE_AMT ;;
  }

  dimension: calc_price_amt_label {
    type: string
    label: "Calc Price Name"
    sql: ${TABLE}.CALC_PRICE_AMT_LABEL ;;
  }

  dimension: actual_price_amt {
    type: number
    label: "Actual Price Value"
    value_format_name: usd_6
    sql: ${TABLE}.ACTUAL_PRICE_AMT ;;
  }

  dimension: actual_price_amt_label {
    type: string
    label: "Actual Price Name"
    sql: ${TABLE}.ACTUAL_PRICE_AMT_LABEL ;;
  }

  dimension: algorithm {
    type: string
    hidden: yes
    sql: ${TABLE}.ALGORITHM ;;
  }

  dimension: algorithm_name {
    type: string
    sql: ${TABLE}.ALGORITHM_NAME ;;
  }

  dimension: workbook_result_status {
    type: string
    hidden: yes
    sql: ${TABLE}.WORKBOOK_RESULT_STATUS ;;
  }

  dimension: workbook_result_status_name {
    type: string
    sql: ${TABLE}.WORKBOOK_RESULT_STATUS_NAME ;;
  }

  dimension: override_action {
    type: number
    hidden: yes
    sql: ${TABLE}.OVERRIDE_ACTION ;;
  }

  dimension: override_action_name {
    type: string
    label: "Override Action"
    sql: ${TABLE}.OVERRIDE_ACTION_NAME ;;
  }

  dimension: recalculated_ind {
    type: number
    hidden: yes
    sql: ${TABLE}.RECALCULATED_IND ;;
  }

  dimension: recalculated_ind_name {
    type: string
    label: "Recalculation Change Flag"
    sql: ${TABLE}.RECALCULATED_IND_NAME ;;
  }

  dimension: restatement_ind {
    type: number
    hidden: yes
    sql: ${TABLE}.RESTATEMENT_IND ;;
  }

  dimension: restatement_ind_name {
    type: string
    label: "Restatement Change Flag"
    sql: ${TABLE}.RESTATEMENT_IND_NAME ;;
  }

  dimension: pricechange_ind {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICECHANGE_IND ;;
  }

  dimension: pricechange_ind_name {
    type: string
    label: "Price Change Flag"
    sql: ${TABLE}.PRICECHANGE_IND_NAME ;;
  }

  dimension: amt1 {
    type: number
    label: "AMT1 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT1 ;;
  }

  dimension: amt1_label {
    type: string
    label: "AMT1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT1_LABEL ;;
  }

  dimension: qty1 {
    type: number
    label: "QTY1 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY1 ;;
  }

  dimension: qty1_label {
    type: string
    label: "QTY1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY1_LABEL ;;
  }

  dimension: amt2 {
    type: number
    label: "AMT2 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT2 ;;
  }

  dimension: amt2_label {
    type: string
    label: "AMT2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT2_LABEL ;;
  }

  dimension: qty2 {
    type: number
    label: "QTY2 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY2 ;;
  }

  dimension: qty2_label {
    type: string
    label: "QTY2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY2_LABEL ;;
  }

  dimension: amt3 {
    type: number
    label: "AMT3 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT3 ;;
  }

  dimension: amt3_label {
    type: string
    label: "AMT3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT3_LABEL ;;
  }

  dimension: qty3 {
    type: number
    label: "QTY3 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY3 ;;
  }

  dimension: qty3_label {
    type: string
    label: "QTY3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY3_LABEL ;;
  }

  dimension: amt4 {
    type: number
    label: "AMT4 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT4 ;;
  }

  dimension: amt4_label {
    type: string
    label: "AMT4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT4_LABEL ;;
  }

  dimension: qty4 {
    type: number
    label: "QTY4 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY4 ;;
  }

  dimension: qty4_label {
    type: string
    label: "QTY4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY4_LABEL ;;
  }

  dimension: amt5 {
    type: number
    label: "AMT5 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT5 ;;
  }

  dimension: amt5_label {
    type: string
    label: "AMT5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT5_LABEL ;;
  }

  dimension: qty5 {
    type: number
    label: "QTY5 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY5 ;;
  }

  dimension: qty5_label {
    type: string
    label: "QTY5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY5_LABEL ;;
  }

  dimension: amt6 {
    type: number
    label: "AMT6 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT6 ;;
  }

  dimension: amt6_label {
    type: string
    label: "AMT6 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT6_LABEL ;;
  }

  dimension: qty6 {
    type: number
    label: "QTY6 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY6 ;;
  }

  dimension: qty6_label {
    type: string
    label: "QTY6 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY6_LABEL ;;
  }

  dimension: amt7 {
    type: number
    label: "AMT7 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT7 ;;
  }

  dimension: amt7_label {
    type: string
    label: "AMT7 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT7_LABEL ;;
  }

  dimension: qty7 {
    type: number
    label: "QTY7 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY7 ;;
  }

  dimension: qty7_label {
    type: string
    label: "QTY7 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY7_LABEL ;;
  }

  dimension: amt8 {
    type: number
    label: "AMT8 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT8 ;;
  }

  dimension: amt8_label {
    type: string
    label: "AMT8 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT8_LABEL ;;
  }

  dimension: qty8 {
    type: number
    label: "QTY8 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY8 ;;
  }

  dimension: qty8_label {
    type: string
    label: "QTY8 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY8_LABEL ;;
  }

  dimension: amt9 {
    type: number
    label: "AMT9 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT9 ;;
  }

  dimension: amt9_label {
    type: string
    label: "AMT9 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT9_LABEL ;;
  }

  dimension: qty9 {
    type: number
    label: "QTY9 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY9 ;;
  }

  dimension: qty9_label {
    type: string
    label: "QTY9 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY9_LABEL ;;
  }

  dimension: amt10 {
    type: number
    label: "AMT10 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT10 ;;
  }

  dimension: amt10_label {
    type: string
    label: "AMT10 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT10_LABEL ;;
  }

  dimension: qty10 {
    type: number
    label: "QTY10 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY10 ;;
  }

  dimension: qty10_label {
    type: string
    label: "QTY10 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY10_LABEL ;;
  }

  dimension: amt11 {
    type: number
    label: "AMT11 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT11 ;;
  }

  dimension: amt11_label {
    type: string
    label: "AMT11 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT11_LABEL ;;
  }

  dimension: qty11 {
    type: number
    label: "QTY11 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY11 ;;
  }

  dimension: qty11_label {
    type: string
    label: "QTY11 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY11_LABEL ;;
  }

  dimension: amt12 {
    type: number
    label: "AMT12 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT12 ;;
  }

  dimension: amt12_label {
    type: string
    label: "AMT12 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT12_LABEL ;;
  }

  dimension: qty12 {
    type: number
    label: "QTY12 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY12 ;;
  }

  dimension: qty12_label {
    type: string
    label: "QTY12 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY12_LABEL ;;
  }

  dimension: amt13 {
    type: number
    label: "AMT13 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT13 ;;
  }

  dimension: amt13_label {
    type: string
    label: "AMT13 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT13_LABEL ;;
  }

  dimension: qty13 {
    type: number
    label: "QTY13 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY13 ;;
  }

  dimension: qty13_label {
    type: string
    label: "QTY13 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY13_LABEL ;;
  }

  dimension: amt14 {
    type: number
    label: "AMT14 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT14 ;;
  }

  dimension: amt14_label {
    type: string
    label: "AMT14 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT14_LABEL ;;
  }

  dimension: qty14 {
    type: number
    label: "QTY14 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY14 ;;
  }

  dimension: qty14_label {
    type: string
    label: "QTY14 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY14_LABEL ;;
  }

  dimension: amt15 {
    type: number
    label: "AMT15 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT15 ;;
  }

  dimension: amt15_label {
    type: string
    label: "AMT15 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT15_LABEL ;;
  }

  dimension: qty15 {
    type: number
    label: "QTY15 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY15 ;;
  }

  dimension: qty15_label {
    type: string
    label: "QTY15 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY15_LABEL ;;
  }

  dimension: amt16 {
    type: number
    label: "AMT16 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT16 ;;
  }

  dimension: amt16_label {
    type: string
    label: "AMT16 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT16_LABEL ;;
  }

  dimension: qty16 {
    type: number
    label: "QTY16 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY16 ;;
  }

  dimension: qty16_label {
    type: string
    label: "QTY16 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY16_LABEL ;;
  }

  dimension: amt17 {
    type: number
    label: "AMT17 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT17 ;;
  }

  dimension: amt17_label {
    type: string
    label: "AMT17 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT17_LABEL ;;
  }

  dimension: qty17 {
    type: number
    label: "QTY17 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY17 ;;
  }

  dimension: qty17_label {
    type: string
    label: "QTY17 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY17_LABEL ;;
  }

  dimension: amt18 {
    type: number
    label: "AMT18 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT18 ;;
  }

  dimension: amt18_label {
    type: string
    label: "AMT18 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT18_LABEL ;;
  }

  dimension: qty18 {
    type: number
    label: "QTY18 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY18 ;;
  }

  dimension: qty18_label {
    type: string
    label: "QTY18 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY18_LABEL ;;
  }

  dimension: amt19 {
    type: number
    label: "AMT19 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT19 ;;
  }

  dimension: amt19_label {
    type: string
    label: "AMT19 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT19_LABEL ;;
  }

  dimension: qty19 {
    type: number
    label: "QTY19 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY19 ;;
  }

  dimension: qty19_label {
    type: string
    label: "QTY19 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY19_LABEL ;;
  }

  dimension: amt20 {
    type: number
    label: "AMT20 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT20 ;;
  }

  dimension: amt20_label {
    type: string
    label: "AMT20 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT20_LABEL ;;
  }

  dimension: qty20 {
    type: number
    label: "QTY20 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY20 ;;
  }

  dimension: qty20_label {
    type: string
    label: "QTY20 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY20_LABEL ;;
  }

  dimension: amt21 {
    type: number
    label: "AMT21 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT21 ;;
  }

  dimension: amt21_label {
    type: string
    label: "AMT21 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT21_LABEL ;;
  }

  dimension: qty21 {
    type: number
    label: "QTY21 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY21 ;;
  }

  dimension: qty21_label {
    type: string
    label: "QTY21 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY21_LABEL ;;
  }

  dimension: amt22 {
    type: number
    label: "AMT22 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT22 ;;
  }

  dimension: amt22_label {
    type: string
    label: "AMT22 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT22_LABEL ;;
  }

  dimension: qty22 {
    type: number
    label: "QTY22 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY22 ;;
  }

  dimension: qty22_label {
    type: string
    label: "QTY22 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY22_LABEL ;;
  }

  dimension: amt23 {
    type: number
    label: "AMT23 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT23 ;;
  }

  dimension: amt23_label {
    type: string
    label: "AMT23 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT23_LABEL ;;
  }

  dimension: qty23 {
    type: number
    label: "QTY23 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY23 ;;
  }

  dimension: qty23_label {
    type: string
    label: "QTY23 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY23_LABEL ;;
  }

  dimension: amt24 {
    type: number
    label: "AMT24 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT24 ;;
  }

  dimension: amt24_label {
    type: string
    label: "AMT24 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT24_LABEL ;;
  }

  dimension: qty24 {
    type: number
    label: "QTY24 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY24 ;;
  }

  dimension: qty24_label {
    type: string
    label: "QTY24 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY24_LABEL ;;
  }

  dimension: amt25 {
    type: number
    label: "AMT25 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT25 ;;
  }

  dimension: amt25_label {
    type: string
    label: "AMT25 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT25_LABEL ;;
  }

  dimension: qty25 {
    type: number
    label: "QTY25 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY25 ;;
  }

  dimension: qty25_label {
    type: string
    label: "QTY25 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY25_LABEL ;;
  }

  dimension: amt26 {
    type: number
    label: "AMT26 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT26 ;;
  }

  dimension: amt26_label {
    type: string
    label: "AMT26 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT26_LABEL ;;
  }

  dimension: qty26 {
    type: number
    label: "QTY26 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY26 ;;
  }

  dimension: qty26_label {
    type: string
    label: "QTY26 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY26_LABEL ;;
  }

  dimension: amt27 {
    type: number
    label: "AMT27 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT27 ;;
  }

  dimension: amt27_label {
    type: string
    label: "AMT27 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT27_LABEL ;;
  }

  dimension: qty27 {
    type: number
    label: "QTY27 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY27 ;;
  }

  dimension: qty27_label {
    type: string
    label: "QTY27 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY27_LABEL ;;
  }

  dimension: amt28 {
    type: number
    label: "AMT28 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT28 ;;
  }

  dimension: amt28_label {
    type: string
    label: "AMT28 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT28_LABEL ;;
  }

  dimension: qty28 {
    type: number
    label: "QTY28 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY28 ;;
  }

  dimension: qty28_label {
    type: string
    label: "QTY28 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY28_LABEL ;;
  }

  dimension: amt29 {
    type: number
    label: "AMT29 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT29 ;;
  }

  dimension: amt29_label {
    type: string
    label: "AMT29 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT29_LABEL ;;
  }

  dimension: qty29 {
    type: number
    label: "QTY29 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY29 ;;
  }

  dimension: qty29_label {
    type: string
    label: "QTY29 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY29_LABEL ;;
  }

  dimension: amt30 {
    type: number
    label: "AMT30 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT30 ;;
  }

  dimension: amt30_label {
    type: string
    label: "AMT30 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT30_LABEL ;;
  }

  dimension: qty30 {
    type: number
    label: "QTY30 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY30 ;;
  }

  dimension: qty30_label {
    type: string
    label: "QTY30 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY30_LABEL ;;
  }

  dimension: amt31 {
    type: number
    label: "AMT31 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT31 ;;
  }

  dimension: amt31_label {
    type: string
    label: "AMT31 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT31_LABEL ;;
  }

  dimension: qty31 {
    type: number
    label: "QTY31 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY31 ;;
  }

  dimension: qty31_label {
    type: string
    label: "QTY31 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY31_LABEL ;;
  }

  dimension: amt32 {
    type: number
    label: "AMT32 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT32 ;;
  }

  dimension: qty32 {
    type: number
    label: "QTY32 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY32 ;;
  }

  dimension: qty32_label {
    type: string
    label: "QTY32 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY32_LABEL ;;
  }

  dimension: amt32_label {
    type: string
    label: "AMT32 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT32_LABEL ;;
  }

  dimension: amt33 {
    type: number
    label: "AMT33 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT33 ;;
  }

  dimension: amt33_label {
    type: string
    label: "AMT33 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT33_LABEL ;;
  }

  dimension: qty33 {
    type: number
    label: "QTY33 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY33 ;;
  }

  dimension: qty33_label {
    type: string
    label: "QTY33 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY33_LABEL ;;
  }

  dimension: amt34 {
    type: number
    label: "AMT34 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT34 ;;
  }

  dimension: amt34_label {
    type: string
    label: "AMT34 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT34_LABEL ;;
  }

  dimension: qty34 {
    type: number
    label: "QTY34 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY34 ;;
  }

  dimension: qty34_label {
    type: string
    label: "QTY34 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY34_LABEL ;;
  }

  dimension: amt35 {
    type: number
    label: "AMT35 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT35 ;;
  }

  dimension: amt35_label {
    type: string
    label: "AMT35 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT35_LABEL ;;
  }

  dimension: qty35 {
    type: number
    label: "QTY35 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY35 ;;
  }

  dimension: qty35_label {
    type: string
    label: "QTY35 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY35_LABEL ;;
  }

  dimension: amt36 {
    type: number
    label: "AMT36 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT36 ;;
  }

  dimension: amt36_label {
    type: string
    label: "AMT36 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT36_LABEL ;;
  }

  dimension: qty36 {
    type: number
    label: "QTY36 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY36 ;;
  }

  dimension: qty36_label {
    type: string
    label: "QTY36 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY36_LABEL ;;
  }

  dimension: amt37 {
    type: number
    label: "AMT37 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT37 ;;
  }

  dimension: amt37_label {
    type: string
    label: "AMT37 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT37_LABEL ;;
  }

  dimension: qty37 {
    type: number
    label: "QTY37 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY37 ;;
  }

  dimension: qty37_label {
    type: string
    label: "QTY37 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY37_LABEL ;;
  }

  dimension: amt38 {
    type: number
    label: "AMT38 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT38 ;;
  }

  dimension: amt38_label {
    type: string
    label: "AMT38 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT38_LABEL ;;
  }

  dimension: qty38 {
    type: number
    label: "QTY38 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY38 ;;
  }

  dimension: qty38_label {
    type: string
    label: "QTY38 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY38_LABEL ;;
  }

  dimension: amt39 {
    type: number
    label: "AMT39 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT39 ;;
  }

  dimension: amt39_label {
    type: string
    label: "AMT39 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT39_LABEL ;;
  }

  dimension: qty39 {
    type: number
    label: "QTY39 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY39 ;;
  }

  dimension: qty39_label {
    type: string
    label: "QTY39 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY39_LABEL ;;
  }

  dimension: amt40 {
    type: number
    label: "AMT40 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT40 ;;
  }

  dimension: amt40_label {
    type: string
    label: "AMT40 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT40_LABEL ;;
  }

  dimension: qty40 {
    type: number
    label: "QTY40 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY40 ;;
  }

  dimension: qty40_label {
    type: string
    label: "QTY40 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY40_LABEL ;;
  }

  dimension: amt41 {
    type: number
    label: "AMT41 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT41 ;;
  }

  dimension: amt41_label {
    type: string
    label: "AMT41 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT41_LABEL ;;
  }

  dimension: qty41 {
    type: number
    label: "QTY41 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY41 ;;
  }

  dimension: qty41_label {
    type: string
    label: "QTY41 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY41_LABEL ;;
  }

  dimension: amt42 {
    type: number
    label: "AMT42 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT42 ;;
  }

  dimension: amt42_label {
    type: string
    label: "AMT42 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT42_LABEL ;;
  }

  dimension: qty42 {
    type: number
    label: "QTY42 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY42 ;;
  }

  dimension: qty42_label {
    type: string
    label: "QTY42 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY42_LABEL ;;
  }

  dimension: amt43 {
    type: number
    label: "AMT43 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT43 ;;
  }

  dimension: amt43_label {
    type: string
    label: "AMT43 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT43_LABEL ;;
  }

  dimension: qty43 {
    type: number
    label: "QTY43 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY43 ;;
  }

  dimension: qty43_label {
    type: string
    label: "QTY43 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY43_LABEL ;;
  }

  dimension: amt44 {
    type: number
    label: "AMT44 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT44 ;;
  }

  dimension: amt44_label {
    type: string
    label: "AMT44 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT44_LABEL ;;
  }

  dimension: qty44 {
    type: number
    label: "QTY44 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY44 ;;
  }

  dimension: qty44_label {
    type: string
    label: "QTY44 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY44_LABEL ;;
  }

  dimension: amt45 {
    type: number
    label: "AMT45 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT45 ;;
  }

  dimension: amt45_label {
    type: string
    label: "AMT45 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT45_LABEL ;;
  }

  dimension: qty45 {
    type: number
    label: "QTY45 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY45 ;;
  }

  dimension: qty45_label {
    type: string
    label: "QTY45 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY45_LABEL ;;
  }

  dimension: amt46 {
    type: number
    label: "AMT46 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT46 ;;
  }

  dimension: amt46_label {
    type: string
    label: "AMT46 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT46_LABEL ;;
  }

  dimension: qty46 {
    type: number
    label: "QTY46 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY46 ;;
  }

  dimension: qty46_label {
    type: string
    label: "QTY46 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY46_LABEL ;;
  }

  dimension: amt47 {
    type: number
    label: "AMT47 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT47 ;;
  }

  dimension: amt47_label {
    type: string
    label: "AMT47 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT47_LABEL ;;
  }

  dimension: qty47 {
    type: number
    label: "QTY47 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY47 ;;
  }

  dimension: qty47_label {
    type: string
    label: "QTY47 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY47_LABEL ;;
  }

  dimension: amt48 {
    type: number
    label: "AMT48 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT48 ;;
  }

  dimension: amt48_label {
    type: string
    label: "AMT48 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT48_LABEL ;;
  }

  dimension: qty48 {
    type: number
    label: "QTY48 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY48 ;;
  }

  dimension: qty48_label {
    type: string
    label: "QTY48 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY48_LABEL ;;
  }

  dimension: amt49 {
    type: number
    label: "AMT49 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT49 ;;
  }

  dimension: amt49_label {
    type: string
    label: "AMT49 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT49_LABEL ;;
  }

  dimension: qty49 {
    type: number
    label: "QTY49 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY49 ;;
  }

  dimension: qty49_label {
    type: string
    label: "QTY49 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY49_LABEL ;;
  }

  dimension: amt50 {
    type: number
    label: "AMT50 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT50 ;;
  }

  dimension: amt50_label {
    type: string
    label: "AMT50 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT50_LABEL ;;
  }

  dimension: qty50 {
    type: number
    label: "QTY50 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY50 ;;
  }

  dimension: qty50_label {
    type: string
    label: "QTY50 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY50_LABEL ;;
  }

  dimension: amt51 {
    type: number
    label: "AMT51 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT51 ;;
  }

  dimension: amt51_label {
    type: string
    label: "AMT51 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT51_LABEL ;;
  }

  dimension: qty51 {
    type: number
    label: "QTY51 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY51 ;;
  }

  dimension: qty51_label {
    type: string
    label: "QTY51 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY51_LABEL ;;
  }

  dimension: amt52 {
    type: number
    label: "AMT52 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT52 ;;
  }

  dimension: amt52_label {
    type: string
    label: "AMT52 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT52_LABEL ;;
  }

  dimension: qty52 {
    type: number
    label: "QTY52 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY52 ;;
  }

  dimension: qty52_label {
    type: string
    label: "QTY52 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY52_LABEL ;;
  }

  dimension: amt53 {
    type: number
    label: "AMT53 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT53 ;;
  }

  dimension: amt53_label {
    type: string
    label: "AMT53 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT53_LABEL ;;
  }

  dimension: qty53 {
    type: number
    label: "QTY53 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY53 ;;
  }

  dimension: qty53_label {
    type: string
    label: "QTY53 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY53_LABEL ;;
  }

  dimension: amt54 {
    type: number
    label: "AMT54 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT54 ;;
  }

  dimension: amt54_label {
    type: string
    label: "AMT54 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT54_LABEL ;;
  }

  dimension: qty54 {
    type: number
    label: "QTY54 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY54 ;;
  }

  dimension: qty54_label {
    type: string
    label: "QTY54 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY54_LABEL ;;
  }

  dimension: amt55 {
    type: number
    label: "AMT55 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT55 ;;
  }

  dimension: amt55_label {
    type: string
    label: "AMT55 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT55_LABEL ;;
  }

  dimension: qty55 {
    type: number
    label: "QTY55 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY55 ;;
  }

  dimension: qty55_label {
    type: string
    label: "QTY55 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY55_LABEL ;;
  }

  dimension: amt56 {
    type: number
    label: "AMT56 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT56 ;;
  }

  dimension: amt56_label {
    type: string
    label: "AMT56 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT56_LABEL ;;
  }

  dimension: qty56 {
    type: number
    label: "QTY56 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY56 ;;
  }

  dimension: qty56_label {
    type: string
    label: "QTY56 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY56_LABEL ;;
  }

  dimension: amt57 {
    type: number
    label: "AMT57 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT57 ;;
  }

  dimension: amt57_label {
    type: string
    label: "AMT57 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT57_LABEL ;;
  }

  dimension: qty57 {
    type: number
    label: "QTY57 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY57 ;;
  }

  dimension: qty57_label {
    type: string
    label: "QTY57 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY57_LABEL ;;
  }

  dimension: amt58 {
    type: number
    label: "AMT58 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT58 ;;
  }

  dimension: amt58_label {
    type: string
    label: "AMT58 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT58_LABEL ;;
  }

  dimension: qty58 {
    type: number
    label: "QTY58 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY58 ;;
  }

  dimension: qty58_label {
    type: string
    label: "QTY58 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY58_LABEL ;;
  }

  dimension: amt59 {
    type: number
    label: "AMT59 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT59 ;;
  }

  dimension: amt59_label {
    type: string
    label: "AMT59 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT59_LABEL ;;
  }

  dimension: qty59 {
    type: number
    label: "QTY59 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY59 ;;
  }

  dimension: qty59_label {
    type: string
    label: "QTY59 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY59_LABEL ;;
  }

  dimension: amt60 {
    type: number
    label: "AMT60 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT60 ;;
  }

  dimension: amt60_label {
    type: string
    label: "AMT60 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT60_LABEL ;;
  }

  dimension: qty60 {
    type: number
    label: "QTY60 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY60 ;;
  }

  dimension: qty60_label {
    type: string
    label: "QTY60 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY60_LABEL ;;
  }

  dimension: amt61 {
    type: number
    label: "AMT61 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT61 ;;
  }

  dimension: amt61_label {
    type: string
    label: "AMT61 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT61_LABEL ;;
  }

  dimension: qty61 {
    type: number
    label: "QTY61 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY61 ;;
  }

  dimension: qty61_label {
    type: string
    label: "QTY61 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY61_LABEL ;;
  }

  dimension: amt62 {
    type: number
    label: "AMT62 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT62 ;;
  }

  dimension: amt62_label {
    type: string
    label: "AMT62 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT62_LABEL ;;
  }

  dimension: qty62 {
    type: number
    label: "QTY62 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY62 ;;
  }

  dimension: qty62_label {
    type: string
    label: "QTY62 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY62_LABEL ;;
  }

  dimension: amt63 {
    type: number
    label: "AMT63 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT63 ;;
  }

  dimension: amt63_label {
    type: string
    label: "AMT63 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT63_LABEL ;;
  }

  dimension: amt64 {
    type: number
    label: "AMT64 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT64 ;;
  }

  dimension: amt64_label {
    type: string
    label: "AMT64 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT64_LABEL ;;
  }

  dimension: amt65 {
    type: number
    label: "AMT65 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT65 ;;
  }

  dimension: amt65_label {
    type: string
    label: "AMT65 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT65_LABEL ;;
  }

  dimension: amt66 {
    type: number
    label: "AMT66 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT66 ;;
  }

  dimension: amt66_label {
    type: string
    label: "AMT66 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT66_LABEL ;;
  }

  dimension: amt67 {
    type: number
    label: "AMT67 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT67 ;;
  }

  dimension: amt67_label {
    type: string
    label: "AMT67 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT67_LABEL ;;
  }

  dimension: amt68 {
    type: number
    label: "AMT68 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT68 ;;
  }

  dimension: amt68_label {
    type: string
    label: "AMT68 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT68_LABEL ;;
  }

  dimension: intr_str1 {
    type: string
    label: "INTR_STR1 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR1 ;;
  }

  dimension: intr_str1_label {
    type: string
    label: "INTR_STR1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR1_LABEL ;;
  }

  dimension: intr_str2 {
    type: string
    label: "INTR_STR2 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR2 ;;
  }

  dimension: intr_str2_label {
    type: string
    label: "INTR_STR2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR2_LABEL ;;
  }

  dimension: intr_str3 {
    type: string
    label: "INTR_STR3 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR3 ;;
  }

  dimension: intr_str3_label {
    type: string
    label: "INTR_STR3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR3_LABEL ;;
  }

  dimension: intr_str4 {
    type: string
    label: "INTR_STR4 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR4 ;;
  }

  dimension: intr_str4_label {
    type: string
    label: "INTR_STR4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR4_LABEL ;;
  }

  dimension: intr_str5 {
    type: string
    label: "INTR_STR5 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR5 ;;
  }

  dimension: intr_str5_label {
    type: string
    label: "INTR_STR5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR5_LABEL ;;
  }

  dimension: intr_str6 {
    type: string
    label: "INTR_STR6 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR6 ;;
  }

  dimension: intr_str6_label {
    type: string
    label: "INTR_STR6 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR6_LABEL ;;
  }

  dimension: intr_str7 {
    type: string
    label: "INTR_STR7 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR7 ;;
  }

  dimension: intr_str7_label {
    type: string
    label: "INTR_STR7 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR7_LABEL ;;
  }

  dimension: intr_str8 {
    type: string
    label: "INTR_STR8 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR8 ;;
  }

  dimension: intr_str8_label {
    type: string
    label: "INTR_STR8 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR8_LABEL ;;
  }

  dimension: intr_str9 {
    type: string
    label: "INTR_STR9 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR9 ;;
  }

  dimension: intr_str9_label {
    type: string
    label: "INTR_STR9 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR9_LABEL ;;
  }

  dimension: intr_str10 {
    type: string
    label: "INTR_STR10 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR10 ;;
  }

  dimension: intr_str10_label {
    type: string
    label: "INTR_STR10 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR10_LABEL ;;
  }

  dimension: intr_str11 {
    type: string
    label: "INTR_STR11 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR11 ;;
  }

  dimension: intr_str11_label {
    type: string
    label: "INTR_STR11 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR11_LABEL ;;
  }

  dimension: intr_str12 {
    type: string
    label: "INTR_STR12 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR12 ;;
  }

  dimension: intr_str12_label {
    type: string
    label: "INTR_STR12 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR12_LABEL ;;
  }

  dimension: intr_str13 {
    type: string
    label: "INTR_STR13 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR13 ;;
  }

  dimension: intr_str13_label {
    type: string
    label: "INTR_STR13 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR13_LABEL ;;
  }

  dimension: intr_str14 {
    type: string
    label: "INTR_STR14 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR14 ;;
  }

  dimension: intr_str14_label {
    type: string
    label: "INTR_STR14 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR14_LABEL ;;
  }

  dimension: intr_str15 {
    type: string
    label: "INTR_STR15 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR15 ;;
  }

  dimension: intr_str15_label {
    type: string
    label: "INTR_STR15 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR15_LABEL ;;
  }

  dimension: intr_str16 {
    type: string
    label: "INTR_STR16 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR16 ;;
  }

  dimension: intr_str16_label {
    type: string
    label: "INTR_STR16 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR16_LABEL ;;
  }

  dimension: intr_str17 {
    type: string
    label: "INTR_STR17 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR17 ;;
  }

  dimension: intr_str17_label {
    type: string
    label: "INTR_STR17 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR17_LABEL ;;
  }

  dimension: intr_str18 {
    type: string
    label: "INTR_STR18 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR18 ;;
  }

  dimension: intr_str18_label {
    type: string
    label: "INTR_STR18 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR18_LABEL ;;
  }

  dimension: intr_str19 {
    type: string
    label: "INTR_STR19 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR19 ;;
  }

  dimension: intr_str19_label {
    type: string
    label: "INTR_STR19 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR19_LABEL ;;
  }

  dimension: intr_str20 {
    type: string
    label: "INTR_STR20 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR20 ;;
  }

  dimension: intr_str20_label {
    type: string
    label: "INTR_STR20 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR20_LABEL ;;
  }

  dimension: intr_str21 {
    type: string
    label: "INTR_STR21 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR21 ;;
  }

  dimension: intr_str21_label {
    type: string
    label: "INTR_STR21 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR21_LABEL ;;
  }

  dimension: intr_str22 {
    type: string
    label: "INTR_STR22 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR22 ;;
  }

  dimension: intr_str22_label {
    type: string
    label: "INTR_STR22 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR22_LABEL ;;
  }

  dimension: intr_str23 {
    type: string
    label: "INTR_STR23 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR23 ;;
  }

  dimension: intr_str23_label {
    type: string
    label: "INTR_STR23 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR23_LABEL ;;
  }

  dimension: intr_str24 {
    type: string
    label: "INTR_STR24 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR24 ;;
  }

  dimension: intr_str24_label {
    type: string
    label: "INTR_STR24 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR24_LABEL ;;
  }

  dimension: intr_str25 {
    type: string
    label: "INTR_STR25 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR25 ;;
  }

  dimension: intr_str25_label {
    type: string
    label: "INTR_STR25 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR25_LABEL ;;
  }

  dimension: intr_str26 {
    type: string
    label: "INTR_STR26 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR26 ;;
  }

  dimension: intr_str26_label {
    type: string
    label: "INTR_STR26 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR26_LABEL ;;
  }

  dimension: intr_str27 {
    type: string
    label: "INTR_STR27 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR27 ;;
  }

  dimension: intr_str27_label {
    type: string
    label: "INTR_STR27 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR27_LABEL ;;
  }

  dimension: intr_str28 {
    type: string
    label: "INTR_STR28 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR28 ;;
  }

  dimension: intr_str28_label {
    type: string
    label: "INTR_STR28 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR28_LABEL ;;
  }

  dimension: intr_str29 {
    type: string
    label: "INTR_STR29 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR29 ;;
  }

  dimension: intr_str29_label {
    type: string
    label: "INTR_STR29 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR29_LABEL ;;
  }

  dimension: intr_str30 {
    type: string
    label: "INTR_STR30 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR30 ;;
  }

  dimension: intr_str30_label {
    type: string
    label: "INTR_STR30 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR30_LABEL ;;
  }

  dimension: intr_str31 {
    type: string
    label: "INTR_STR31 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR31 ;;
  }

  dimension: intr_str31_label {
    type: string
    label: "INTR_STR31 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR31_LABEL ;;
  }

  dimension: intr_str32 {
    type: string
    label: "INTR_STR32 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR32 ;;
  }

  dimension: intr_str32_label {
    type: string
    label: "INTR_STR32 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR32_LABEL ;;
  }

  dimension: intr_str33 {
    type: string
    label: "INTR_STR33 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR33 ;;
  }

  dimension: intr_str33_label {
    type: string
    label: "INTR_STR33 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR33_LABEL ;;
  }

  dimension: intr_str34 {
    type: string
    label: "INTR_STR34 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR34 ;;
  }

  dimension: intr_str34_label {
    type: string
    label: "INTR_STR34 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR34_LABEL ;;
  }

  dimension: intr_str35 {
    type: string
    label: "INTR_STR35 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR35 ;;
  }

  dimension: intr_str35_label {
    type: string
    label: "INTR_STR35 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR35_LABEL ;;
  }

  dimension: intr_str36 {
    type: string
    label: "INTR_STR36 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR36 ;;
  }

  dimension: intr_str36_label {
    type: string
    label: "INTR_STR36 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR36_LABEL ;;
  }

  dimension: intr_str37 {
    type: string
    label: "INTR_STR37 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR37 ;;
  }

  dimension: intr_str37_label {
    type: string
    label: "INTR_STR37 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR37_LABEL ;;
  }

  dimension: intr_str38 {
    type: string
    label: "INTR_STR38 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR38 ;;
  }

  dimension: intr_str38_label {
    type: string
    label: "INTR_STR38 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR38_LABEL ;;
  }

  dimension: intr_str39 {
    type: string
    label: "INTR_STR39 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR39 ;;
  }

  dimension: intr_str39_label {
    type: string
    label: "INTR_STR39 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR39_LABEL ;;
  }

  dimension: intr_str40 {
    type: string
    label: "INTR_STR40 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR40 ;;
  }

  dimension: intr_str40_label {
    type: string
    label: "INTR_STR40 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR40_LABEL ;;
  }

  dimension: intr_str41 {
    type: string
    label: "INTR_STR41 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR41 ;;
  }

  dimension: intr_str41_label {
    type: string
    label: "INTR_STR41 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR41_LABEL ;;
  }

  dimension: intr_str42 {
    type: string
    label: "INTR_STR42 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR42 ;;
  }

  dimension: intr_str42_label {
    type: string
    label: "INTR_STR42 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR42_LABEL ;;
  }

  dimension: intr_str43 {
    type: string
    label: "INTR_STR43 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR43 ;;
  }

  dimension: intr_str43_label {
    type: string
    label: "INTR_STR43 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR43_LABEL ;;
  }

  dimension: intr_str44 {
    type: string
    label: "INTR_STR44 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR44 ;;
  }

  dimension: intr_str44_label {
    type: string
    label: "INTR_STR44 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR44_LABEL ;;
  }

  dimension: intr_str45 {
    type: string
    label: "INTR_STR45 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR45 ;;
  }

  dimension: intr_str45_label {
    type: string
    label: "INTR_STR45 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR45_LABEL ;;
  }

  dimension: intr_str46 {
    type: string
    label: "INTR_STR46 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR46 ;;
  }

  dimension: intr_str46_label {
    type: string
    label: "INTR_STR46 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR46_LABEL ;;
  }

  dimension: intr_str47 {
    type: string
    label: "INTR_STR47 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR47 ;;
  }

  dimension: intr_str47_label {
    type: string
    label: "INTR_STR47 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR47_LABEL ;;
  }

  dimension: intr_str48 {
    type: string
    label: "INTR_STR48 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR48 ;;
  }

  dimension: intr_str48_label {
    type: string
    label: "INTR_STR48 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR48_LABEL ;;
  }

  dimension: intr_str49 {
    type: string
    label: "INTR_STR49 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR49 ;;
  }

  dimension: intr_str49_label {
    type: string
    label: "INTR_STR49 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR49_LABEL ;;
  }

  dimension: intr_str50 {
    type: string
    label: "INTR_STR50 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR50 ;;
  }

  dimension: intr_str50_label {
    type: string
    label: "INTR_STR50 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_STR50_LABEL ;;
  }

  dimension: intr_dec1 {
    type: number
    label: "INTR_DEC1 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC1 ;;
  }

  dimension: intr_dec1_label {
    type: string
    label: "INTR_DEC1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC1_LABEL ;;
  }

  dimension: intr_dec2 {
    type: number
    label: "INTR_DEC2 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC2 ;;
  }

  dimension: intr_dec2_label {
    type: string
    label: "INTR_DEC2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC2_LABEL ;;
  }

  dimension: intr_dec3 {
    type: number
    label: "INTR_DEC3 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC3 ;;
  }

  dimension: intr_dec3_label {
    type: string
    label: "INTR_DEC3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC3_LABEL ;;
  }

  dimension: intr_dec4 {
    type: number
    label: "INTR_DEC4 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC4 ;;
  }

  dimension: intr_dec4_label {
    type: string
    label: "INTR_DEC4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC4_LABEL ;;
  }

  dimension: intr_dec5 {
    type: number
    label: "INTR_DEC5 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC5 ;;
  }

  dimension: intr_dec5_label {
    type: string
    label: "INTR_DEC5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC5_LABEL ;;
  }

  dimension: intr_dec6 {
    type: number
    label: "INTR_DEC6 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC6 ;;
  }

  dimension: intr_dec6_label {
    type: string
    label: "INTR_DEC6 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC6_LABEL ;;
  }

  dimension: intr_dec7 {
    type: number
    label: "INTR_DEC7 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC7 ;;
  }

  dimension: intr_dec7_label {
    type: string
    label: "INTR_DEC7 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC7_LABEL ;;
  }

  dimension: intr_dec8 {
    type: number
    label: "INTR_DEC8 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC8 ;;
  }

  dimension: intr_dec8_label {
    type: string
    label: "INTR_DEC8 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC8_LABEL ;;
  }

  dimension: intr_dec9 {
    type: number
    label: "INTR_DEC9 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC9 ;;
  }

  dimension: intr_dec9_label {
    type: string
    label: "INTR_DEC9 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC9_LABEL ;;
  }

  dimension: intr_dec10 {
    type: number
    label: "INTR_DEC10 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC10 ;;
  }

  dimension: intr_dec10_label {
    type: string
    label: "INTR_DEC10 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC10_LABEL ;;
  }

  dimension: intr_dec11 {
    type: number
    label: "INTR_DEC11 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC11 ;;
  }

  dimension: intr_dec11_label {
    type: string
    label: "INTR_DEC11 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC11_LABEL ;;
  }

  dimension: intr_dec12 {
    type: number
    label: "INTR_DEC12 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC12 ;;
  }

  dimension: intr_dec12_label {
    type: string
    label: "INTR_DEC12 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC12_LABEL ;;
  }

  dimension: intr_dec13 {
    type: number
    label: "INTR_DEC13 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC13 ;;
  }

  dimension: intr_dec13_label {
    type: string
    label: "INTR_DEC13 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC13_LABEL ;;
  }

  dimension: intr_dec14 {
    type: number
    label: "INTR_DEC14 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC14 ;;
  }

  dimension: intr_dec14_label {
    type: string
    label: "INTR_DEC14 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC14_LABEL ;;
  }

  dimension: intr_dec15 {
    type: number
    label: "INTR_DEC15 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC15 ;;
  }

  dimension: intr_dec15_label {
    type: string
    label: "INTR_DEC15 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC15_LABEL ;;
  }

  dimension: intr_dec16 {
    type: number
    label: "INTR_DEC16 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC16 ;;
  }

  dimension: intr_dec16_label {
    type: string
    label: "INTR_DEC16 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC16_LABEL ;;
  }

  dimension: intr_dec17 {
    type: number
    label: "INTR_DEC17 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC17 ;;
  }

  dimension: intr_dec17_label {
    type: string
    label: "INTR_DEC17 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC17_LABEL ;;
  }

  dimension: intr_dec18 {
    type: number
    label: "INTR_DEC18 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC18 ;;
  }

  dimension: intr_dec18_label {
    type: string
    label: "INTR_DEC18 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC18_LABEL ;;
  }

  dimension: intr_dec19 {
    type: number
    label: "INTR_DEC19 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC19 ;;
  }

  dimension: intr_dec19_label {
    type: string
    label: "INTR_DEC19 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC19_LABEL ;;
  }

  dimension: intr_dec20 {
    type: number
    label: "INTR_DEC20 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC20 ;;
  }

  dimension: intr_dec20_label {
    type: string
    label: "INTR_DEC20 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC20_LABEL ;;
  }

  dimension: intr_dec21 {
    type: number
    label: "INTR_DEC21 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC21 ;;
  }

  dimension: intr_dec21_label {
    type: string
    label: "INTR_DEC21 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC21_LABEL ;;
  }

  dimension: intr_dec22 {
    type: number
    label: "INTR_DEC22 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC22 ;;
  }

  dimension: intr_dec22_label {
    type: string
    label: "INTR_DEC22 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC22_LABEL ;;
  }

  dimension: intr_dec23 {
    type: number
    label: "INTR_DEC23 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC23 ;;
  }

  dimension: intr_dec23_label {
    type: string
    label: "INTR_DEC23 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC23_LABEL ;;
  }

  dimension: intr_dec24 {
    type: number
    label: "INTR_DEC24 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC24 ;;
  }

  dimension: intr_dec24_label {
    type: string
    label: "INTR_DEC24 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC24_LABEL ;;
  }

  dimension: intr_dec25 {
    type: number
    label: "INTR_DEC25 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC25 ;;
  }

  dimension: intr_dec25_label {
    type: string
    label: "INTR_DEC25 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC25_LABEL ;;
  }

  dimension: intr_dec26 {
    type: number
    label: "INTR_DEC26 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC26 ;;
  }

  dimension: intr_dec26_label {
    type: string
    label: "INTR_DEC26 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC26_LABEL ;;
  }

  dimension: intr_dec27 {
    type: number
    label: "INTR_DEC27 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC27 ;;
  }

  dimension: intr_dec27_label {
    type: string
    label: "INTR_DEC27 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC27_LABEL ;;
  }

  dimension: intr_dec28 {
    type: number
    label: "INTR_DEC28 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC28 ;;
  }

  dimension: intr_dec28_label {
    type: string
    label: "INTR_DEC28 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC28_LABEL ;;
  }

  dimension: intr_dec29 {
    type: number
    label: "INTR_DEC29 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC29 ;;
  }

  dimension: intr_dec29_label {
    type: string
    label: "INTR_DEC29 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC29_LABEL ;;
  }

  dimension: intr_dec30 {
    type: number
    label: "INTR_DEC30 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC30 ;;
  }

  dimension: intr_dec30_label {
    type: string
    label: "INTR_DEC30 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC30_LABEL ;;
  }

  dimension: intr_dec31 {
    type: number
    label: "INTR_DEC31 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC31 ;;
  }

  dimension: intr_dec31_label {
    type: string
    label: "INTR_DEC31 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC31_LABEL ;;
  }

  dimension: intr_dec32 {
    type: number
    label: "INTR_DEC32 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC32 ;;
  }

  dimension: intr_dec32_label {
    type: string
    label: "INTR_DEC32 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC32_LABEL ;;
  }

  dimension: intr_dec33 {
    type: number
    label: "INTR_DEC33 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC33 ;;
  }

  dimension: intr_dec33_label {
    type: string
    label: "INTR_DEC33 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC33_LABEL ;;
  }

  dimension: intr_dec34 {
    type: number
    label: "INTR_DEC34 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC34 ;;
  }

  dimension: intr_dec34_label {
    type: string
    label: "INTR_DEC34 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC34_LABEL ;;
  }

  dimension: intr_dec35 {
    type: number
    label: "INTR_DEC35 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC35 ;;
  }

  dimension: intr_dec35_label {
    type: string
    label: "INTR_DEC35 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC35_LABEL ;;
  }

  dimension: intr_dec36 {
    type: number
    label: "INTR_DEC36 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC36 ;;
  }

  dimension: intr_dec36_label {
    type: string
    label: "INTR_DEC36 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC36_LABEL ;;
  }

  dimension: intr_dec37 {
    type: number
    label: "INTR_DEC37 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC37 ;;
  }

  dimension: intr_dec37_label {
    type: string
    label: "INTR_DEC37 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC37_LABEL ;;
  }

  dimension: intr_dec38 {
    type: number
    label: "INTR_DEC38 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC38 ;;
  }

  dimension: intr_dec38_label {
    type: string
    label: "INTR_DEC38 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC38_LABEL ;;
  }

  dimension: intr_dec39 {
    type: number
    label: "INTR_DEC39 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC39 ;;
  }

  dimension: intr_dec39_label {
    type: string
    label: "INTR_DEC39 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC39_LABEL ;;
  }

  dimension: intr_dec40 {
    type: number
    label: "INTR_DEC40 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC40 ;;
  }

  dimension: intr_dec40_label {
    type: string
    label: "INTR_DEC40 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC40_LABEL ;;
  }

  dimension: intr_dec41 {
    type: number
    label: "INTR_DEC41 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC41 ;;
  }

  dimension: intr_dec41_label {
    type: string
    label: "INTR_DEC41 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC41_LABEL ;;
  }

  dimension: intr_dec42 {
    type: number
    label: "INTR_DEC42 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC42 ;;
  }

  dimension: intr_dec42_label {
    type: string
    label: "INTR_DEC42 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC42_LABEL ;;
  }

  dimension: intr_dec43 {
    type: number
    label: "INTR_DEC43 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC43 ;;
  }

  dimension: intr_dec43_label {
    type: string
    label: "INTR_DEC43 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC43_LABEL ;;
  }

  dimension: intr_dec44 {
    type: number
    label: "INTR_DEC44 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC44 ;;
  }

  dimension: intr_dec44_label {
    type: string
    label: "INTR_DEC44 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC44_LABEL ;;
  }

  dimension: intr_dec45 {
    type: number
    label: "INTR_DEC45 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC45 ;;
  }

  dimension: intr_dec45_label {
    type: string
    label: "INTR_DEC45 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC45_LABEL ;;
  }

  dimension: intr_dec46 {
    type: number
    label: "INTR_DEC46 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC46 ;;
  }

  dimension: intr_dec46_label {
    type: string
    label: "INTR_DEC46 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC46_LABEL ;;
  }

  dimension: intr_dec47 {
    type: number
    label: "INTR_DEC47 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC47 ;;
  }

  dimension: intr_dec47_label {
    type: string
    label: "INTR_DEC47 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC47_LABEL ;;
  }

  dimension: intr_dec48 {
    type: number
    label: "INTR_DEC48 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC48 ;;
  }

  dimension: intr_dec48_label {
    type: string
    label: "INTR_DEC48 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC48_LABEL ;;
  }

  dimension: intr_dec49 {
    type: number
    label: "INTR_DEC49 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC49 ;;
  }

  dimension: intr_dec49_label {
    type: string
    label: "INTR_DEC49 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC49_LABEL ;;
  }

  dimension: intr_dec50 {
    type: number
    label: "INTR_DEC50 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC50 ;;
  }

  dimension: intr_dec50_label {
    type: string
    label: "INTR_DEC50 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_DEC50_LABEL ;;
  }

  dimension: int1 {
    type: number
    label: "INT1 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT1 ;;
  }

  dimension: int1_label {
    type: string
    label: "INT1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT1_LABEL ;;
  }

  dimension: int2 {
    type: number
    label: "INT2 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT2 ;;
  }

  dimension: int2_label {
    type: string
    label: "INT2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT2_LABEL ;;
  }

  dimension: int3 {
    type: number
    label: "INT3 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT3 ;;
  }

  dimension: int3_label {
    type: string
    label: "INT3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT3_LABEL ;;
  }

  dimension: int4 {
    type: number
    label: "INT4 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT4 ;;
  }

  dimension: int4_label {
    type: string
    label: "INT4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT4_LABEL ;;
  }

  dimension: int5 {
    type: number
    label: "INT5 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT5 ;;
  }

  dimension: int5_label {
    type: string
    label: "INT5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT5_LABEL ;;
  }

  dimension: int6 {
    type: number
    label: "INT6 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT6 ;;
  }

  dimension: int6_label {
    type: string
    label: "INT6 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT6_LABEL ;;
  }

  dimension: int7 {
    type: number
    label: "INT7 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT7 ;;
  }

  dimension: int7_label {
    type: string
    label: "INT7 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT7_LABEL ;;
  }

  dimension: int8 {
    type: number
    label: "INT8 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT8 ;;
  }

  dimension: int8_label {
    type: string
    label: "INT8 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT8_LABEL ;;
  }

  dimension: int9 {
    type: number
    label: "INT9 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT9 ;;
  }

  dimension: int9_label {
    type: string
    label: "INT9 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT9_LABEL ;;
  }

  dimension: int10 {
    type: number
    label: "INT10 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT10 ;;
  }

  dimension: int10_label {
    type: string
    label: "INT10 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT10_LABEL ;;
  }

  dimension: int11 {
    type: number
    label: "INT11 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT11 ;;
  }

  dimension: int11_label {
    type: string
    label: "INT11 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT11_LABEL ;;
  }

  dimension: int12 {
    type: number
    label: "INT12 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT12 ;;
  }

  dimension: int12_label {
    type: string
    label: "INT12 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT12_LABEL ;;
  }

  dimension: int13 {
    type: number
    label: "INT13 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT13 ;;
  }

  dimension: int13_label {
    type: string
    label: "INT13 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT13_LABEL ;;
  }

  dimension: int14 {
    type: number
    label: "INT14 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT14 ;;
  }

  dimension: int14_label {
    type: string
    label: "INT14 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT14_LABEL ;;
  }

  dimension: int15 {
    type: number
    label: "INT15 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT15 ;;
  }

  dimension: int15_label {
    type: string
    label: "INT15 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT15_LABEL ;;
  }

  dimension: int16 {
    type: number
    label: "INT16 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT16 ;;
  }

  dimension: int16_label {
    type: string
    label: "INT16 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT16_LABEL ;;
  }

  dimension: int17 {
    type: number
    label: "INT17 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT17 ;;
  }

  dimension: int17_label {
    type: string
    label: "INT17 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT17_LABEL ;;
  }

  dimension: int18 {
    type: number
    label: "INT18 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT18 ;;
  }

  dimension: int18_label {
    type: string
    label: "INT18 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT18_LABEL ;;
  }

  dimension: int19 {
    type: number
    label: "INT19 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT19 ;;
  }

  dimension: int19_label {
    type: string
    label: "INT19 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT19_LABEL ;;
  }

  dimension: int20 {
    type: number
    label: "INT20 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT20 ;;
  }

  dimension: int20_label {
    type: string
    label: "INT20 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT20_LABEL ;;
  }

  dimension: int21 {
    type: number
    label: "INT21 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT21 ;;
  }

  dimension: int21_label {
    type: string
    label: "INT21 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT21_LABEL ;;
  }

  dimension: int22 {
    type: number
    label: "INT22 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT22 ;;
  }

  dimension: int22_label {
    type: string
    label: "INT22 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT22_LABEL ;;
  }

  dimension: int23 {
    type: number
    label: "INT23 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT23 ;;
  }

  dimension: int23_label {
    type: string
    label: "INT23 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT23_LABEL ;;
  }

  dimension: int24 {
    type: number
    label: "INT24 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT24 ;;
  }

  dimension: int24_label {
    type: string
    label: "INT24 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT24_LABEL ;;
  }

  dimension: int25 {
    type: number
    label: "INT25 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT25 ;;
  }

  dimension: int25_label {
    type: string
    label: "INT25 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT25_LABEL ;;
  }

  dimension: int26 {
    type: number
    label: "INT26 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT26 ;;
  }

  dimension: int26_label {
    type: string
    label: "INT26 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT26_LABEL ;;
  }

  dimension: int27 {
    type: number
    label: "INT27 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT27 ;;
  }

  dimension: int27_label {
    type: string
    label: "INT27 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT27_LABEL ;;
  }

  dimension: int28 {
    type: number
    label: "INT28 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT28 ;;
  }

  dimension: int28_label {
    type: string
    label: "INT28 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT28_LABEL ;;
  }

  dimension: int29 {
    type: number
    label: "INT29 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT29 ;;
  }

  dimension: int29_label {
    type: string
    label: "INT29 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT29_LABEL ;;
  }

  dimension: int30 {
    type: number
    label: "INT30 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT30 ;;
  }

  dimension: int30_label {
    type: string
    label: "INT30 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT30_LABEL ;;
  }

  dimension: int31 {
    type: number
    label: "INT31 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT31 ;;
  }

  dimension: int31_label {
    type: string
    label: "INT31 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT31_LABEL ;;
  }

  dimension: int32 {
    type: number
    label: "INT32 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT32 ;;
  }

  dimension: int32_label {
    type: string
    label: "INT32 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT32_LABEL ;;
  }

  dimension: int33 {
    type: number
    label: "INT33 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT33 ;;
  }

  dimension: int33_label {
    type: string
    label: "INT33 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT33_LABEL ;;
  }

  dimension: int34 {
    type: number
    label: "INT34 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT34 ;;
  }

  dimension: int34_label {
    type: string
    label: "INT34 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT34_LABEL ;;
  }

  dimension: int35 {
    type: number
    label: "INT35 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT35 ;;
  }

  dimension: int35_label {
    type: string
    label: "INT35 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT35_LABEL ;;
  }

  dimension: int36 {
    type: number
    label: "INT36 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT36 ;;
  }

  dimension: int36_label {
    type: string
    label: "INT36 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT36_LABEL ;;
  }

  dimension: int37 {
    type: number
    label: "INT37 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT37 ;;
  }

  dimension: int37_label {
    type: string
    label: "INT37 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT37_LABEL ;;
  }

  dimension: int38 {
    type: number
    label: "INT38 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT38 ;;
  }

  dimension: int38_label {
    type: string
    label: "INT38 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT38_LABEL ;;
  }

  dimension: int39 {
    type: number
    label: "INT39 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT39 ;;
  }

  dimension: int39_label {
    type: string
    label: "INT39 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT39_LABEL ;;
  }

  dimension: int40 {
    type: number
    label: "INT40 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT40 ;;
  }

  dimension: int40_label {
    type: string
    label: "INT40 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT40_LABEL ;;
  }

  dimension: int41 {
    type: number
    label: "INT41 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT41 ;;
  }

  dimension: int41_label {
    type: string
    label: "INT41 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT41_LABEL ;;
  }

  dimension: int42 {
    type: number
    label: "INT42 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT42 ;;
  }

  dimension: int42_label {
    type: string
    label: "INT42 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT42_LABEL ;;
  }

  dimension: int43 {
    type: number
    label: "INT43 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT43 ;;
  }

  dimension: int43_label {
    type: string
    label: "INT43 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT43_LABEL ;;
  }

  dimension: int44 {
    type: number
    label: "INT44 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT44 ;;
  }

  dimension: int44_label {
    type: string
    label: "INT44 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT44_LABEL ;;
  }

  dimension: int45 {
    type: number
    label: "INT45 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT45 ;;
  }

  dimension: int45_label {
    type: string
    label: "INT45 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT45_LABEL ;;
  }

  dimension: int46 {
    type: number
    label: "INT46 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT46 ;;
  }

  dimension: int46_label {
    type: string
    label: "INT46 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT46_LABEL ;;
  }

  dimension: int47 {
    type: number
    label: "INT47 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT47 ;;
  }

  dimension: int47_label {
    type: string
    label: "INT47 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT47_LABEL ;;
  }

  dimension: int48 {
    type: number
    label: "INT48 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT48 ;;
  }

  dimension: int48_label {
    type: string
    label: "INT48 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT48_LABEL ;;
  }

  dimension: int49 {
    type: number
    label: "INT49 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT49 ;;
  }

  dimension: int49_label {
    type: string
    label: "INT49 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT49_LABEL ;;
  }

  dimension: int50 {
    type: number
    label: "INT50 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT50 ;;
  }

  dimension: int50_label {
    type: string
    label: "INT50 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INT50_LABEL ;;
  }

  dimension: intr_clob1 {
    type: string
    label: "INTR_CLOB1 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB1 ;;
  }

  dimension: intr_clob1_label {
    type: string
    label: "INTR_CLOB1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB1_LABEL ;;
  }

  dimension: intr_clob2 {
    type: string
    label: "INTR_CLOB2 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB2 ;;
  }

  dimension: intr_clob2_label {
    type: string
    label: "INTR_CLOB2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB2_LABEL ;;
  }

  dimension: intr_clob3 {
    type: string
    label: "INTR_CLOB3 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB3 ;;
  }

  dimension: intr_clob3_label {
    type: string
    label: "INTR_CLOB3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB3_LABEL ;;
  }

  dimension: intr_clob4 {
    type: string
    label: "INTR_CLOB4 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB4 ;;
  }

  dimension: intr_clob4_label {
    type: string
    label: "INTR_CLOB4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB4_LABEL ;;
  }

  dimension: intr_clob5 {
    type: string
    label: "INTR_CLOB5 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB5 ;;
  }

  dimension: intr_clob5_label {
    type: string
    label: "INTR_CLOB5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.INTR_CLOB5_LABEL ;;
  }

  dimension: struct_doc_fk {
    type: number
    hidden: yes
    sql: ${TABLE}.STRUCT_DOC_FK ;;
  }

  dimension: formula_def {
    type: string
    sql: ${TABLE}.FORMULA_DEF ;;
  }

  dimension: formula_exp {
    type: string
    sql: ${TABLE}.FORMULA_EXP ;;
  }

  dimension: input_names {
    type: string
    sql: ${TABLE}.INPUT_NAMES ;;
  }

  dimension: input_Values {
    type: string
    sql: ${TABLE}.INPUT ValueS ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
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
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  measure: average_calc_price_amt {
    type: average
    label: "Calc Price Metric"
    value_format_name: usd_6
    sql: ${calc_price_amt} ;;
  }

  measure: average_actual_price_amt {
    type: average
    label: "Actual Price Metric"
    value_format_name: usd_6
    sql: ${actual_price_amt} ;;
  }

  measure: total_amt1 {
    type: sum
    label: "AMT1 Metric"
    value_format_name: usd_6
    sql: ${amt1} ;;
  }

  measure: total_amt2 {
    type: sum
    label: "AMT2 Metric"
    value_format_name: usd_6
    sql: ${amt2} ;;
  }

  measure: total_amt3 {
    type: sum
    label: "AMT3 Metric"
    value_format_name: usd_6
    sql: ${amt3} ;;
  }

  measure: total_amt4 {
    type: sum
    label: "AMT4 Metric"
    value_format_name: usd_6
    sql: ${amt4} ;;
  }

  measure: total_amt5 {
    type: sum
    label: "AMT5 Metric"
    value_format_name: usd_6
    sql: ${amt5} ;;
  }

  measure: total_amt6 {
    type: sum
    label: "AMT6 Metric"
    value_format_name: usd_6
    sql: ${amt6} ;;
  }

  measure: total_amt7 {
    type: sum
    label: "AMT7 Metric"
    value_format_name: usd_6
    sql: ${amt7} ;;
  }

  measure: total_amt8 {
    type: sum
    label: "AMT8 Metric"
    value_format_name: usd_6
    sql: ${amt8} ;;
  }

  measure: total_amt9 {
    type: sum
    label: "AMT9 Metric"
    value_format_name: usd_6
    sql: ${amt9} ;;
  }

  measure: total_amt10 {
    type: sum
    label: "AMT10 Metric"
    value_format_name: usd_6
    sql: ${amt10} ;;
  }

  measure: total_amt11 {
    type: sum
    label: "AMT11 Metric"
    value_format_name: usd_6
    sql: ${amt11} ;;
  }

  measure: total_amt12 {
    type: sum
    label: "AMT12 Metric"
    value_format_name: usd_6
    sql: ${amt12} ;;
  }

  measure: total_amt13 {
    type: sum
    label: "AMT13 Metric"
    value_format_name: usd_6
    sql: ${amt13} ;;
  }

  measure: total_amt14 {
    type: sum
    label: "AMT14 Metric"
    value_format_name: usd_6
    sql: ${amt14} ;;
  }

  measure: total_amt15 {
    type: sum
    label: "AMT15 Metric"
    value_format_name: usd_6
    sql: ${amt15} ;;
  }

  measure: total_amt16 {
    type: sum
    label: "AMT16 Metric"
    value_format_name: usd_6
    sql: ${amt16} ;;
  }

  measure: total_amt17 {
    type: sum
    label: "AMT17 Metric"
    value_format_name: usd_6
    sql: ${amt17} ;;
  }

  measure: total_amt18 {
    type: sum
    label: "AMT18 Metric"
    value_format_name: usd_6
    sql: ${amt18} ;;
  }

  measure: total_amt19 {
    type: sum
    label: "AMT19 Metric"
    value_format_name: usd_6
    sql: ${amt19} ;;
  }

  measure: total_amt20 {
    type: sum
    label: "AMT20 Metric"
    value_format_name: usd_6
    sql: ${amt20} ;;
  }

  measure: total_amt21 {
    type: sum
    label: "AMT21 Metric"
    value_format_name: usd_6
    sql: ${amt21} ;;
  }

  measure: total_amt22 {
    type: sum
    label: "AMT22 Metric"
    value_format_name: usd_6
    sql: ${amt22} ;;
  }

  measure: total_amt23 {
    type: sum
    label: "AMT23 Metric"
    value_format_name: usd_6
    sql: ${amt23} ;;
  }

  measure: total_amt24 {
    type: sum
    label: "AMT24 Metric"
    value_format_name: usd_6
    sql: ${amt24} ;;
  }

  measure: total_amt25 {
    type: sum
    label: "AMT25 Metric"
    value_format_name: usd_6
    sql: ${amt25} ;;
  }

  measure: total_amt26 {
    type: sum
    label: "AMT26 Metric"
    value_format_name: usd_6
    sql: ${amt26} ;;
  }

  measure: total_amt27 {
    type: sum
    label: "AMT27 Metric"
    value_format_name: usd_6
    sql: ${amt27} ;;
  }

  measure: total_amt28 {
    type: sum
    label: "AMT28 Metric"
    value_format_name: usd_6
    sql: ${amt28} ;;
  }

  measure: total_amt29 {
    type: sum
    label: "AMT29 Metric"
    value_format_name: usd_6
    sql: ${amt29} ;;
  }

  measure: total_amt30 {
    type: sum
    label: "AMT30 Metric"
    value_format_name: usd_6
    sql: ${amt30} ;;
  }

  measure: total_amt31 {
    type: sum
    label: "AMT31 Metric"
    value_format_name: usd_6
    sql: ${amt31} ;;
  }

  measure: total_amt32 {
    type: sum
    label: "AMT32 Metric"
    value_format_name: usd_6
    sql: ${amt32} ;;
  }

  measure: total_amt33 {
    type: sum
    label: "AMT33 Metric"
    value_format_name: usd_6
    sql: ${amt33} ;;
  }

  measure: total_amt34 {
    type: sum
    label: "AMT34 Metric"
    value_format_name: usd_6
    sql: ${amt34} ;;
  }

  measure: total_amt35 {
    type: sum
    label: "AMT35 Metric"
    value_format_name: usd_6
    sql: ${amt35} ;;
  }

  measure: total_amt36 {
    type: sum
    label: "AMT36 Metric"
    value_format_name: usd_6
    sql: ${amt36} ;;
  }

  measure: total_amt37 {
    type: sum
    label: "AMT37 Metric"
    value_format_name: usd_6
    sql: ${amt37} ;;
  }

  measure: total_amt38 {
    type: sum
    label: "AMT38 Metric"
    value_format_name: usd_6
    sql: ${amt38} ;;
  }

  measure: total_amt39 {
    type: sum
    label: "AMT39 Metric"
    value_format_name: usd_6
    sql: ${amt39} ;;
  }

  measure: total_amt40 {
    type: sum
    label: "AMT40 Metric"
    value_format_name: usd_6
    sql: ${amt40} ;;
  }

  measure: total_amt41 {
    type: sum
    label: "AMT41 Metric"
    value_format_name: usd_6
    sql: ${amt41} ;;
  }

  measure: total_amt42 {
    type: sum
    label: "AMT42 Metric"
    value_format_name: usd_6
    sql: ${amt42} ;;
  }

  measure: total_amt43 {
    type: sum
    label: "AMT43 Metric"
    value_format_name: usd_6
    sql: ${amt43} ;;
  }

  measure: total_amt44 {
    type: sum
    label: "AMT44 Metric"
    value_format_name: usd_6
    sql: ${amt44} ;;
  }

  measure: total_amt45 {
    type: sum
    label: "AMT45 Metric"
    value_format_name: usd_6
    sql: ${amt45} ;;
  }

  measure: total_amt46 {
    type: sum
    label: "AMT46 Metric"
    value_format_name: usd_6
    sql: ${amt46} ;;
  }

  measure: total_amt47 {
    type: sum
    label: "AMT47 Metric"
    value_format_name: usd_6
    sql: ${amt47} ;;
  }

  measure: total_amt48 {
    type: sum
    label: "AMT48 Metric"
    value_format_name: usd_6
    sql: ${amt48} ;;
  }

  measure: total_amt49 {
    type: sum
    label: "AMT49 Metric"
    value_format_name: usd_6
    sql: ${amt49} ;;
  }

  measure: total_amt50 {
    type: sum
    label: "AMT50 Metric"
    value_format_name: usd_6
    sql: ${amt50} ;;
  }

  measure: total_amt51 {
    type: sum
    label: "AMT51 Metric"
    value_format_name: usd_6
    sql: ${amt51} ;;
  }

  measure: total_amt52 {
    type: sum
    label: "AMT52 Metric"
    value_format_name: usd_6
    sql: ${amt52} ;;
  }

  measure: total_amt53 {
    type: sum
    label: "AMT53 Metric"
    value_format_name: usd_6
    sql: ${amt53} ;;
  }

  measure: total_amt54 {
    type: sum
    label: "AMT54 Metric"
    value_format_name: usd_6
    sql: ${amt54} ;;
  }

  measure: total_amt55 {
    type: sum
    label: "AMT55 Metric"
    value_format_name: usd_6
    sql: ${amt55} ;;
  }

  measure: total_amt56 {
    type: sum
    label: "AMT56 Metric"
    value_format_name: usd_6
    sql: ${amt56} ;;
  }

  measure: total_amt57 {
    type: sum
    label: "AMT57 Metric"
    value_format_name: usd_6
    sql: ${amt57} ;;
  }

  measure: total_amt58 {
    type: sum
    label: "AMT58 Metric"
    value_format_name: usd_6
    sql: ${amt58} ;;
  }

  measure: total_amt59 {
    type: sum
    label: "AMT59 Metric"
    value_format_name: usd_6
    sql: ${amt59} ;;
  }

  measure: total_amt60 {
    type: sum
    label: "AMT60 Metric"
    value_format_name: usd_6
    sql: ${amt60} ;;
  }

  measure: total_amt61 {
    type: sum
    label: "AMT61 Metric"
    value_format_name: usd_6
    sql: ${amt61} ;;
  }

  measure: total_amt62 {
    type: sum
    label: "AMT62 Metric"
    value_format_name: usd_6
    sql: ${amt62} ;;
  }

  measure: total_amt63 {
    type: sum
    label: "AMT63 Metric"
    value_format_name: usd_6
    sql: ${amt63} ;;
  }

  measure: total_amt64 {
    type: sum
    label: "AMT64 Metric"
    value_format_name: usd_6
    sql: ${amt64} ;;
  }

  measure: total_amt65 {
    type: sum
    label: "AMT65 Metric"
    value_format_name: usd_6
    sql: ${amt65} ;;
  }

  measure: total_amt66 {
    type: sum
    label: "AMT66 Metric"
    value_format_name: usd_6
    sql: ${amt66} ;;
  }

  measure: total_amt67 {
    type: sum
    label: "AMT67 Metric"
    value_format_name: usd_6
    sql: ${amt67} ;;
  }

  measure: total_amt68 {
    type: sum
    label: "AMT68 Metric"
    value_format_name: usd_6
    sql: ${amt68} ;;
  }

  measure: total_qty1 {
    type: sum
    label: "QTY1 Metric"
    sql: ${qty1} ;;
  }

  measure: total_qty2 {
    type: sum
    label: "QTY2 Metric"
    sql: ${qty2} ;;
  }

  measure: total_qty3 {
    type: sum
    label: "QTY3 Metric"
    sql: ${qty3} ;;
  }

  measure: total_qty4 {
    type: sum
    label: "QTY4 Metric"
    sql: ${qty4} ;;
  }

  measure: total_qty5 {
    type: sum
    label: "QTY5 Metric"
    sql: ${qty5} ;;
  }

  measure: total_qty6 {
    type: sum
    label: "QTY6 Metric"
    sql: ${qty6} ;;
  }

  measure: total_qty7 {
    type: sum
    label: "QTY7 Metric"
    sql: ${qty7} ;;
  }

  measure: total_qty8 {
    type: sum
    label: "QTY8 Metric"
    sql: ${qty8} ;;
  }

  measure: total_qty9 {
    type: sum
    label: "QTY9 Metric"
    sql: ${qty9} ;;
  }

  measure: total_qty10 {
    type: sum
    label: "QTY10 Metric"
    sql: ${qty10} ;;
  }

  measure: total_qty11 {
    type: sum
    label: "QTY11 Metric"
    sql: ${qty11} ;;
  }

  measure: total_qty12 {
    type: sum
    label: "QTY12 Metric"
    sql: ${qty12} ;;
  }

  measure: total_qty13 {
    type: sum
    label: "QTY13 Metric"
    sql: ${qty13} ;;
  }

  measure: total_qty14 {
    type: sum
    label: "QTY14 Metric"
    sql: ${qty14} ;;
  }

  measure: total_qty15 {
    type: sum
    label: "QTY15 Metric"
    sql: ${qty15} ;;
  }

  measure: total_qty16 {
    type: sum
    label: "QTY16 Metric"
    sql: ${qty16} ;;
  }

  measure: total_qty17 {
    type: sum
    label: "QTY17 Metric"
    sql: ${qty17} ;;
  }

  measure: total_qty18 {
    type: sum
    label: "QTY18 Metric"
    sql: ${qty18} ;;
  }

  measure: total_qty19 {
    type: sum
    label: "QTY19 Metric"
    sql: ${qty19} ;;
  }

  measure: total_qty20 {
    type: sum
    label: "QTY20 Metric"
    sql: ${qty20} ;;
  }

  measure: total_qty21 {
    type: sum
    label: "QTY21 Metric"
    sql: ${qty21} ;;
  }

  measure: total_qty22 {
    type: sum
    label: "QTY22 Metric"
    sql: ${qty22} ;;
  }

  measure: total_qty23 {
    type: sum
    label: "QTY23 Metric"
    sql: ${qty23} ;;
  }

  measure: total_qty24 {
    type: sum
    label: "QTY24 Metric"
    sql: ${qty24} ;;
  }

  measure: total_qty25 {
    type: sum
    label: "QTY25 Metric"
    sql: ${qty25} ;;
  }

  measure: total_qty26 {
    type: sum
    label: "QTY26 Metric"
    sql: ${qty26} ;;
  }

  measure: total_qty27 {
    type: sum
    label: "QTY27 Metric"
    sql: ${qty27} ;;
  }

  measure: total_qty28 {
    type: sum
    label: "QTY28 Metric"
    sql: ${qty28} ;;
  }

  measure: total_qty29 {
    type: sum
    label: "QTY29 Metric"
    sql: ${qty29} ;;
  }

  measure: total_qty30 {
    type: sum
    label: "QTY30 Metric"
    sql: ${qty30} ;;
  }

  measure: total_qty31 {
    type: sum
    label: "QTY31 Metric"
    sql: ${qty31} ;;
  }

  measure: total_qty32 {
    type: sum
    label: "QTY32 Metric"
    sql: ${qty32} ;;
  }

  measure: total_qty33 {
    type: sum
    label: "QTY33 Metric"
    sql: ${qty33} ;;
  }

  measure: total_qty34 {
    type: sum
    label: "QTY34 Metric"
    sql: ${qty34} ;;
  }

  measure: total_qty35 {
    type: sum
    label: "QTY35 Metric"
    sql: ${qty35} ;;
  }

  measure: total_qty36 {
    type: sum
    label: "QTY36 Metric"
    sql: ${qty36} ;;
  }

  measure: total_qty37 {
    type: sum
    label: "QTY37 Metric"
    sql: ${qty37} ;;
  }

  measure: total_qty38 {
    type: sum
    label: "QTY38 Metric"
    sql: ${qty38} ;;
  }

  measure: total_qty39 {
    type: sum
    label: "QTY39 Metric"
    sql: ${qty39} ;;
  }

  measure: total_qty40 {
    type: sum
    label: "QTY40 Metric"
    sql: ${qty40} ;;
  }

  measure: total_qty41 {
    type: sum
    label: "QTY41 Metric"
    sql: ${qty41} ;;
  }

  measure: total_qty42 {
    type: sum
    label: "QTY42 Metric"
    sql: ${qty42} ;;
  }

  measure: total_qty43 {
    type: sum
    label: "QTY43 Metric"
    sql: ${qty43} ;;
  }

  measure: total_qty44 {
    type: sum
    label: "QTY44 Metric"
    sql: ${qty44} ;;
  }

  measure: total_qty45 {
    type: sum
    label: "QTY45 Metric"
    sql: ${qty45} ;;
  }

  measure: total_qty46 {
    type: sum
    label: "QTY46 Metric"
    sql: ${qty46} ;;
  }

  measure: total_qty47 {
    type: sum
    label: "QTY47 Metric"
    sql: ${qty47} ;;
  }

  measure: total_qty48 {
    type: sum
    label: "QTY48 Metric"
    sql: ${qty48} ;;
  }

  measure: total_qty49 {
    type: sum
    label: "QTY49 Metric"
    sql: ${qty49} ;;
  }

  measure: total_qty50 {
    type: sum
    label: "QTY50 Metric"
    sql: ${qty50} ;;
  }

  measure: total_qty51 {
    type: sum
    label: "QTY51 Metric"
    sql: ${qty51} ;;
  }

  measure: total_qty52 {
    type: sum
    label: "QTY52 Metric"
    sql: ${qty52} ;;
  }

  measure: total_qty53 {
    type: sum
    label: "QTY53 Metric"
    sql: ${qty53} ;;
  }

  measure: total_qty54 {
    type: sum
    label: "QTY54 Metric"
    sql: ${qty54} ;;
  }

  measure: total_qty55 {
    type: sum
    label: "QTY55 Metric"
    sql: ${qty55} ;;
  }

  measure: total_qty56 {
    type: sum
    label: "QTY56 Metric"
    sql: ${qty56} ;;
  }

  measure: total_qty57 {
    type: sum
    label: "QTY57 Metric"
    sql: ${qty57} ;;
  }

  measure: total_qty58 {
    type: sum
    label: "QTY58 Metric"
    sql: ${qty58} ;;
  }

  measure: total_qty59 {
    type: sum
    label: "QTY59 Metric"
    sql: ${qty59} ;;
  }

  measure: total_qty60 {
    type: sum
    label: "QTY60 Metric"
    sql: ${qty60} ;;
  }

  measure: total_qty61 {
    type: sum
    label: "QTY61 Metric"
    sql: ${qty61} ;;
  }

  measure: total_qty62 {
    type: sum
    label: "QTY62 Metric"
    sql: ${qty62} ;;
  }

  measure: total_intr_dec1 {
    type: sum
    label: "INTR_DEC1 Metric"
    sql: ${intr_dec1} ;;
  }

  measure: total_intr_dec2 {
    type: sum
    label: "INTR_DEC2 Metric"
    sql: ${intr_dec2} ;;
  }

  measure: total_intr_dec3 {
    type: sum
    label: "INTR_DEC3 Metric"
    sql: ${intr_dec3} ;;
  }

  measure: total_intr_dec4 {
    type: sum
    label: "INTR_DEC4 Metric"
    sql: ${intr_dec4} ;;
  }

  measure: total_intr_dec5 {
    type: sum
    label: "INTR_DEC5 Metric"
    sql: ${intr_dec5} ;;
  }

  measure: total_intr_dec6 {
    type: sum
    label: "INTR_DEC6 Metric"
    sql: ${intr_dec6} ;;
  }

  measure: total_intr_dec7 {
    type: sum
    label: "INTR_DEC7 Metric"
    sql: ${intr_dec7} ;;
  }

  measure: total_intr_dec8 {
    type: sum
    label: "INTR_DEC8 Metric"
    sql: ${intr_dec8} ;;
  }

  measure: total_intr_dec9 {
    type: sum
    label: "INTR_DEC9 Metric"
    sql: ${intr_dec9} ;;
  }

  measure: total_intr_dec10 {
    type: sum
    label: "INTR_DEC10 Metric"
    sql: ${intr_dec10} ;;
  }

  measure: total_intr_dec11 {
    type: sum
    label: "INTR_DEC11 Metric"
    sql: ${intr_dec11} ;;
  }

  measure: total_intr_dec12 {
    type: sum
    label: "INTR_DEC12 Metric"
    sql: ${intr_dec12} ;;
  }

  measure: total_intr_dec13 {
    type: sum
    label: "INTR_DEC13 Metric"
    sql: ${intr_dec13} ;;
  }

  measure: total_intr_dec14 {
    type: sum
    label: "INTR_DEC14 Metric"
    sql: ${intr_dec14} ;;
  }

  measure: total_intr_dec15 {
    type: sum
    label: "INTR_DEC15 Metric"
    sql: ${intr_dec15} ;;
  }

  measure: total_intr_dec16 {
    type: sum
    label: "INTR_DEC16 Metric"
    sql: ${intr_dec16} ;;
  }

  measure: total_intr_dec17 {
    type: sum
    label: "INTR_DEC17 Metric"
    sql: ${intr_dec17} ;;
  }

  measure: total_intr_dec18 {
    type: sum
    label: "INTR_DEC18 Metric"
    sql: ${intr_dec18} ;;
  }

  measure: total_intr_dec19 {
    type: sum
    label: "INTR_DEC19 Metric"
    sql: ${intr_dec19} ;;
  }

  measure: total_intr_dec20 {
    type: sum
    label: "INTR_DEC20 Metric"
    sql: ${intr_dec20} ;;
  }

  measure: total_intr_dec21 {
    type: sum
    label: "INTR_DEC21 Metric"
    sql: ${intr_dec21} ;;
  }

  measure: total_intr_dec22 {
    type: sum
    label: "INTR_DEC22 Metric"
    sql: ${intr_dec22} ;;
  }

  measure: total_intr_dec23 {
    type: sum
    label: "INTR_DEC23 Metric"
    sql: ${intr_dec23} ;;
  }

  measure: total_intr_dec24 {
    type: sum
    label: "INTR_DEC24 Metric"
    sql: ${intr_dec24} ;;
  }

  measure: total_intr_dec25 {
    type: sum
    label: "INTR_DEC25 Metric"
    sql: ${intr_dec25} ;;
  }

  measure: total_intr_dec26 {
    type: sum
    label: "INTR_DEC26 Metric"
    sql: ${intr_dec26} ;;
  }

  measure: total_intr_dec27 {
    type: sum
    label: "INTR_DEC27 Metric"
    sql: ${intr_dec27} ;;
  }

  measure: total_intr_dec28 {
    type: sum
    label: "INTR_DEC28 Metric"
    sql: ${intr_dec28} ;;
  }

  measure: total_intr_dec29 {
    type: sum
    label: "INTR_DEC29 Metric"
    sql: ${intr_dec29} ;;
  }

  measure: total_intr_dec30 {
    type: sum
    label: "INTR_DEC30 Metric"
    sql: ${intr_dec30} ;;
  }

  measure: total_intr_dec31 {
    type: sum
    label: "INTR_DEC31 Metric"
    sql: ${intr_dec31} ;;
  }

  measure: total_intr_dec32 {
    type: sum
    label: "INTR_DEC32 Metric"
    sql: ${intr_dec32} ;;
  }

  measure: total_intr_dec33 {
    type: sum
    label: "INTR_DEC33 Metric"
    sql: ${intr_dec33} ;;
  }

  measure: total_intr_dec34 {
    type: sum
    label: "INTR_DEC34 Metric"
    sql: ${intr_dec34} ;;
  }

  measure: total_intr_dec35 {
    type: sum
    label: "INTR_DEC35 Metric"
    sql: ${intr_dec35} ;;
  }

  measure: total_intr_dec36 {
    type: sum
    label: "INTR_DEC36 Metric"
    sql: ${intr_dec36} ;;
  }

  measure: total_intr_dec37 {
    type: sum
    label: "INTR_DEC37 Metric"
    sql: ${intr_dec37} ;;
  }

  measure: total_intr_dec38 {
    type: sum
    label: "INTR_DEC38 Metric"
    sql: ${intr_dec38} ;;
  }

  measure: total_intr_dec39 {
    type: sum
    label: "INTR_DEC39 Metric"
    sql: ${intr_dec39} ;;
  }

  measure: total_intr_dec40 {
    type: sum
    label: "INTR_DEC40 Metric"
    sql: ${intr_dec40} ;;
  }

  measure: total_intr_dec41 {
    type: sum
    label: "INTR_DEC41 Metric"
    sql: ${intr_dec41} ;;
  }

  measure: total_intr_dec42 {
    type: sum
    label: "INTR_DEC42 Metric"
    sql: ${intr_dec42} ;;
  }

  measure: total_intr_dec43 {
    type: sum
    label: "INTR_DEC43 Metric"
    sql: ${intr_dec43} ;;
  }

  measure: total_intr_dec44 {
    type: sum
    label: "INTR_DEC44 Metric"
    sql: ${intr_dec44} ;;
  }

  measure: total_intr_dec45 {
    type: sum
    label: "INTR_DEC45 Metric"
    sql: ${intr_dec45} ;;
  }

  measure: total_intr_dec46 {
    type: sum
    label: "INTR_DEC46 Metric"
    sql: ${intr_dec46} ;;
  }

  measure: total_intr_dec47 {
    type: sum
    label: "INTR_DEC47 Metric"
    sql: ${intr_dec47} ;;
  }

  measure: total_intr_dec48 {
    type: sum
    label: "INTR_DEC48 Metric"
    sql: ${intr_dec48} ;;
  }

  measure: total_intr_dec49 {
    type: sum
    label: "INTR_DEC49 Metric"
    sql: ${intr_dec49} ;;
  }

  measure: total_intr_dec50 {
    type: sum
    label: "INTR_DEC50 Metric"
    sql: ${intr_dec50} ;;
  }

  measure: total_int1 {
    type: sum
    label: "INT1 Metric"
    sql: ${int1} ;;
  }

  measure: total_int2 {
    type: sum
    label: "INT2 Metric"
    sql: ${int2} ;;
  }

  measure: total_int3 {
    type: sum
    label: "INT3 Metric"
    sql: ${int3} ;;
  }

  measure: total_int4 {
    type: sum
    label: "INT4 Metric"
    sql: ${int4} ;;
  }

  measure: total_int5 {
    type: sum
    label: "INT5 Metric"
    sql: ${int5} ;;
  }

  measure: total_int6 {
    type: sum
    label: "INT6 Metric"
    sql: ${int6} ;;
  }

  measure: total_int7 {
    type: sum
    label: "INT7 Metric"
    sql: ${int7} ;;
  }

  measure: total_int8 {
    type: sum
    label: "INT8 Metric"
    sql: ${int8} ;;
  }

  measure: total_int9 {
    type: sum
    label: "INT9 Metric"
    sql: ${int9} ;;
  }

  measure: total_int10 {
    type: sum
    label: "INT10 Metric"
    sql: ${int10} ;;
  }

  measure: total_int11 {
    type: sum
    label: "INT11 Metric"
    sql: ${int11} ;;
  }

  measure: total_int12 {
    type: sum
    label: "INT12 Metric"
    sql: ${int12} ;;
  }

  measure: total_int13 {
    type: sum
    label: "INT13 Metric"
    sql: ${int13} ;;
  }

  measure: total_int14 {
    type: sum
    label: "INT14 Metric"
    sql: ${int14} ;;
  }

  measure: total_int15 {
    type: sum
    label: "INT15 Metric"
    sql: ${int15} ;;
  }

  measure: total_int16 {
    type: sum
    label: "INT16 Metric"
    sql: ${int16} ;;
  }

  measure: total_int17 {
    type: sum
    label: "INT17 Metric"
    sql: ${int17} ;;
  }

  measure: total_int18 {
    type: sum
    label: "INT18 Metric"
    sql: ${int18} ;;
  }

  measure: total_int19 {
    type: sum
    label: "INT19 Metric"
    sql: ${int19} ;;
  }

  measure: total_int20 {
    type: sum
    label: "INT20 Metric"
    sql: ${int20} ;;
  }

  measure: total_int21 {
    type: sum
    label: "INT21 Metric"
    sql: ${int21} ;;
  }

  measure: total_int22 {
    type: sum
    label: "INT22 Metric"
    sql: ${int22} ;;
  }

  measure: total_int23 {
    type: sum
    label: "INT23 Metric"
    sql: ${int23} ;;
  }

  measure: total_int24 {
    type: sum
    label: "INT24 Metric"
    sql: ${int24} ;;
  }

  measure: total_int25 {
    type: sum
    label: "INT25 Metric"
    sql: ${int25} ;;
  }

  measure: total_int26 {
    type: sum
    label: "INT26 Metric"
    sql: ${int26} ;;
  }

  measure: total_int27 {
    type: sum
    label: "INT27 Metric"
    sql: ${int27} ;;
  }

  measure: total_int28 {
    type: sum
    label: "INT28 Metric"
    sql: ${int28} ;;
  }

  measure: total_int29 {
    type: sum
    label: "INT29 Metric"
    sql: ${int29} ;;
  }

  measure: total_int30 {
    type: sum
    label: "INT30 Metric"
    sql: ${int30} ;;
  }

  measure: total_int31 {
    type: sum
    label: "INT31 Metric"
    sql: ${int31} ;;
  }

  measure: total_int32 {
    type: sum
    label: "INT32 Metric"
    sql: ${int32} ;;
  }

  measure: total_int33 {
    type: sum
    label: "INT33 Metric"
    sql: ${int33} ;;
  }

  measure: total_int34 {
    type: sum
    label: "INT34 Metric"
    sql: ${int34} ;;
  }

  measure: total_int35 {
    type: sum
    label: "INT35 Metric"
    sql: ${int35} ;;
  }

  measure: total_int36 {
    type: sum
    label: "INT36 Metric"
    sql: ${int36} ;;
  }

  measure: total_int37 {
    type: sum
    label: "INT37 Metric"
    sql: ${int37} ;;
  }

  measure: total_int38 {
    type: sum
    label: "INT38 Metric"
    sql: ${int38} ;;
  }

  measure: total_int39 {
    type: sum
    label: "INT39 Metric"
    sql: ${int39} ;;
  }

  measure: total_int40 {
    type: sum
    label: "INT40 Metric"
    sql: ${int40} ;;
  }

  measure: total_int41 {
    type: sum
    label: "INT41 Metric"
    sql: ${int41} ;;
  }

  measure: total_int42 {
    type: sum
    label: "INT42 Metric"
    sql: ${int42} ;;
  }

  measure: total_int43 {
    type: sum
    label: "INT43 Metric"
    sql: ${int43} ;;
  }

  measure: total_int44 {
    type: sum
    label: "INT44 Metric"
    sql: ${int44} ;;
  }

  measure: total_int45 {
    type: sum
    label: "INT45 Metric"
    sql: ${int45} ;;
  }

  measure: total_int46 {
    type: sum
    label: "INT46 Metric"
    sql: ${int46} ;;
  }

  measure: total_int47 {
    type: sum
    label: "INT47 Metric"
    sql: ${int47} ;;
  }

  measure: total_int48 {
    type: sum
    label: "INT48 Metric"
    sql: ${int48} ;;
  }

  measure: total_int49 {
    type: sum
    label: "INT49 Metric"
    sql: ${int49} ;;
  }

  measure: total_int50 {
    type: sum
    label: "INT50 Metric"
    sql: ${int50} ;;
  }

  set:  workbook_result_set {
    fields: [workbook_result_type,calc_price_amt,calc_price_amt_label,average_calc_price_amt,actual_price_amt_label,actual_price_amt,average_actual_price_amt,override_action_name,
      recalculated_ind_name,restatement_ind_name,pricechange_ind_name,amt1,amt1_label,total_amt1,amt2,amt2_label,total_amt2,amt3,amt3_label,total_amt3,amt4,amt4_label,total_amt4,amt5,
      amt5_label,total_amt5,amt6,amt6_label,total_amt6,amt7,amt7_label,total_amt7,amt8,amt8_label,total_amt8,amt9,amt9_label,total_amt9,amt10,amt10_label,total_amt10,amt11,amt11_label,
      total_amt11,amt12,amt12_label,total_amt12,amt13,amt13_label,total_amt13,amt14,amt14_label,total_amt14,amt15,amt15_label,total_amt15,amt16,amt16_label,total_amt16,amt17,amt17_label,
      total_amt17,amt18,amt18_label,total_amt18,amt19,amt19_label,total_amt19,amt20,amt20_label,total_amt20,amt21,amt21_label,total_amt21,amt22,amt22_label,total_amt22,amt23,amt23_label,
      total_amt23,amt24,amt24_label,total_amt24,amt25,amt25_label,total_amt25,amt26,amt26_label,total_amt26,amt27,amt27_label,total_amt27,amt28,amt28_label,total_amt28,amt29,amt29_label,
      total_amt29,amt30,amt30_label,total_amt30,amt31,amt31_label,total_amt31,amt32,amt32_label,total_amt32,amt33,amt33_label,total_amt33,amt34,amt34_label,total_amt34,amt35,amt35_label,
      total_amt35,amt36,amt36_label,total_amt36,amt37,amt37_label,total_amt37,amt38,amt38_label,total_amt38,amt39,amt39_label,total_amt39,amt40,amt40_label,total_amt40,amt41,amt41_label,
      total_amt41,amt42,amt42_label,total_amt42,amt43,amt43_label,total_amt43,amt44,amt44_label,total_amt44,amt45,amt45_label,total_amt45,amt46,amt46_label,total_amt46,amt47,amt47_label,
      total_amt47,amt48,amt48_label,total_amt48,amt49,amt49_label,total_amt49,amt50,amt50_label,total_amt50,amt51,amt51_label,total_amt51,amt52,amt52_label,total_amt52,amt53,amt53_label,
      total_amt53,amt54,amt54_label,total_amt54,amt55,amt55_label,total_amt55,amt56,amt56_label,total_amt56,amt57,amt57_label,total_amt57,amt58,amt58_label,total_amt58,amt59,amt59_label,
      total_amt59,amt60,amt60_label,total_amt60,amt61,amt61_label,total_amt61,amt62,amt62_label,total_amt62,amt63,amt63_label,total_amt63,amt64,amt64_label,total_amt64,amt65,amt65_label,
      total_amt65,amt66,amt66_label,total_amt66,amt67,amt67_label,total_amt67,amt68,amt68_label,total_amt68,qty1,qty1_label,total_qty1,qty2,qty2_label,total_qty2,qty3,qty3_label,total_qty3,
      qty4,qty4_label,total_qty4,qty5,qty5_label,total_qty5,qty6,qty6_label,total_qty6,qty7,qty7_label,total_qty7,qty8,qty8_label,total_qty8,qty9,qty9_label,total_qty9,qty10,qty10_label,
      total_qty10,qty11,qty11_label,total_qty11,qty12,qty12_label,total_qty12,qty13,qty13_label,total_qty13,qty14,qty14_label,total_qty14,qty15,qty15_label,total_qty15,qty16,qty16_label,
      total_qty16,qty17,qty17_label,total_qty17,qty18,qty18_label,total_qty18,qty19,qty19_label,total_qty19,qty20,qty20_label,total_qty20,qty21,qty21_label,total_qty21,qty22,qty22_label,
      total_qty22,qty23,qty23_label,total_qty23,qty24,qty24_label,total_qty24,qty25,qty25_label,total_qty25,qty26,qty26_label,total_qty26,qty27,qty27_label,total_qty27,qty28,qty28_label,
      total_qty28,qty29,qty29_label,total_qty29,qty30,qty30_label,total_qty30,qty31,qty31_label,total_qty31,qty32,qty32_label,total_qty32,qty33,qty33_label,total_qty33,qty34,qty34_label,
      total_qty34,qty35,qty35_label,total_qty35,qty36,qty36_label,total_qty36,qty37,qty37_label,total_qty37,qty38,qty38_label,total_qty38,qty39,qty39_label,total_qty39,qty40,qty40_label,
      total_qty40,qty41,qty41_label,total_qty41,qty42,qty42_label,total_qty42,qty43,qty43_label,total_qty43,qty44,qty44_label,total_qty44,qty45,qty45_label,total_qty45,qty46,qty46_label,
      total_qty46,qty47,qty47_label,total_qty47,qty48,qty48_label,total_qty48,qty49,qty49_label,total_qty49,qty50,qty50_label,total_qty50,qty51,qty51_label,total_qty51,qty52,qty52_label,
      total_qty52,qty53,qty53_label,total_qty53,qty54,qty54_label,total_qty54,qty55,qty55_label,total_qty55,qty56,qty56_label,total_qty56,qty57,qty57_label,total_qty57,qty58,qty58_label,
      total_qty58,qty59,qty59_label,total_qty59,qty60,qty60_label,total_qty60,qty61,qty61_label,total_qty61,qty62,qty62_label,total_qty62,intr_str1,intr_str1_label,intr_str2,intr_str2_label,
      intr_str3,intr_str3_label,intr_str4,intr_str4_label,intr_str5,intr_str5_label,intr_str6,intr_str6_label,intr_str7,intr_str7_label,intr_str8,intr_str8_label,intr_str9,intr_str9_label,
      intr_str10,intr_str10_label,intr_str11,intr_str11_label,intr_str12,intr_str12_label,intr_str13,intr_str13_label,intr_str14,intr_str14_label,intr_str15,intr_str15_label,intr_str16,
      intr_str16_label,intr_str17,intr_str17_label,intr_str18,intr_str18_label,intr_str19,intr_str19_label,intr_str20,intr_str20_label,intr_str21,intr_str21_label,intr_str22,
      intr_str22_label,intr_str23,intr_str23_label,intr_str24,intr_str24_label,intr_str25,intr_str25_label,intr_str26,intr_str26_label,intr_str27,intr_str27_label,intr_str28,
      intr_str28_label,intr_str29,intr_str29_label,intr_str30,intr_str30_label,intr_str31,intr_str31_label,intr_str32,intr_str32_label,intr_str33,intr_str33_label,intr_str34,
      intr_str34_label,intr_str35,intr_str35_label,intr_str36,intr_str36_label,intr_str37,intr_str37_label,intr_str38,intr_str38_label,intr_str39,intr_str39_label,intr_str40,
      intr_str40_label,intr_str41,intr_str41_label,intr_str42,intr_str42_label,intr_str43,intr_str43_label,intr_str44,intr_str44_label,intr_str45,intr_str45_label,intr_str46,
      intr_str46_label,intr_str47,intr_str47_label,intr_str48,intr_str48_label,intr_str49,intr_str49_label,intr_str50,intr_str50_label,intr_dec1,intr_dec1_label,total_intr_dec1,intr_dec2,
      intr_dec2_label,total_intr_dec2,intr_dec3,intr_dec3_label,total_intr_dec3,intr_dec4,intr_dec4_label,total_intr_dec4,intr_dec5,intr_dec5_label,total_intr_dec5,intr_dec6,intr_dec6_label,
      total_intr_dec6,intr_dec7,intr_dec7_label,total_intr_dec7,intr_dec8,intr_dec8_label,total_intr_dec8,intr_dec9,intr_dec9_label,total_intr_dec9,intr_dec10,intr_dec10_label,
      total_intr_dec10,intr_dec11,intr_dec11_label,total_intr_dec11,intr_dec12,intr_dec12_label,total_intr_dec12,intr_dec13,intr_dec13_label,total_intr_dec13,intr_dec14,intr_dec14_label,
      total_intr_dec14,intr_dec15,intr_dec15_label,total_intr_dec15,intr_dec16,intr_dec16_label,total_intr_dec16,intr_dec17,intr_dec17_label,total_intr_dec17,intr_dec18,intr_dec18_label,
      total_intr_dec18,intr_dec19,intr_dec19_label,total_intr_dec19,intr_dec20,intr_dec20_label,total_intr_dec20,intr_dec21,intr_dec21_label,total_intr_dec21,intr_dec22,intr_dec22_label,
      total_intr_dec22,intr_dec23,intr_dec23_label,total_intr_dec23,intr_dec24,intr_dec24_label,total_intr_dec24,intr_dec25,intr_dec25_label,total_intr_dec25,intr_dec26,intr_dec26_label,
      total_intr_dec26,intr_dec27,intr_dec27_label,total_intr_dec27,intr_dec28,intr_dec28_label,total_intr_dec28,intr_dec29,intr_dec29_label,total_intr_dec29,intr_dec30,intr_dec30_label,
      total_intr_dec30,intr_dec31,intr_dec31_label,total_intr_dec31,intr_dec32,intr_dec32_label,total_intr_dec32,intr_dec33,intr_dec33_label,total_intr_dec33,intr_dec34,intr_dec34_label,
      total_intr_dec34,intr_dec35,intr_dec35_label,total_intr_dec35,intr_dec36,intr_dec36_label,total_intr_dec36,intr_dec37,intr_dec37_label,total_intr_dec37,intr_dec38,intr_dec38_label,
      total_intr_dec38,intr_dec39,intr_dec39_label,total_intr_dec39,intr_dec40,intr_dec40_label,total_intr_dec40,intr_dec41,intr_dec41_label,total_intr_dec41,intr_dec42,intr_dec42_label,
      total_intr_dec42,intr_dec43,intr_dec43_label,total_intr_dec43,intr_dec44,intr_dec44_label,total_intr_dec44,intr_dec45,intr_dec45_label,total_intr_dec45,intr_dec46,intr_dec46_label,
      total_intr_dec46,intr_dec47,intr_dec47_label,total_intr_dec47,intr_dec48,intr_dec48_label,total_intr_dec48,intr_dec49,intr_dec49_label,total_intr_dec49,intr_dec50,intr_dec50_label,
      total_intr_dec50,int1,int1_label,total_int1,int2,int2_label,total_int2,int3,int3_label,total_int3,int4,int4_label,total_int4,int5,int5_label,total_int5,int6,int6_label,total_int6,
      int7,int7_label,total_int7,int8,int8_label,total_int8,int9,int9_label,total_int9,int10,int10_label,total_int10,int11,int11_label,total_int11,int12,int12_label,total_int12,int13,
      int13_label,total_int13,int14,int14_label,total_int14,int15,int15_label,total_int15,int16,int16_label,total_int16,int17,int17_label,total_int17,int18,int18_label,total_int18,int19,
      int19_label,total_int19,int20,int20_label,total_int20,int21,int21_label,total_int21,int22,int22_label,total_int22,int23,int23_label,total_int23,int24,int24_label,total_int24,int25,
      int25_label,total_int25,int26,int26_label,total_int26,int27,int27_label,total_int27,int28,int28_label,total_int28,int29,int29_label,total_int29,int30,int30_label,total_int30,int31,
      int31_label,total_int31,int32,int32_label,total_int32,int33,int33_label,total_int33,int34,int34_label,total_int34,int35,int35_label,total_int35,int36,int36_label,total_int36,int37,
      int37_label,total_int37,int38,int38_label,total_int38,int39,int39_label,total_int39,int40,int40_label,total_int40,int41,int41_label,total_int41,int42,int42_label,total_int42,int43,
      int43_label,total_int43,int44,int44_label,total_int44,int45,int45_label,total_int45,int46,int46_label,total_int46,int47,int47_label,total_int47,int48,int48_label,total_int48,int49,
      int49_label,total_int49,int50,int50_label,total_int50,intr_clob1,intr_clob1_label,intr_clob2,intr_clob2_label,intr_clob3,intr_clob3_label,intr_clob4,intr_clob4_label,intr_clob5,
      intr_clob5_label]
  }

}
