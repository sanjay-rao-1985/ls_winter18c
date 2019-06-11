view: mn_gp_netpp_fact {

    sql_table_name: MN_GP_NETPP_FACT_VW ;;


  dimension: netpp_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.NETPP_WID ;;
  }

  dimension: src_sys_netpp_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_NETPP_ID ;;
  }

  dimension: src_sys_workbook_result_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_WORKBOOK_RESULT_ID ;;
  }

  dimension: data_source_num {
    type: number
    hidden: yes
    sql: ${TABLE}.DATA_SOURCE_NUM ;;
  }

  dimension: ndc {
    type: string
    hidden: yes
    sql: ${TABLE}.NDC ;;
  }

  dimension: workbook_result_type {
    type: string
    hidden: yes
    sql: ${TABLE}.WORKBOOK_RESULT_TYPE ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: workbook_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.WORKBOOK_WID ;;
  }

  dimension: gp_price_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.GP_PRICE_TYPE_WID ;;
  }

  dimension: contracted_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACTED_CUSTOMER_WID ;;
  }

  dimension: calc_price_amt {
    type: number
    label: "Net Price"
    value_format_name: usd_6
    sql: ${TABLE}.CALC_PRICE_AMT ;;
  }

  dimension: calc_price_cur {
    type: string
    hidden: yes
    sql: ${TABLE}.CALC_PRICE_CUR ;;
  }

  dimension: actual_price_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.ACTUAL_PRICE_AMT ;;
  }

  dimension: actual_price_cur {
    type: string
    hidden: yes
    sql: ${TABLE}.ACTUAL_PRICE_CUR ;;
  }

  dimension: algorithm {
    type: string
    sql: ${TABLE}.ALGORITHM ;;
  }

  dimension: algorithm_name {
    type: string
    hidden: yes
    sql: ${TABLE}.ALGORITHM_NAME ;;
  }

  dimension: period {
    type: string
    hidden: yes
    sql: ${TABLE}.PERIOD ;;
  }

  dimension: start_date_num {
    type: number
    hidden: yes
    sql: ${TABLE}.START_DATE_NUM ;;
  }

  dimension: end_date_num {
    type: number
    hidden: yes
    sql: ${TABLE}.END_DATE_NUM ;;
  }

  dimension: override_action {
    type: number
    hidden: yes
    sql: ${TABLE}.OVERRIDE_ACTION ;;
  }

  dimension: override_action_name {
    type: string
    hidden: yes
    sql: ${TABLE}.OVERRIDE_ACTION_NAME ;;
  }

  dimension: amt1 {
    type: number
    label: "AMT1 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT1 ;;
  }

  dimension: qty1 {
    type: number
    label: "QTY1 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY1 ;;
  }

  dimension: amt2 {
    type: number
    label: "AMT2 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT2 ;;
  }

  dimension: qty2 {
    type: number
    label: "QTY2 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY2 ;;
  }

  dimension: amt3 {
    type: number
    label: "AMT3 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT3 ;;
  }

  dimension: qty3 {
    type: number
    label: "QTY3 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY3 ;;
  }

  dimension: amt4 {
    type: number
    label: "AMT4 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT4 ;;
  }

  dimension: qty4 {
    type: number
    label: "QTY4 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY4 ;;
  }

  dimension: amt5 {
    type: number
    label: "AMT5 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT5 ;;
  }

  dimension: qty5 {
    type: number
    label: "QTY5 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY5 ;;
  }

  dimension: amt6 {
    type: number
    label: "AMT6 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT6 ;;
  }

  dimension: qty6 {
    type: number
    label: "QTY6 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY6 ;;
  }

  dimension: amt7 {
    type: number
    label: "AMT7 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT7 ;;
  }

  dimension: qty7 {
    type: number
    label: "QTY7 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY7 ;;
  }

  dimension: amt8 {
    type: number
    label: "AMT8 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT8 ;;
  }

  dimension: qty8 {
    type: number
    label: "QTY8 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY8 ;;
  }

  dimension: amt9 {
    type: number
    label: "AMT9 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT9 ;;
  }

  dimension: qty9 {
    type: number
    label: "QTY9 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY9 ;;
  }

  dimension: amt10 {
    type: number
    label: "AMT10 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT10 ;;
  }

  dimension: qty10 {
    type: number
    label: "QTY10 Value"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY10 ;;
  }

  dimension: amt11 {
    type: number
    label: "AMT11 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT11 ;;
  }

  dimension: amt12 {
    type: number
    label: "AMT12 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT12 ;;
  }

  dimension: amt13 {
    type: number
    label: "AMT13 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT13 ;;
  }

  dimension: amt14 {
    type: number
    label: "AMT14 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT14 ;;
  }

  dimension: amt15 {
    type: number
    label: "AMT15 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT15 ;;
  }

  dimension: amt16 {
    type: number
    label: "AMT16 Value"
    group_label: "Mapping Attributes"
    value_format_name: usd_6
    sql: ${TABLE}.AMT16 ;;
  }

  dimension: amt1_label {
    type: string
    label: "AMT1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT1_LABEL ;;
  }

  dimension: qty1_label {
    type: string
    label: "QTY1 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY1_LABEL ;;
  }

  dimension: amt2_label {
    type: string
    label: "AMT2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT2_LABEL ;;
  }

  dimension: qty2_label {
    type: string
    label: "QTY2 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY2_LABEL ;;
  }

  dimension: amt3_label {
    type: string
    label: "AMT3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT3_LABEL ;;
  }

  dimension: qty3_label {
    type: string
    label: "QTY3 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY3_LABEL ;;
  }

  dimension: amt4_label {
    type: string
    label: "AMT4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT4_LABEL ;;
  }

  dimension: qty4_label {
    type: string
    label: "QTY4 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY4_LABEL ;;
  }

  dimension: amt5_label {
    type: string
    label: "AMT5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT5_LABEL ;;
  }

  dimension: qty5_label {
    type: string
    label: "QTY5 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY5_LABEL ;;
  }

  dimension: amt6_label {
    type: string
    label: "AMT6 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT6_LABEL ;;
  }

  dimension: qty6_label {
    type: string
    label: "QTY6 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY6_LABEL ;;
  }

  dimension: amt7_label {
    type: string
    label: "AMT7 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT7_LABEL ;;
  }

  dimension: qty7_label {
    type: string
    label: "QTY7 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY7_LABEL ;;
  }

  dimension: amt8_label {
    type: string
    label: "AMT8 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT8_LABEL ;;
  }

  dimension: qty8_label {
    type: string
    label: "QTY8 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY8_LABEL ;;
  }

  dimension: amt9_label {
    type: string
    label: "AMT9 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT9_LABEL ;;
  }

  dimension: qty9_label {
    type: string
    label: "QTY9 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY9_LABEL ;;
  }

  dimension: qty10_label {
    type: string
    label: "QTY10 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.QTY10_LABEL ;;
  }

  dimension: amt10_label {
    type: string
    label: "AMT10 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT10_LABEL ;;
  }

  dimension: amt11_label {
    type: string
    label: "AMT11 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT11_LABEL ;;
  }

  dimension: amt12_label {
    type: string
    label: "AMT12 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT12_LABEL ;;
  }

  dimension: amt13_label {
    type: string
    label: "AMT13 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT13_LABEL ;;
  }

  dimension: amt14_label {
    type: string
    label: "AMT14 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT14_LABEL ;;
  }

  dimension: amt15_label {
    type: string
    label: "AMT15 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT15_LABEL ;;
  }

  dimension: amt16_label {
    type: string
    label: "AMT16 Name"
    group_label: "Mapping Attributes"
    sql: ${TABLE}.AMT16_LABEL ;;
  }

  dimension: dec2 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC2 ;;
  }

  dimension: dec3 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC3 ;;
  }

  dimension: dec4 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC4 ;;
  }

  dimension: dec5 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC5 ;;
  }

  dimension: dec6 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC6 ;;
  }

  dimension: dec7 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC7 ;;
  }

  dimension: dec8 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC8 ;;
  }

  dimension: dec9 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC9 ;;
  }

  dimension: dec10 {
    type: number
    hidden: yes
    sql: ${TABLE}.DEC10 ;;
  }

  dimension: str1 {
    type: string
    label: "Current Override"
    sql: ${TABLE}.STR1 ;;
  }

  dimension: str2 {
    type: string
    label: "Line Link ID"
    sql: ${TABLE}.STR2 ;;
  }

  dimension: str3 {
    type: string
    label: "Type"
    sql: ${TABLE}.STR3 ;;
  }

  dimension: str4 {
    type: string
    label: "Result Status"
    sql: ${TABLE}.STR4 ;;
  }

  dimension: str5 {
    type: string
    hidden: yes
    sql: ${TABLE}.STR5 ;;
  }

  dimension: str6 {
    type: string
    hidden: yes
    sql: ${TABLE}.STR6 ;;
  }

  dimension: src_sys_cat_obj_vnum {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CAT_OBJ_VNUM ;;
  }

  dimension: src_sys_cached_prior_result_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CACHED_PRIOR_RESULT_ID ;;
  }

  dimension: src_sys_struct_doc_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_DOC_ID ;;
  }

  dimension: src_sys_prc_period_li_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PRC_PERIOD_LI_ID ;;
  }

  dimension_group: src_sys_date_created {
    type: time
    hidden: yes
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension_group: src_sys_date_updated {
    type: time
    hidden: yes
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
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

  dimension_group: date_created {
    type: time
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    hidden: yes
    sql: ${TABLE}.DATE_UPDATED ;;
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


  set: wb_results_npp_set {
    fields: [calc_price_amt,str1,str3,str4,amt1,amt2,amt3,amt4,amt5,amt6,amt7,amt8,amt9,amt10,amt11,amt12,amt13,amt14,amt15,amt16,
             qty1,qty2,qty3,qty4,qty5,qty6,qty7,qty8,qty9,qty10,amt1_label,amt2_label,amt3_label,
             amt4_label,amt5_label,amt6_label,amt7_label,amt8_label,amt9_label,amt10_label,amt11_label,amt12_label,amt13_label,
             amt14_label,amt15_label,amt16_label,qty1_label,qty2_label,qty3_label,qty4_label,qty5_label,qty6_label,qty7_label,qty8_label,
             qty9_label,qty10_label,total_amt1,total_amt2,total_amt3,total_amt4,total_amt5,total_amt6,total_amt7,total_amt8,total_amt9,total_amt10,
             total_amt11,total_amt12,total_amt13,total_amt14,total_amt15,total_amt16,total_qty1,total_qty2,total_qty3,total_qty4,total_qty5,
             total_qty6,total_qty7,total_qty8,total_qty9,total_qty10,str2]
  }

}
