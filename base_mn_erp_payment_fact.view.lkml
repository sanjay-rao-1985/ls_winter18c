view: mn_erp_payment_fact {
  sql_table_name: MN_ERP_PAYMENT_FACT_VW ;;

  dimension_group: date_created {
    hidden: yes
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
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    hidden: yes
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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension_group: erp_pmt {
    label: "Payment"
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
    sql: ${TABLE}.ERP_PMT_DATE ;;
  }

  dimension: erp_pmt_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ERP_PMT_DATE_WID ;;
  }

  dimension: erp_pmt_id_num {
    type: string
    label: "ID"
    sql: ${TABLE}.ERP_PMT_ID_NUM ;;
  }

  dimension: erp_pmt_method {
    type: string
    label: "Method"
    sql: ${TABLE}.ERP_PMT_METHOD ;;
  }

  dimension: erp_pmt_type {
    type: string
    label: "Status"
    sql: ${TABLE}.ERP_PMT_TYPE ;;
  }

  dimension: erp_pmt_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.ERP_PMT_WID ;;
  }

  dimension_group: erp_process {
    label: "Process"
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
    sql: ${TABLE}.ERP_PROCESS_DATE ;;
  }

  dimension: erp_process_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ERP_PROCESS_DATE_WID ;;
  }

  dimension: estimate_pmt_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ESTIMATE_PMT_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: payment_amount {
    type: string
    hidden: yes
    label: "Amount"
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
    sql: ${TABLE}.PAYMENT_AMT_CURR ;;
  }

  dimension: pkg_id_num {
    type: string
    label: "Package ID"
    hidden: yes
    sql: ${TABLE}.PKG_ID_NUM ;;
  }

  dimension: rebate_pmt_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.REBATE_PMT_WID ;;
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

  dimension: src_sys_erp_payment_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SRC_SYS_ERP_PAYMENT_ID ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }

  measure: total_erp_payment_amount {
    type: sum
    label: "Amount"
    value_format_name: amt_3
    sql: ${payment_amount} ;;
  }

}
