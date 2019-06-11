view: mn_uom_dim {

  sql_table_name: MN_UOM_DIM_VW ;;

  dimension: uom_wid {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.UOM_WID ;;
  }

  dimension: from_uom_sales {
    type: string
    label: "Invoice UOM"
    sql: ${TABLE}.UOM_NAME ;;
  }

  dimension: from_uom_util {
    type: string
    label: "From UOM"
    sql: ${TABLE}.UOM_NAME ;;
  }

  dimension: to_uom {
    type: string
    label: "To UOM"
    sql: ${TABLE}.UOM_NAME ;;
  }

  dimension: src_sys_uom_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_UOM_CODE ;;
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

}
