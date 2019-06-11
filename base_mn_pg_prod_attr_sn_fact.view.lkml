view: mn_pg_prod_attr_sn_fact {
  derived_table: {
    sql:
      SELECT  SRC_SYS_STRUCT_LI_ID,
              ATTR_VALUE
      FROM MN_PG_PROD_PRC_ATTR_FACT_VW
      WHERE ATTR_NAME IN ('SerialNum')
      ;;
  }

  dimension: instrument_serial_number {
    type: string
    label: "Instrument Serial #"
    group_label: "Serial Number"
    sql: ${TABLE}.ATTR_VALUE ;;
  }

  dimension_group: eff_start {
    type: time
    label: "Serial Number Start"
    group_label: "Serial Number"
    timeframes: [date]
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension_group: eff_end {
    type: time
    label: "Serial Number End"
    group_label: "Serial Number"
    timeframes: [date]
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: src_sys_struct_li_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

}
