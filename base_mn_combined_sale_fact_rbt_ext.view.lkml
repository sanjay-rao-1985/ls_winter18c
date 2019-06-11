include: "base_mn_combined_sale_fact.view.lkml"

view: mn_combined_sale_fact_rbt {
  extends: [mn_combined_sale_fact]
  sql_table_name: MN_LKR_COMBINED_SALE_FACT_VW ;;


  dimension: proj_revenue {
    type: number
    sql: CASE WHEN TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) BETWEEN ${mn_rebate_payment_fact.start_date_wid} AND ${mn_rebate_payment_fact.end_date_wid}
          THEN (${inv_revenue_local} / (SYSDATE - TO_DATE(${mn_rebate_payment_fact.start_date_wid}, 'YYYYMMDD'))) * (TO_DATE(${mn_rebate_payment_fact.end_date_wid}, 'YYYYMMDD') - TO_DATE(${mn_rebate_payment_fact.start_date_wid}, 'YYYYMMDD'))
          WHEN TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) < ${mn_rebate_payment_fact.start_date_wid}
          THEN 0
          ELSE  ${inv_revenue_local}
    END  ;;
  }

  dimension: proj_volume {
    type: number
    sql: CASE WHEN TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) BETWEEN ${mn_rebate_payment_fact.start_date_wid} AND ${mn_rebate_payment_fact.end_date_wid}
          THEN (${inv_qty} / (SYSDATE - TO_DATE(${mn_rebate_payment_fact.start_date_wid}, 'YYYYMMDD'))) * (TO_DATE(${mn_rebate_payment_fact.end_date_wid}, 'YYYYMMDD') - TO_DATE(${mn_rebate_payment_fact.start_date_wid}, 'YYYYMMDD'))
          WHEN TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) < ${mn_rebate_payment_fact.start_date_wid}
          THEN 0
          ELSE ${inv_qty}
    END  ;;
  }

  measure: projected_revenue {
    type: sum
    label: "Projected Revenue"
    value_format_name: decimal_0
    sql:  CASE
    WHEN {% condition mn_rebate_payment_fact.base_local_curr_selection %} 'Local' {% endcondition %} THEN ${proj_revenue}
    ELSE ${proj_revenue}  * ${exchange_rate}
    END  ;;
  }

  measure: decimal_revenue {
    type: sum
    sql:  CASE
    WHEN {% condition mn_rebate_payment_fact.base_local_curr_selection %} 'Local' {% endcondition %} THEN ${inv_revenue_local}
    ELSE ${inv_revenue_local} * ${exchange_rate}
    END ;;
    label: "Revenue (decimal)"
    value_format_name: decimal_0
  }

  measure: projected_volume {
    type: sum
    label: "Projected Volume"
    value_format_name: decimal_0
    sql: ${proj_volume} ;;
  }

}
