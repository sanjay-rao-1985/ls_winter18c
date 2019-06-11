view: mn_price_list_dim_all_vers {

    sql_table_name: MN_PRICE_LIST_DIM_ALL_VERS_VW ;;


  dimension: currency {
    type: string
    hidden: yes
    sql: ${TABLE}.CURRENCY ;;
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

  dimension: org_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: period_end_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_END_DATE_WID ;;
  }

  dimension: period_start_date_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_START_DATE_WID ;;
  }

  dimension: price_list_name {
    type: string
    label: "Name"
    sql: ${TABLE}.PRICE_LIST_NAME ;;
  }

  dimension: price_list_status {
    type: string
    hidden: yes
    sql: ${TABLE}.PRICE_LIST_STATUS ;;
  }

  dimension: price_list_sys_type {
    type: string
    hidden: yes
    sql: ${TABLE}.PRICE_LIST_SYS_TYPE ;;
  }

  dimension: price_list_type_name {
    type: string
    label: "Type"
    sql: ${TABLE}.PRICE_LIST_TYPE_NAME ;;
  }

  dimension: price_list_id_num {
    type: string
    label: "ID"
    sql: ${TABLE}.PRICE_LIST_ID_NUM ;;
  }

  dimension: price_list_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICE_LIST_WID ;;
  }

  dimension: qual_type {
    type: string
    hidden: yes
    sql: ${TABLE}.QUAL_TYPE ;;
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

  dimension: src_sys_price_list_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PRICE_LIST_ID ;;
  }

  dimension_group: period_start_date {
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

  dimension_group: period_end_date {
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

  dimension: mcd_program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.MCD_PROGRAM_WID ;;
  }

  dimension: available_on_contract_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.AVAILABLE_ON_CONTRACT_FLAG ;;
  }

  dimension: ver_num {
    type: number
    hidden: yes

    sql: ${TABLE}.VER_NUM ;;
  }

  dimension: end_ver_num {
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension_group: doc_ver_date_created {
    type: time
    hidden: yes
    sql: ${TABLE}.DOC_VER_DATE_CREATED ;;
  }

  dimension: created_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CREATED_BY_WID ;;
  }

  dimension: updated_by_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.UPDATED_BY_WID ;;
  }

  dimension_group: ver_start_date {
    type: time
    label: "Revision"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension_group: ver_end_date {
    type: time
    hidden: yes
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension_group: src_sys_date_created {
    type: time
    label: "Creation"
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

  dimension: doc_ver_num {
    type: number
    label: "Version #"
    value_format: "0"
    sql: ${TABLE}.DOC_VER_NUM ;;
  }

  dimension: ver_state {
    type: number
    hidden: yes
    sql: ${TABLE}.VER_STATE ;;
  }

  dimension: latest_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.LATEST_FLAG ;;
  }

}
