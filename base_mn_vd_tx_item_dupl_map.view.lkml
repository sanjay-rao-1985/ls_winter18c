view: mn_vd_tx_item_dupl_map {
  sql_table_name: mn_vd_tx_item_dupl_map_vw ;;

  dimension: file_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: tx_item_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.TX_ITEM_WID ;;
  }

  dimension: orig_file_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORIG_FILE_WID ;;
  }

  dimension: orig_tx_item_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORIG_TX_ITEM_WID ;;
  }

  dimension: dup_level {
    type: string
    label: "Level"
    view_label: "Items in the Duplicate Set"
    sql: ${TABLE}.DUP_LEVEL ;;
  }

  dimension: error_code {
    type: string
    label: "Error Code"
    view_label: "Items in the Duplicate Set"
    sql: ${TABLE}.ERROR_CODE ;;
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

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

}
