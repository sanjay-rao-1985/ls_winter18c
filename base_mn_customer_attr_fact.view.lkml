view: mn_customer_attr_fact {
  sql_table_name: MN_CUSTOMER_ATTR_FACT_VW ;;

  dimension: attr_name {
    type: string
    label: "Name"
    sql: ${TABLE}.ATTR_NAME ;;
  }

  dimension: attr_value {
    type: string
    label: "Value"
    sql: ${TABLE}.ATTR_VALUE ;;
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

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
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

  parameter: eda_date {
    label: "EDA Effective Date"
    type: date
  }

  dimension: eda_date_filter {
    type:  number
    sql: CASE WHEN {% parameter eda_date %} BETWEEN  ${TABLE}.EFF_START_DATE  AND  ${TABLE}.EFF_END_DATE  THEN 1 ELSE 0 END
    ;;
  }

  #****************************Customer Attributes Set
  set: cust_attr_set {
    fields: [attr_name,attr_value,eff_start_raw,eff_start_time,eff_start_date,eff_start_week_of_year,eff_start_month,eff_start_quarter,eff_start_year,
      eff_end_raw,eff_end_time,eff_end_time,eff_end_date,eff_end_week_of_year,eff_end_month,eff_end_quarter,eff_end_year]
  }


}
