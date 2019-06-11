view:mn_mcd_prod_ura_prc_fact {
  sql_table_name: MN_MCD_PROD_URA_PRC_FACT_VW ;;

  dimension: mcd_prod_ura_prc_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.MCD_PROD_URA_PRC_WID ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: quarter {
    type: string
    hidden: yes
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: federal_ura {
    type: number
    label: "Federal URA"
    value_format_name: usd_6
    sql: ${TABLE}.FEDERAL_URA ;;
  }

  dimension: minimum_ura {
    type: number
    label: "Minimum URA"
    value_format_name: usd_6
    sql: ${TABLE}.MINIMUM_URA ;;
  }

  dimension: discount_ura {
    type: number
    label: "Discount URA"
    value_format_name: usd_6
    sql: ${TABLE}.DISCOUNT_URA ;;
  }

  dimension: basic_ura {
    type: number
    label: "Basic URA"
    value_format_name: usd_6
    sql: ${TABLE}.BASIC_URA ;;
  }

  dimension: additional_ura {
    type: number
    label: "Additional URA"
    value_format_name: usd_6
    sql: ${TABLE}.ADDITIONAL_URA ;;
  }

  dimension: new_formulation_ura {
    type: number
    label: "New Formulation URA"
    value_format_name: usd_6
    sql: ${TABLE}.NEW_FORMULATION_URA ;;
  }

  dimension: initial_federal_ura {
    type: number
    label: "Initial Federal URA"
    value_format_name: usd_6
    sql: ${TABLE}.INITIAL_FEDERAL_URA ;;
  }

  dimension: src_sys_prod_ura_prc_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PROD_URA_PRC_ID ;;
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
    timeframes: [
      raw,
      time,
      date,
      week,
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
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_UPDATED ;;
  }

}
