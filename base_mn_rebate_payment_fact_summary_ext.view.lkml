include: "base_mn_rebate_payment_fact.view.lkml"

view: mn_rbt_pmnt_fact_summary {
  extends: [mn_rebate_payment_fact]


  dimension: proj_rebate_pmnt {
    type: number
    sql: CASE WHEN TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) BETWEEN ${start_date_wid} AND ${end_date_wid}
                THEN (${net_due_amount} / (SYSDATE - TO_DATE(${start_date_wid}, 'YYYYMMDD'))) * (TO_DATE(${end_date_wid}, 'YYYYMMDD') - TO_DATE(${start_date_wid}, 'YYYYMMDD'))
              WHEN TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) < ${start_date_wid}
                THEN 0
          ELSE ${net_due_amount}
          END  ;;
  }

  measure: rebate_pmnt_net_due_amt {
    type: max
    label: "Maximum Actual Rebate Payment Amount"
    value_format_name: decimal_2
    sql: ${net_due_amount} ;;
    #sql: MAX(${net_due_amount}) ;;
  }

  measure: projected_rebate_pmnt {
    type: max
    label: "Maximum Projected Rebate Payment Amount"
    value_format_name: decimal_2
    sql: ${proj_rebate_pmnt} ;;
    #sql: MAX(${proj_rebate_pmnt}) ;;
  }

}
