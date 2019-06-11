view: mn_mco_submission_dim {

  sql_table_name: MN_MCO_SUBMISSION_DIM_VW ;;

  dimension: adjusted_by_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ADJUSTED_BY_USER_WID ;;
  }

  dimension_group: adjusted {
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
    sql: ${TABLE}.ADJUSTED_DATE ;;
  }

  dimension: adjustment_status_name {
    type: string
    label: "Adjustment"
    sql: ${TABLE}.ADJUSTMENT_STATUS_NAME ;;
  }

  dimension: analyst_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ANALYST_USER_WID ;;
  }

  dimension: claim_name {
    type: string
    label: "Claim Name"
    sql: ${TABLE}.CLAIM_NAME ;;
  }

  dimension: claim_number {
    type: string
    label: "Claim ID"
    sql: ${TABLE}.CLAIM_NUMBER ;;
  }

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

  dimension_group: due {
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
    sql:  to_date(${TABLE}.DUE_DATE_WID,'yyyymmdd') ;;
  }

  dimension: effective_timezone {
    type: string
    label: "Time Zone"
    sql: ${TABLE}.EFFECTIVE_TIMEZONE ;;
  }

  dimension: file_format {
    type: string
    label: "File Format"
    sql: ${TABLE}.FILE_FORMAT ;;
  }

  dimension: file_name {
    type: string
    label: "File Name"
    sql: ${TABLE}.FILE_NAME ;;
  }

  dimension: mco_submission_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.MCO_SUBMISSION_WID ;;
  }

  dimension: org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension_group: paid {
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
    sql:  to_date(${TABLE}.PAID_DATE_WID,'yyyymmdd') ;;
  }

  dimension: pbm_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PBM_WID ;;
  }

  dimension_group: period_end {
    type: time
    label: "Util End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql:  to_date(${TABLE}.PERIOD_END_DATE_WID,'yyyymmdd') ;;
  }

  dimension_group: period_start {
    type: time
    label: "Util Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql:  to_date(${TABLE}.PERIOD_START_DATE_WID,'yyyymmdd') ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.RECEIVED_DATE ;;
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

  dimension: src_sys_claim_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CLAIM_ID ;;
    label: "Source System Claim ID"
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_submission_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_SUBMISSION_ID ;;
    label: "Source System Submission ID"
  }

  dimension: status_name {
    type: string
    label: "Status"
    sql: ${TABLE}.STATUS_NAME ;;
  }

  dimension: submission_comments {
    type: string
    label: "Comments"
    sql: ${TABLE}.SUBMISSION_COMMENTS ;;
  }

  dimension: submission_name {
    type: string
    label: "Name"
    sql: ${TABLE}.SUBMISSION_NAME ;;
  }

  dimension: submission_number {
    type: string
    label: "ID"
    sql: ${TABLE}.SUBMISSION_NUMBER ;;
  }

  dimension: uploaded_by_user_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.UPLOADED_BY_USER_WID ;;
  }

  dimension_group: uploaded {
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
    sql: ${TABLE}.UPLOADED_DATE ;;
  }

  dimension: util_type_name {
    type: string
    sql: ${TABLE}.UTIL_TYPE_NAME ;;
    label: "Util Type"
  }

  dimension: td_submission_number {
    type: string
    label: "Submission Number"
    sql: ${TABLE}.SUBMISSION_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: [submission_name,submission_number,mn_util_ctrt_customer_dim.customer_name,claim_name,claim_number,period_start_date,period_end_date,mn_util_pbm_dim.pbm_name]
  }

   set: mco_submissions_set {
     fields: [adjusted_raw,adjusted_time,adjusted_date,adjusted_week_of_year,adjusted_month,adjusted_quarter,adjusted_year,
      adjustment_status_name,claim_name,claim_number,due_raw,due_time,due_date,due_week_of_year,due_month,due_quarter,
      due_year,effective_timezone,file_format,file_name,paid_raw,paid_time,paid_date,paid_week_of_year,paid_month,paid_quarter,
      paid_year,period_end_raw,period_end_time,period_end_date,period_end_week_of_year,period_end_month,period_end_quarter,
      period_end_year,period_start_raw,period_start_time,period_start_date,period_start_week_of_year,period_start_month,
      period_start_quarter,period_start_year,received_raw,received_time,received_date,received_week_of_year,received_month,
      received_quarter,received_year,status_name,submission_comments,submission_name,submission_number,util_type_name,count]
   }
}
