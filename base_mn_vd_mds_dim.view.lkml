view: mn_vd_mds_dim {
   sql_table_name: MN_VD_MDS_DIM_VW ;;

  dimension: mds_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.MDS_WID ;;
  }

  dimension: mds_org_id {
    type: string
    label: "Division Name"
    sql: ${TABLE}.MDS_ORG_ID ;;
  }

  dimension: mds_name {
    type: string
    label: "Division Display Name"
    sql: ${TABLE}.MDS_NAME ;;
  }

  dimension: currency_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.CURRENCY_CD ;;
  }

  dimension: mds_flg_active {
    type: string
    hidden: yes
    sql: ${TABLE}.MDS_FLG_ACTIVE ;;
  }

  dimension: language_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.LANGUAGE_CD ;;
  }

  dimension: country_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.COUNTRY_CD ;;
  }

  dimension: country_name {
    type: string
    hidden: yes
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: src_sys_mds_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MDS_ID ;;
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

  set: vd_mds_set {
    fields: [mds_org_id,mds_name]
  }
}
