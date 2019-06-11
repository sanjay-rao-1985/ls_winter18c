view: mn_vd_tx_item_rev_map {
  sql_table_name: MN_VD_TX_ITEM_REV_MAP_VW ;;


  dimension: rev_file_wid {
    type: number
    hidden: yes
    label: "Rev File ID"
    sql: ${TABLE}.REV_FILE_WID ;;
  }

  dimension: rev_tx_item_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.REV_TX_ITEM_WID ;;
  }

  dimension: ref_file_wid {
    type: number
    hidden: yes
    label: "Rev Ref File ID"
    sql: ${TABLE}.REF_FILE_WID ;;
  }

  dimension: ref_tx_item_wid {
    type: number
    hidden: yes
    label: "Rev Record ID"
    sql: ${TABLE}.REF_TX_ITEM_WID ;;
  }

  dimension: status {
    type: string
    label: "Rev Status"
    sql: ${TABLE}.REV_STATUS ;;
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
