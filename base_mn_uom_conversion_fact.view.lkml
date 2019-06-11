view: mn_uom_conversion_fact {

    sql_table_name: MN_UOM_CONVERSION_FACT_VW ;;


  dimension: conversion_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.CONVERSION_WID ;;
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: from_qty {
    type: number
    hidden: yes
    sql: ${TABLE}.FROM_QTY ;;
  }

  dimension: from_uom {
    type: string
    hidden: yes
    sql: ${TABLE}.FROM_UOM ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
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

  dimension: src_sys_conv_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CONV_ID ;;
  }

  dimension: to_qty {
    type: number
    hidden: yes
    sql: ${TABLE}.TO_QTY ;;
  }

  dimension: to_uom {
    type: string
    label: "To UOM"
    hidden: yes
    sql: ${TABLE}.TO_UOM ;;
  }

  dimension: base_uom_multiplier {
    type: number
    hidden: yes
    value_format_name: decimal_2
    sql: ${to_qty}/${from_qty} ;;
  }

}
