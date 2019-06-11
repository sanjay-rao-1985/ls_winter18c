view: mn_customer_map {
  sql_table_name: MN_CUSTOMER_MAP_VW ;;

  dimension: child_cust_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CHILD_CUST_WID ;;
  }

  dimension: created_by_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CREATED_BY_WID ;;
  }

  dimension: created_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CREATED_DATE_WID ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: mem_level {
    type: string
    sql: ${TABLE}.MEM_LEVEL ;;
  }

  dimension: parent_cust_wid {
    hidden: yes
    type: number

    sql: ${TABLE}.PARENT_CUST_WID ;;
  }

  dimension: primary_flag {
    type: string
    sql: ${TABLE}.PRIMARY_FLAG ;;
  }

  dimension: relationship_type {
    type: string
    sql: ${TABLE}.RELATIONSHIP_TYPE ;;
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: updated_by_wid {
    hidden: yes
    type: number

    sql: ${TABLE}.UPDATED_BY_WID ;;
  }

  dimension: updated_date_wid {
    hidden: yes
    type: number

    sql: ${TABLE}.UPDATED_DATE_WID ;;
  }

  dimension: plan_cust_wid {
    hidden: yes
    type: number

    sql: ${TABLE}.PLAN_CUST_WID ;;
  }

  #******************************Master Data Customer Map Set
  set: md_customer_map_set {
    fields: [start_raw,start_time,start_date,start_week_of_year,start_month,start_quarter,start_year,end_raw,end_time,end_date,end_week_of_year,end_month,
      end_quarter,end_year,relationship_type]
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #*************Members Field Set
  set: members_set {
    fields: [relationship_type,start_date,start_raw,start_time,start_week_of_year,
      start_month,start_quarter,start_year,end_date,end_raw,end_time,end_week_of_year,end_month,
      end_quarter,end_year]
  }
}
