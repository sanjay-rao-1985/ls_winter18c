view: mn_rebate_pmt_ben_fact {
  sql_table_name: MN_REBATE_PMT_BEN_FACT_VW ;;


  dimension: rebate_pmt_ben_wid {
    type: number
    primary_key: yes
    sql: ${TABLE}.REBATE_PMT_BEN_WID ;;
  }

  dimension: rebate_pmt_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_PMT_WID ;;
  }

  dimension: program_qual_ben_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_QUAL_BEN_WID ;;
  }

  dimension: is_qual_component {
    type: string
    sql: ${TABLE}.IS_QUAL_COMPONENT ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension: end_ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: src_sys_date_created {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension: src_sys_date_updated {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_pmt_benefit_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PMT_BENEFIT_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
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
}
