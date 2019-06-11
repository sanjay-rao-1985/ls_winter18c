view: mn_pg_ben_elig_cust_map {
  sql_table_name: MN_PG_BEN_ELIG_CUST_MAP_VW ;;

  dimension: commit_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.COMMIT_CUSTOMER_WID ;;
  }

  dimension: commit_tier {
    type: string
    sql: ${TABLE}.COMMIT_TIER ;;
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

  dimension: elig_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ELIG_CUSTOMER_WID ;;
  }

  dimension_group: elig_end {
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
    sql: ${TABLE}.ELIG_END_DATE ;;
  }

  dimension: elig_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ELIG_END_DATE_WID ;;
  }

  dimension_group: elig_start {
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
    sql: ${TABLE}.ELIG_START_DATE ;;
  }

  dimension: elig_start_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ELIG_START_DATE_WID ;;
  }

  dimension: is_access_price_flag {
    type: string
    sql: ${TABLE}.IS_ACCESS_PRICE_FLAG ;;
  }

  dimension: pg_ben_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_BEN_WID ;;
  }

  dimension: pg_ver_num {
    type: string
    sql: ${TABLE}.PG_VER_NUM ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: pg_bec_combined_pk {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${pg_ben_wid}||'-'||${elig_customer_wid}||'-'||${commit_customer_wid}||'-'||${is_access_price_flag}||'-'||${elig_start_raw} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
