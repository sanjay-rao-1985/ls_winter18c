view: mn_rebate_payment_fact {
  sql_table_name: MN_REBATE_PAYMENT_FACT_VW ;;

  dimension: accrued_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ACCRUED_CUSTOMER_WID ;;
  }

  dimension: analyst_user_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ANALYST_USER_WID ;;
  }

  dimension: commited_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.COMMITED_CUSTOMER_WID ;;
  }

  dimension: ctrt_accrue_rate_format {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.CONTRACT_ERP_ACCRUE_RATE is not NULL THEN CASE WHEN ${TABLE}.CONTRACT_ERP_ACCRUE_TYPE IN('Amount / unit','Fixed Amount') THEN CONCAT('$',${TABLE}.CONTRACT_ERP_ACCRUE_RATE)
         WHEN ${TABLE}.CONTRACT_ERP_ACCRUE_TYPE ='%' THEN CONCAT(${TABLE}.CONTRACT_ERP_ACCRUE_RATE*100,'%') ELSE NULL END ELSE NULL END;;
  }

  dimension: contract_erp_accrue_rate {
    type: string
    label: "Contract Accrual Rate"
    sql: ${ctrt_accrue_rate_format} ;;
  }

  dimension: contract_erp_accrue_type {
    type: string
    label: "Contract Accrual Type"
    sql: ${TABLE}.CONTRACT_ERP_ACCRUE_TYPE ;;
  }

  dimension: contract_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_type {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_TYPE ;;
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

  dimension_group: due_to_customer {
    type: time
    label: "Due to Customer"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DUE_TO_CUSTOMER_DATE ;;
  }

  dimension: end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.END_DATE_WID ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: to_date(${TABLE}.END_DATE_WID,'yyyymmdd') ;;
  }

  dimension: erp_accrue {
    type: string
    hidden: yes
    label: "ERP Accrue"
    sql: ${TABLE}.ERP_ACCRUE ;;
  }

  dimension: erp_accrue_yes_no {
    type: string
    label: "ERP Accrual?"
    sql: CASE WHEN ${erp_accrue} = 1 THEN 'True'
              WHEN ${erp_accrue} = 0 THEN 'False' ELSE NULL END ;;
  }

  dimension: erp_accr_rate_format {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.ERP_ACCRUE_RATE is not NULL THEN CASE WHEN ${TABLE}.ERP_ACCRUE_TYPE IN('Amount / unit','Fixed Amount') THEN CONCAT('$',${TABLE}.ERP_ACCRUE_RATE)
      WHEN ${TABLE}.ERP_ACCRUE_TYPE ='%' THEN CONCAT(${TABLE}.ERP_ACCRUE_RATE*100,'%') ELSE NULL END ELSE NULL END;;
  }

  dimension: erp_accrue_rate {
    type: string
    label: "ERP Accrual Rate"
    sql: ${erp_accr_rate_format} ;;
  }

  dimension: erp_accrue_type {
    type: string
    label: "ERP Accrual Type"
    sql: ${TABLE}.ERP_ACCRUE_TYPE ;;
  }

  dimension: name {
    type: string
    label: "Name"
    sql: ${TABLE}.NAME ;;
  }

  dimension: net_due_amount {
    type: number
    hidden: yes
    label: "Net Due Amount"
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${net_due_amount_local}
    ELSE ${net_due_amount_base}
    END ;;
  }

  dimension: net_due_amount_local {
    type: number
    hidden: yes
    label: "Net Due Amount Local Сurrency"
    sql: ${TABLE}.NET_DUE_AMT ;;
  }

  dimension: net_due_amount_base {
    type: number
    hidden: yes
    sql: ${TABLE}.NET_DUE_AMT_BASE ;;
  }

  dimension: net_due_currency {
    type: string
    hidden: yes
    sql: ${TABLE}.NET_DUE_CUR ;;
  }

  dimension: org_wid {
    type:  number
    hidden: yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension_group: paid {
    type: time
    label: "Paid"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PAID_DATE ;;
  }

  dimension: paid_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAID_DATE_WID ;;
  }

  dimension: payment_program_id {
    type: string
    sql: ${TABLE}.PAY_PROG_ID_NUM ;;
  }

  dimension: pay_program_name {
    type: string
    label: "Payment Program Name"
    sql: ${TABLE}.PAY_PROG_NAME ;;
  }

  dimension: payment_program_status {
    type: string
    hidden: yes
    sql: ${TABLE}.PAY_PROG_STATUS ;;
  }

  dimension: payment_program_status_name {
    type: string
    label: "Payment Program Status"
    sql: ${TABLE}.PAY_PROG_STATUS_NAME ;;
  }

  dimension: payee_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_amount {
    type: number
    label: "Amount"
    value_format_name: usd
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${payment_amount_local}
    ELSE ${payment_amount_base}
    END ;;
  }

  dimension: payment_amount_local {
    type: number
    label: "Amount Local Сurrency"
    value_format_name: usd
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

  dimension: payment_amount_base {
    type: string
    hidden: yes
    sql: ${TABLE}.PAYMENT_AMT_BASE ;;
  }

  dimension: payment_amount_currency {
    type: string
    hidden: yes
    sql: ${TABLE}.PAYMENT_AMT_CUR ;;
  }

  dimension_group: payment_due_status {
    type: time
    label: "Payment Due Status Set On"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PAYMENT_DUE_STATUS_DATE ;;
  }

  dimension: pmt_due_status_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PMT_DUE_STATUS_DATE_WID ;;
  }

  dimension: payment_priority {
    type: string
    label: "Processing Priority"
    sql: ${TABLE}.PMT_PRIORITY ;;
  }

  dimension: payment_status {
    type: string
    label: "Status"
    sql: ${TABLE}.PMT_STATUS ;;
  }

  dimension_group: processing {
    type: time
    label: "Ready For Processing"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROCESSING_DATE ;;
  }

  dimension: program_analyst_user_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROG_ANALYST_USER_WID ;;
  }

  dimension: pymt_pkg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PYMT_PKG_WID ;;
  }

  dimension: qualification_status {
    type: string
    label: "Qualification Status"
    sql: ${TABLE}.QUAL_STATUS ;;
  }

  dimension: rebate_due_amount {
    type: string
    hidden: yes
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${rebate_due_amount_local}
    ELSE ${rebate_due_amount_base}
    END ;;
  }

  dimension: rebate_due_amount_local {
    type: string
    hidden: yes
    sql: ${TABLE}.REBATE_DUE_AMT ;;
  }

  dimension: rebate_due_amount_base {
    type: string
    hidden: yes
    sql: ${TABLE}.REBATE_DUE_AMT_BASE ;;
  }

  dimension: rebate_due_currency {
    type: string
    hidden: yes
    sql: ${TABLE}.REBATE_DUE_CUR ;;
  }

  dimension: rebate_payment_id {
    type: string
    label: "ID"
    sql: ${TABLE}.REBATE_PMT_ID_NUM ;;
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }
  }

  dimension: rebate_pmt_wid {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_PMT_WID ;;
  }

  dimension: rebate_program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_PROGRAM_WID ;;
  }

  dimension_group: released {
    type: time
    label: "Released"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RELEASED_DATE ;;
  }

  dimension: reversed_due_amount {
    type: number
    hidden: yes
    label: "Reversed Due Amount"
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${reversed_due_amount_local}
    ELSE ${reversed_due_amount_base}
    END ;;
  }

  dimension: reversed_due_amount_local {
    type: number
    hidden: yes
    label: "Reversed Due Amount Local Сurrency"
    sql: ${TABLE}.REVERSED_DUE_AMT ;;
  }


  dimension: reversed_due_amount_base {
    type: number
    hidden: yes
    sql: ${TABLE}.REVERSED_DUE_AMT_BASE ;;
  }

  dimension: reversed_due_amount_currency {
    type: number
    hidden: yes
    sql: ${TABLE}.REVERSED_DUE_AMT_CURR ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: salesrep_user_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.SALESREP_USER_WID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_rebate_payment_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_REBATE_PAYMENT_ID ;;
  }

  dimension: start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.START_DATE_WID ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: to_date(${TABLE}.START_DATE_WID,'yyyymmdd') ;;
  }

  dimension: tier_applied {
    type: string
    label: "Tier Applied"
    sql: ${TABLE}.TIER_APPLIED ;;
  }

  dimension: tier_attained {
    type: number
    label: "Tier Attained"
    sql: ${TABLE}.TIER_ATTAINED ;;
  }

  dimension: total_accrued_amt {
    type: number
    hidden: yes
    label: "Accrued Amount"
    sql: CASE
    WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${total_accrued_amt_local}
    ELSE ${total_accrued_amount_base}
    END ;;
  }

  dimension: total_accrued_amt_local {
    type: number
    hidden: yes
    label: "Accrued Amount Local Сurrency"
    sql: ${TABLE}.TOTAL_ACCRUED_AMT ;;
  }

  dimension: total_accrued_amount_base {
    type: number
    hidden: yes
    sql: ${TABLE}.TOTAL_ACCRUED_AMT_BASE ;;
  }

  dimension: total_accrued_amount_currency {
    type: string
    hidden: yes
    sql: ${TABLE}.TOTAL_ACCRUED_AMT_CUR ;;
  }

  filter: base_local_curr_selection {
    label: "Currency Mode"
    default_value: "Local"
    suggestions: ["Local", "Base"]
  }


  measure: count {
    type: count
    drill_fields: [payment_program_status_name, pay_program_name, name]
  }

  measure: total_net_due_amount {
    type: sum
    label: "Total Net Payment Amount"
    value_format_name: usd
    sql: ${net_due_amount} ;;
  }

  measure: total_net_due_base_amount {
    type: sum
    value_format_name: usd
    hidden: yes
    sql: ${net_due_amount_base} ;;
  }

  measure: total_rebate_due_amount {
    type: sum
    label: "Total Amount Due"
    value_format_name: usd
    sql: ${rebate_due_amount} ;;
  }

  measure: total_rebate_due_base_amount {
    type: sum
    value_format_name: usd
    hidden: yes
    sql: ${rebate_due_amount_base} ;;
  }

  measure: total_accrued_amount {
    type: sum
    label: "Accrued Amount"
    value_format_name: usd
    sql: ${total_accrued_amt} ;;
  }

  measure: total_accrued_base_amount {
    type: sum
    value_format_name: usd
    hidden: yes
    sql: ${total_accrued_amount_base} ;;
  }

  measure: total_reversed_due_amount {
    type: sum
    label: "Total Reversed Due Amount"
    value_format_name: usd
    sql: ${reversed_due_amount} ;;
  }

  set: rebatepaymentfact_included_set {
    fields: [rebate_payment_id, due_to_customer_date, due_to_customer_quarter, start_date,start_month,start_quarter,start_year,start_time,start_week_of_year,end_date,
      end_month,end_quarter,end_year,end_time,end_week_of_year,payment_status,payment_priority,tier_attained,tier_applied,qualification_status,
      paid_date,paid_month,paid_quarter,paid_year,paid_time,paid_week_of_year,total_net_due_amount,total_rebate_due_amount,total_reversed_due_amount]
  }

  set: payer_rebatepayment_excluded_set {
    fields: [contract_erp_accrue_rate,contract_erp_accrue_type,currency,erp_accrue,erp_accrue_rate,erp_accrue_type,pay_program_name,name,
      payment_program_id,payment_program_status_name,payment_amount,payment_due_status_raw,payment_due_status_time,payment_due_status_date,
      payment_due_status_week_of_year,payment_due_status_month,payment_due_status_quarter,payment_due_status_year,
      processing_raw,processing_time,processing_date,processing_week_of_year,processing_month,processing_quarter,processing_year,
      released_raw,released_time,released_date,released_week_of_year,released_month,released_quarter,released_year,reversed_due_amount,
      due_to_customer_raw,due_to_customer_time,due_to_customer_week_of_year,due_to_customer_month,due_to_customer_quarter,due_to_customer_year,
      total_accrued_amount,total_accrued_base_amount,total_net_due_base_amount,total_rebate_due_base_amount]
  }
}
