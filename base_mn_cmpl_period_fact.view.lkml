view: mn_cmpl_period_fact {
  sql_table_name: MN_CMPL_PERIOD_FACT_VW ;;


  dimension: actual_amt_to_date {
    type: number
#     hidden: yes
    label: "Actual Revenue To Date"
    value_format_name: usd
    sql: CASE
      WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${actual_amt_to_date_local}
      ELSE ${actual_amt_to_date_base}
    END ;;
  }

  dimension: actual_amt_to_date_local {
    type: number
    hidden: yes
    label: "Actual Revenue To Date Local Currency"
    sql: NVL(${TABLE}.ACTUAL_AMT_TO_DATE,0) ;;
  }

  dimension: actual_amt_to_date_base {
    type: number
    hidden: yes
    sql:  NVL(${TABLE}.ACTUAL_AMT_TO_DATE_BASE,0) ;;
  }

  dimension: attained_tier {
    type: number
    label: "Attained Tier"
    sql: ${TABLE}.ATTAINED_TIER ;;
  }

  dimension: cmpl_threshold {
    type: number
    label: "Compliance Threshold"
    value_format_name: percent_2
    sql: ${TABLE}.CMPL_THRESHOLD ;;
  }

  dimension: commit_tier {
    type: number
    label: "Committed Tier"
    sql: ${TABLE}.COMMIT_TIER ;;
  }

  dimension: commit_ver_num {
    type: number
    sql: ${TABLE}.COMMIT_VER_NUM ;;
    hidden: yes
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: currency {
    type: string
    label: "Currency"
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
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

  dimension_group: date_retired {
    type: time
    hidden: yes
    label: "Retired"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_RETIRED ;;
  }

  dimension: date_retired_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.DATE_RETIRED_WID ;;
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

  dimension: definition_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.DEFINITION_WID ;;
  }

  dimension: equiv_rev_value {
    type: number
    label: "Equiv Revenue Value Local Currency"
    value_format_name: usd

    sql: CASE
      WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${equiv_rev_value_local}
      ELSE ${equiv_rev_value_base}
    END ;;
  }

  dimension: equiv_rev_value_local {
    type: number
    label: "Equiv Revenue Value"
    value_format_name: usd
    sql: ${TABLE}.EQUIV_REV_VALUE ;;
  }

  dimension: equiv_rev_value_base {
    type: number
    hidden: yes
    sql: ${TABLE}.EQUIV_REV_VALUE_BASE ;;
  }

  dimension: equiv_value {
    type: number
    label: "Equiv Value"
    value_format_name: usd
    sql: ${TABLE}.EQUIV_VALUE ;;
  }

  dimension: exchange_rate {
    type: number
    hidden: yes
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: expected_amt_to_date {
    type: number
    hidden: yes
    label: "Expected Amount To Date"
    sql: CASE
      WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${expected_amt_to_date_local}
      ELSE ${expected_amt_to_date_base}
    END ;;
  }

  dimension: expected_amt_to_date_local {
    type: number
    hidden: yes
    label: "Expected Amount To Date Local Currency"
    sql: NVL(${TABLE}.EXPECTED_AMT_TO_DATE,0) ;;
  }

  dimension: expected_amt_to_date_base {
    type: number
    hidden: yes
    sql: ${TABLE}.EXPECTED_AMT_TO_DATE_BASE ;;
  }

  dimension: hidden_flag {
    type: string
    hidden: yes
    label: "Hidden Flag"
    sql: ${TABLE}.HIDDEN_FLAG ;;
  }

  dimension: hidden_flag_yes_no {
    type: string
    label: "Is Hidden ?"
    sql: CASE WHEN ${hidden_flag} = 'Y' THEN 'Yes'
               WHEN ${hidden_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: org_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension_group: override_tier_change {
    type: time
    label: "Change"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.OVER_TIER_CHG_DATE ;;
  }

  dimension: pct_rev_cmpl {
    type: number
    value_format_name: percent_2
    label: "% Revenue Compliant"
    sql: ${TABLE}.PCT_REV_CMPL ;;
  }

  dimension: pct_vol_cmpl {
    type: number
    value_format_name: percent_2
    label: "% Volume Compliant"
    sql: ${TABLE}.PCT_VOL_CMPL ;;
  }

  dimension_group: period_end {
    type: time
    label: "End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension: period_num {
    type: string
    label: "ID"
    sql: ${TABLE}.PERIOD_NUM ;;

    # Navigation link to RC
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }
  }

  dimension: period_pkg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_PKG_WID ;;
  }

  dimension_group: period_start {
    type: time
    label: "Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: period_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: period_status {
    type: string
    label: "Status"
    sql: ${TABLE}.PERIOD_STATUS ;;
  }

  dimension: period_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PERIOD_WID ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: prd_cmtmnt_created_by_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_CREATED_BY_ID ;;
  }

  dimension: prd_cmtmnt_created_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_CREATED_BY_WID ;;
  }

  dimension_group: prd_cmtmnt_date_created {
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
    sql: ${TABLE}.PRD_CMTMNT_DATE_CREATED ;;
  }

  dimension_group: prd_cmtmnt_date_updated {
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
    sql: ${TABLE}.PRD_CMTMNT_DATE_UPDATED ;;
  }

  dimension: prd_cmtmnt_dt_created_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRD_CMTMNT_DT_CREATED_WID ;;
  }

  dimension: prd_cmtmnt_dt_updated_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRD_CMTMNT_DT_UPDATED_WID ;;
  }

  dimension: prd_cmtmnt_revenue {
    type: number
    value_format_name: usd
    label: "Actual Revenue To Date"
    hidden: yes
    sql: CASE
      WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${prd_cmtmnt_revenue_local}
      ELSE ${prd_cmtmnt_revenue_base}
    END ;;
  }

  dimension: prd_cmtmnt_revenue_local {
    type: number
    value_format_name: usd
    label: "Actual Revenue To Date Local Currency"
    sql: ${TABLE}.PRD_CMTMNT_REVENUE ;;
  }

  dimension: prd_cmtmnt_revenue_base {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_REVENUE_BASE ;;
  }

  dimension: prd_cmtmnt_revenue_curr {
    type: string
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_REVENUE_CURR ;;
  }

  dimension: prd_cmtmnt_review_status {
    type: string
    label: "Compliance Status"
    sql: ${TABLE}.PRD_CMTMNT_REVIEW_STATUS ;;
  }

  dimension: prd_cmtmnt_tier_attained {
    type: number
    label: "Commitment Tier Attained"
    sql: ${TABLE}.PRD_CMTMNT_TIER_ATTAINED ;;
  }

  dimension: prd_cmtmnt_updated_by_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_UPDATED_BY_ID ;;
  }

  dimension: prd_cmtmnt_updated_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRD_CMTMNT_UPDATED_BY_WID ;;
  }

  dimension: prior_period_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRIOR_PERIOD_WID ;;
  }

  # Obsolete RICLS-4711
  # dimension: product_cat_wid {
  #   type: number
  #   hidden: yes
  #   sql: ${TABLE}.PRODUCT_CAT_WID ;;
  # }

  dimension: program_based_flag {
    type: string
    label: "Program Based"
    hidden: yes
    sql: ${TABLE}.PROGRAM_BASED_FLAG ;;
  }

  dimension: program_based_flag_yes_no {
    type: string
    label: "Is Program Based ?"
    sql: CASE WHEN ${program_based_flag} = 'Y' THEN 'Yes'
               WHEN ${program_based_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: proj_rev_at_risk {
    type: number
    label: "Projected Revenue at Risk"
    value_format_name: usd
    sql: CASE
      WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${proj_rev_at_risk_local}
      ELSE ${proj_rev_at_risk_base}
    END ;;
  }

  dimension: proj_rev_at_risk_local {
    type: number
    label: "Projected Revenue at Risk Local Currency"
    value_format_name: usd
    sql: ${TABLE}.PROJ_REV_AT_RISK ;;
  }

  dimension: proj_rev_at_risk_base {
    type: number
    hidden: yes
    sql: ${TABLE}.PROJ_REV_AT_RISK_BASE ;;
  }

  dimension: projected_tier {
    type: number
    label: "Projected Tier"
    sql: ${TABLE}.PROJECTED_TIER ;;
  }

  dimension: review_status {
    type: string
    label: "Review Status"
    sql: ${TABLE}.REVIEW_STATUS ;;
  }

  dimension: review_status_formatted {
    type: string
    label: "Review Status (Formatted)"
    sql: ${review_status} ;;
    html:  {% if value == "Out of Compliance" %}
        <p style="color: white; background-color: red">{{ rendered_value }}</p>
       {% elsif value == "Over Compliant" %}
        <p style="color: white; background-color: blue">{{ rendered_value }}</p>
      {% else %}
        <p style="color: white; background-color: green">{{ rendered_value }}</p>
      {% endif %}
      ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension_group: src_ready {
    type: time
    label: "Ready for Processing"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SRC_READY_DATE ;;
  }

  dimension: src_sys_commit_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_period_cmtmnt_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PERIOD_CMTMNT_ID ;;
  }

  dimension: src_sys_period_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PERIOD_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    hidden: yes
    label: "Strategy Based Flag"
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: strategy_based_flag_yes_no {
    type: string
    label: "Is Strategy Based ?"
    sql: CASE WHEN ${strategy_based_flag} = 'Y' THEN 'Yes'
               WHEN ${strategy_based_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension_group: suggested_tier_change {
    type: time
    label: "Tier Change Suggested"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SUGG_TIER_CHG_DATE ;;
  }

  dimension: tier_change_type {
    type: string
    label: "Tier Change Type"
    sql: ${TABLE}.TIER_CHANGE_TYPE ;;
  }

  dimension: tier_min_value {
    type: string
    label: "Tier Min Value"
    sql: ${TABLE}.TIER_MIN_VALUE ;;
  }

  dimension: tier_override {
    type: string
    label: "Override Tier"
    sql: ${TABLE}.TIER_OVERRIDE ;;
  }

  dimension: tier_reason_code {
    type: string
    label: "Override Reason"
    sql: ${TABLE}.TIER_REASON_CODE ;;
  }

  dimension: total_days_in_period {
    label: "Days in Period up to Date"
    #Used in SI - days in period untill curent date.
    sql:  ROUND(TRUNC(LEAST(CAST(${period_end_raw} AS DATE), SYSDATE),'DD') - TRUNC(LEAST(CAST(${period_start_raw} AS DATE), SYSDATE),'DD') +1) ;;
  }

  dimension: overall_days_in_period {
    label: "Total Days in Period"
    sql:  ROUND(TRUNC(CAST(${period_end_raw} AS DATE),'DD') - TRUNC(CAST(${period_start_raw} AS DATE), 'DD') +1) ;;
  }

#   parameter: effective_flag_filter {
#     label: "Period Effective Date Filter"
#     type:  date_time
#     sql: {% parameter effective_flag_filter %}  BETWEEN ${period_start_raw} and ${period_end_raw};;
#   }

  filter: date_frame_selection {
    label: "Period Timeframe Selection"
    default_value: "Quarter"
    suggestions: ["Month", "Quarter",  "Year"]
  }


  dimension: date_period {
    type:  string
    sql:
    CASE
      WHEN {% condition date_frame_selection %} 'Year' {% endcondition %} THEN  TO_CHAR(${period_end_year})
      WHEN {% condition date_frame_selection %} 'Quarter' {% endcondition %} THEN   TO_CHAR(${period_end_raw},'YYYY')||'-Q'||TO_CHAR(${period_end_raw},'Q')
      ELSE
        ${period_end_month}
    END ;;
  }

  ##### Base/Local Currency selector. Default Local
  filter: base_local_curr_selection {
    label: "Currency Mode"
    default_value: "Local"
    suggestions: ["Local", "Base"]
  }



  measure: cmpl_period_count {
    type: count
    label: "Compliance Period Count"
    drill_fields: []
  }

  measure: actual_sales {
  type: sum
  label: "Actual Revenue To Date"
  value_format_name: usd
  sql: ${actual_amt_to_date} ;;
  }

  measure: expected_sales {
    type: sum
    label: "Expected Amount To Date"
    value_format_name: usd
    sql: ${expected_amt_to_date} ;;
  }

  measure: revenue_loss_to_date {
    type: sum
    label: "Revenue Loss To Date"
    value_format_name: usd
    sql: CASE WHEN ${review_status} = 'Out of Compliance' AND ${period_start_raw}  < SYSDATE
         THEN  (NVL(${expected_amt_to_date},0) - NVL(${actual_amt_to_date},0))
         ELSE 0
        END;;
  }

  measure: revenue_over_to_date {
    type: sum
    label: "Revenue Over Compliance"
    value_format_name: usd
    sql: CASE WHEN ${review_status} = 'Over Compliant' AND ${period_start_raw}  < SYSDATE
         THEN NVL(${actual_amt_to_date},0) - NVL(${expected_amt_to_date},0)
         ELSE 0
        END;;
  }

  measure: revenue_loss {
    type: sum
    label: "Revenue Loss"
    value_format_name: usd
    sql: CASE WHEN ${review_status} = 'Out of Compliance' AND ${period_start_raw}  < SYSDATE
         THEN  (NVL(${expected_amt_to_date},0) -  NVL(${actual_amt_to_date},0))*${overall_days_in_period}/NULLIF(${total_days_in_period},0)
         ELSE 0
        END;;
  }

  measure: review_status_total {
    type: number
    drill_fields: []
    hidden: yes
    sql: COUNT(${TABLE}.REVIEW_STATUS) ;;

  }

  measure: customer_count_total {
    type: number
    label: "Customer Count"
    drill_fields: []
    hidden: no
    sql: COUNT(DISTINCT ${TABLE}.CUSTOMER_WID) ;;

  }

  measure: review_status_compliant {
    type: number
    drill_fields: []
    group_label: "Compliance Ratio"
    value_format_name: percent_2
    #view_label: "Compliance Ratio - Compliant"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Compliant' THEN 1 ELSE 0 END) / NULLIF(${review_status_total}, 0) ;;
  }

  measure: review_status_out_of_compliance {
    type: number
    drill_fields: []
    group_label: "Compliance Ratio"
    value_format_name: percent_2
    #view_label: "Compliance Ratio - Out of Compliance"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Out of Compliance' THEN 1 ELSE 0 END) / NULLIF(${review_status_total}, 0) ;;
  }

  measure: review_status_over_compliant {
    type: number
    drill_fields: []
    group_label: "Compliance Ratio"
    value_format_name: percent_2
    #view_label: "Compliance Ratio - Over Compliant"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Over Compliant' THEN 1 ELSE 0 END) / NULLIF(${review_status_total}, 0) ;;
  }

  measure: review_status_compliant_count {
    type: number
    drill_fields: []
    group_label: "Compliance Count"
    value_format_name: decimal_0
    #view_label: "Compliance Ratio - Compliant"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Compliant' THEN 1 ELSE 0 END);;
  }

  measure: review_status_out_of_compliance_count {
    type: number
    drill_fields: []
    group_label: "Compliance Count"
    value_format_name: decimal_0
    #view_label: "Compliance Ratio - Out of Compliance"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Out of Compliance' THEN 1 ELSE 0 END)  ;;
  }

  measure: review_status_over_compliant_count {
    type: number
    drill_fields: []
    group_label: "Compliance Count"
    value_format_name: decimal_0
    #view_label: "Compliance Ratio - Over Compliant"
    sql: SUM(CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Over Compliant' THEN 1 ELSE 0 END)  ;;
  }


  measure: review_status_compliant_formatted {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    value_format_name: percent_0
    html: <p style="color: white; background-color: green; font-size:160%;">{{ rendered_value }}</p>;;
    sql: ${review_status_compliant};;
  }

  measure: review_status_out_of_compliance_formatted {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    html: <p style="color: white; background-color: red; font-size:160%;">{{ rendered_value }}</p>;;
    value_format_name: percent_0
    sql: ${review_status_out_of_compliance};;
  }

  measure: review_status_over_compliant_formatted {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    html: <p style="color: white; background-color: blue; font-size:160%;">{{ rendered_value }}</p>;;
    value_format_name: percent_0
    #view_label: "Compliance Ratio - Over Compliant"
    sql: ${review_status_over_compliant};;
  }

  measure: revenue_loss_to_date_formatted {
    type: number
    hidden: yes
    html: <p style="color: white; background-color: red; font-size:160%;">{{ rendered_value }}</p>;;
    value_format_name: decimal_0
    sql: ${revenue_loss_to_date};;
    }

  measure: revenue_over_to_date_formatted {
    type: number
    hidden: yes
    html: <p style="color: white; background-color: blue; font-size:160%;">{{ rendered_value }}</p>;;
    value_format_name: decimal_0
    sql: ${revenue_over_to_date};;

  }

  measure: customer_count_compliant_formatted {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    value_format_name: decimal_0
    html: <p style="color: white; background-color: green; font-size:160%;">{{ rendered_value }}</p>;;
    sql: ${customer_count_compliant_count};;
  }

  measure: customer_count_out_of_compliance_formatted {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    html: <p style="color: white; background-color: red; font-size:160%;">{{ rendered_value }}</p>;;
    value_format_name: decimal_0
    sql: ${customer_count_out_of_compliance_count} ;;
  }

  measure: customer_count_over_compliant_formatted {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    html: <p style="color: white; background-color: blue; font-size:160%;">{{ rendered_value }}</p>;;
    value_format_name: decimal_0
    sql:${customer_count_over_compliant_count};;
  }

  measure: customer_count_compliant_count {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    value_format_name: decimal_0
    sql: COUNT(DISTINCT CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Compliant' THEN ${TABLE}.CUSTOMER_WID ELSE NULL END);;
  }

  measure: customer_count_out_of_compliance_count {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    value_format_name: decimal_0
    sql: COUNT(DISTINCT CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Out of Compliance' THEN ${TABLE}.CUSTOMER_WID ELSE NULL END) ;;
  }

  measure: customer_count_over_compliant_count {
    type: number
    group_label: "Compliance Ratio"
    hidden: yes
    value_format_name: decimal_0
    sql: COUNT(DISTINCT CASE WHEN  ${TABLE}.REVIEW_STATUS = 'Over Compliant' THEN ${TABLE}.CUSTOMER_WID ELSE NULL END) ;;
  }


}
