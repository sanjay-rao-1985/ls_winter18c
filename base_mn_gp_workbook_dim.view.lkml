view: mn_gp_workbook_dim {
  sql_table_name: MN_GP_WORKBOOK_DIM_VW ;;

  dimension: workbook_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.WORKBOOK_WID ;;
  }

  dimension_group: start_date {
    type: time
    hidden: yes
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.START_DATE_WID ;;
  }

  dimension_group: end_date {
    type: time
    hidden: yes
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.END_DATE_WID ;;
  }

  dimension: workbook_id_num {
    type: string
    label: "Workbook #"
    sql: ${TABLE}.WORKBOOK_ID_NUM ;;
  }

  dimension: workbook_name {
    type: string
    label: "Workbook Name"
    sql: ${TABLE}.WORKBOOK_NAME ;;
  }

  dimension: description {
    type: string
    label: "Workbook Description"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: period_in_year {
    type: string
    hidden: yes
    sql: ${TABLE}.PERIOD_IN_YEAR ;;
  }

  dimension: year {
    type: number
    hidden: yes
    sql: ${TABLE}.YEAR ;;
  }

  dimension: workbook_status {
    type: string
    hidden: yes
    sql: ${TABLE}.WORKBOOK_STATUS ;;
  }

  dimension: tx_status {
    type: string
    hidden: yes
    sql: ${TABLE}.TX_STATUS ;;
  }

  dimension_group: calc_last_sched_date {
    type: time
    hidden: yes
    sql: ${TABLE}.CALC_LAST_SCHED_DATE ;;
  }

  dimension: calc_last_sched_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CALC_LAST_SCHED_DATE_WID ;;
  }

  dimension_group: calc_last_init_date {
    type: time
    hidden: yes
    sql: ${TABLE}.CALC_LAST_INIT_DATE ;;
  }

  dimension: calc_last_init_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CALC_LAST_INIT_DATE_WID ;;
  }

  dimension_group: last_calculated_date {
    type: time
    hidden: yes
    sql: ${TABLE}.LAST_CALCULATED_DATE ;;
  }

  dimension: last_calculated_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.LAST_CALCULATED_DATE_WID ;;
  }

  dimension: last_calculated_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.LAST_CALCULATED_BY_WID ;;
  }

  dimension_group: published_date {
    type: time
    hidden: yes
    sql: ${TABLE}.PUBLISHED_DATE ;;
  }

  dimension: published_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PUBLISHED_DATE_WID ;;
  }

  dimension: published_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PUBLISHED_BY_WID ;;
  }

  dimension: analysis_type_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.ANALYSIS_TYPE_FLAG ;;
  }

  dimension: owner_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.OWNER_WID ;;
  }

  dimension: price_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICE_TYPE_WID ;;
  }

  dimension: orig_workbook_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORIG_WORKBOOK_WID ;;
  }

  dimension_group: src_sys_date_created {
    type: time
    hidden: yes
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension: created_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CREATED_BY_WID ;;
  }

  dimension_group: src_sys_date_updated {
    type: time
    hidden: yes
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: updated_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.UPDATED_BY_WID ;;
  }

  dimension: src_sys_workbook_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_WORKBOOK_ID ;;
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
    hidden: yes
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_updated {
    type: time
    hidden: yes
    sql: ${TABLE}.DATE_UPDATED ;;
  }


# Workbook Results Explore dimensions and measures

  dimension: res_wb_id_num {
    type: string
    label: "ID"
    sql: ${TABLE}.WORKBOOK_ID_NUM ;;
  }

  dimension: res_wb_name {
    type: string
    label: "Name"
    sql: ${TABLE}.WORKBOOK_NAME ;;
  }

  dimension: res_description {
    type: string
    label: "Description"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: res_wb_status {
    type: string
    label: "Status"
    sql: ${TABLE}.WORKBOOK_STATUS ;;
  }

  dimension: res_analysis_type_flag {
    type: string
    label: "Is Analysis Only ?"
    sql: CASE WHEN ${TABLE}.ANALYSIS_TYPE_FLAG ='Y' THEN 'Yes'
              WHEN ${TABLE}.ANALYSIS_TYPE_FLAG ='N' THEN 'No' ELSE NULL END;;
  }

  dimension_group: res_created {
    type: time
    label: "Created"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }


  dimension_group: res_last_updated {
    type: time
    label: "Last Updated"
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

  dimension_group: calc_last_sched {
    type: time
    label: "Last Scheduled Calculation"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CALC_LAST_SCHED_DATE ;;
  }


  dimension_group: res_last_calc {
    type: time
    label: "Last Calculated"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_CALCULATED_DATE ;;
  }


  dimension_group: res_published {
    type: time
    label: "Last Published"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PUBLISHED_DATE ;;
  }

  dimension: res_period_in_year {
    type: string
    label: "Period"
    sql: ${TABLE}.PERIOD_IN_YEAR ;;
  }

  dimension: res_year {
    type: number
    label: "Year"
    sql: ${TABLE}.YEAR ;;
  }

  dimension_group: res_clc_last_init {
    type: time
    label: "Last Calculation Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CALC_LAST_INIT_DATE ;;
  }


  set:  workbook_mapping_set {
    fields: [workbook_name, workbook_id_num,description]
  }

  set:  wb_res_exp_set {
    fields: [res_wb_id_num,res_wb_name,res_description,res_wb_status,res_analysis_type_flag,res_created_time,res_created_date,
             res_created_week_of_year,res_created_month,res_created_quarter,res_created_year,res_last_updated_time,res_last_updated_date,
             res_last_updated_week_of_year,res_last_updated_month,res_last_updated_quarter,res_last_updated_year,calc_last_sched_time,
             calc_last_sched_date,calc_last_sched_week_of_year,calc_last_sched_month,calc_last_sched_quarter,calc_last_sched_year,
             res_last_calc_time,res_last_calc_date,res_last_calc_week_of_year,res_last_calc_month,res_last_calc_quarter,res_last_calc_year,
             res_published_time,res_published_date,res_published_week_of_year,res_published_month,res_published_quarter,res_published_year,
             res_period_in_year,res_year,res_clc_last_init_time,res_clc_last_init_date,res_clc_last_init_week_of_year,res_clc_last_init_month,
             res_clc_last_init_quarter,res_clc_last_init_year]
  }



}
