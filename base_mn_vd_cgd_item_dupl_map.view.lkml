view: mn_vd_cgd_item_dupl_map {
    sql_table_name: MN_VD_CGD_ITEM_DUPL_MAP_VW ;;

  dimension: file_wid {
    type: number
    hidden: yes
    label: "File ID"
    view_label: "Items in the Duplicate Set"
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: cgd_item_wid {
    type: number
    hidden: yes
    label: "Record ID"
    view_label: "Items in the Duplicate Set"
    sql: ${TABLE}.CGD_ITEM_WID ;;
  }

  dimension: orig_file_wid {
    type: number
    hidden: yes
    label: "Duplicate File ID"
    view_label: "File with Duplicates"
    sql: ${TABLE}.ORIG_FILE_WID ;;
  }

  dimension: orig_cgd_item_wid {
    type: number
    hidden: yes
    label: "Duplicate Record ID"
    view_label: "File with Duplicates"
    sql: ${TABLE}.ORIG_CGD_ITEM_WID ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: pbm_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PBM_WID ;;
  }

  dimension: dup_grp_item_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.DUP_GRP_ITEM_WID ;;
  }

  dimension: dup_level {
    type: number
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

  dimension: date_created {
    type: string
    hidden: yes
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: date_updated {
    type: string
    hidden: yes
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: run_id {
    type: string
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

}
