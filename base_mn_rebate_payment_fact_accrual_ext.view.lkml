include: "base_mn_rebate_payment_fact.view.lkml"
view: mn_rbt_pmnt_fact_accrual {
    extends: [mn_rebate_payment_fact]

  dimension: past_proj_rebate_due_amt_dim {
    type: number
    label: "Past_Projected_Rebate_Amt_Due"
    sql: CASE WHEN ${mn_date_dim.start_date_sql_raw} < TO_DATE(${mn_rebate_payment_fact.start_date_wid}, 'YYYYMMDD')
          THEN
          -- Past rebate payments
            (SELECT
              AVG( (CASE WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN NET_DUE_AMT
            ELSE NET_DUE_AMT_BASE
                   END)/CEIL(MONTHS_BETWEEN(TO_DATE(allpast.END_DATE_WID,'YYYYMMDD'), TO_DATE(allpast.START_DATE_WID,'YYYYMMDD')+1)))
              FROM MN_REBATE_PAYMENT_FACT_VW allpast
              WHERE  ${mn_rebate_payment_fact.contract_wid} = allpast.CONTRACT_WID
                      AND ${mn_rebate_payment_fact.rebate_program_wid} = allpast.REBATE_PROGRAM_WID
                      AND allpast.pmt_status <> 'Terminated'
                      AND ${mn_rebate_payment_fact.commited_customer_wid} = allpast.COMMITED_CUSTOMER_WID
              AND  TO_CHAR(${mn_date_dim.start_date_sql_raw} + 1,'YYYYMMDD') BETWEEN allpast.START_DATE_WID AND allpast.END_DATE_WID
    )
          ELSE
          -- Projected rebate payments
          NVL(${mn_rebate_payment_fact_past.net_due_amount}, ${mn_rebate_payment_fact.net_due_amount}) / CEIL(MONTHS_BETWEEN(TO_DATE(${mn_rebate_payment_fact.end_date_wid},'YYYYMMDD'), TO_DATE(${mn_rebate_payment_fact.start_date_wid},'YYYYMMDD') + 1))
          END
          ;;

  }


  measure: past_proj_rebate_due_amt {
    type: number
    label: "Past_Projected_Rebate_Amt_Due"
    value_format_name: decimal_2
    sql: AVG(${past_proj_rebate_due_amt_dim}) ;;
  }

  dimension: prior_curr_period_pmnt_status {
    type: string
    label: "Prior or Current Period Payment Status"
    sql: NVL(${mn_rebate_payment_fact_past.payment_status}, ${mn_rebate_payment_fact.payment_status}) ;;
  }


}
