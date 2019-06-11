view: mn_combined_cmpl_commit_fact {
  derived_table: {
    sql: SELECT
      -- MN_CMPL_COMMIT_FACT_VW
      -- Non-SD based commitments
        S.CONTRACT_WID,
        S.COMMIT_START_DATE_WID,
        S.COMMIT_END_DATE_WID,
        S.COMMIT_TIER,
        S.CUSTOMER_WID,
        S.PG_WID,
        S.COMMITMENT_VALUE,
        S.DATE_UPDATED,
        S.ON_HOLD,
        S.SRC_SYS_CMT_DATE_UPDATED,
        CCR.CMT_CHANGE_CODE_NAME,
        CMTT.CMT_TYPE_NAME,
        S.TRACK_START_DATE_WID,
        S.SRC_SYS_COMMIT_ID,
        NULL AS PG_COMMIT_WID,
        S.DEFINITION_WID,
        TO_CHAR(S.DEFINITION_WID) AS COMB_CMPL_COMMIT_PK
       FROM
      MN_CMPL_COMMIT_FACT_VW S
      LEFT JOIN MN_CMT_CHANGE_REASON_DIM_VW CCR ON CCR.CMT_CHANGE_CODE_WID=S.CMT_CHANGE_CODE_WID
      LEFT JOIN MN_CMT_TYPE_DIM_VW CMTT ON CMTT.CMT_TYPE_WID=S.COMMIT_TYPE_WID
      LEFT JOIN MN_PRODUCT_GROUP_DIM_VW PG ON PG.PG_WID = S.PG_WID
      where PG.STRATEGY_BASED_FLAG = 'N' AND IS_ACCESS_PRICE_FLAG <> 1

      UNION ALL

      -- MN_PG_COMMIT_FACT_VW
      -- SD-based
      SELECT
        CF.CONTRACT_WID,
        S.EFF_START_DATE_WID as COMMIT_START_DATE_WID,
        S.EFF_END_DATE_WID as COMMIT_END_DATE_WID,
        S.TIER_IDX as COMMIT_TIER,
        S.CUSTOMER_WID,
        PGCM.PG_WID,
        S.COMMITMENT_VALUE,
        S.DATE_UPDATED,
        S.ON_HOLD,
        S.SRC_SYS_CMT_DATE_UPDATED,
        CCR.CMT_CHANGE_CODE_NAME,
        CMTT.CMT_TYPE_NAME,
        S.TRACK_START_DATE_WID,
        S.SRC_SYS_COMMIT_ID,
        S.PG_COMMIT_WID,
        null as DEFINITION_WID,
        PGCM.PG_WID ||'-'|| S.PG_COMMIT_WID||'-'|| CF.CONTRACT_WID AS COMB_CMPL_COMMIT_PK
      FROM
      MN_PG_COMMIT_FACT_VW S
      LEFT JOIN MN_CMT_CHANGE_REASON_DIM_VW CCR ON CCR.CMT_CHANGE_CODE_WID=S.CMT_CHANGE_CODE_WID
      LEFT JOIN MN_CMT_TYPE_DIM_VW CMTT ON CMTT.CMT_TYPE_WID=S.COMMIT_TYPE_WID
      LEFT JOIN MN_PG_COMMIT_MAP_VW PGCM ON PGCM.PG_COMMIT_WID=S.PG_COMMIT_WID
      LEFT JOIN MN_CONTRACT_FACT_VW CF ON PGCM.PG_WID = CF.PG_WID
      where S.LATEST_FLAG = 'Y' AND S.DELETED_FLAG = 'N' AND IS_ACCESS_PRICE_FLAG <> 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: contract_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: comb_cmpl_commit_pk {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.COMB_CMPL_COMMIT_PK ;;
  }

  dimension: commit_start_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.COMMIT_START_DATE_WID ;;
  }

  dimension_group: commit_Start {
    type: time
    label: "Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: to_date(${commit_start_date_wid},'yyyymmdd') ;;
  }

  dimension: commit_end_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.COMMIT_END_DATE_WID ;;
  }

  dimension_group: commit_end {
    type: time
    label: "End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: to_date(${commit_end_date_wid},'yyyymmdd') ;;
  }

  dimension: commit_tier {
    type: string
    label: "Committed Tier"
    sql: ${TABLE}.COMMIT_TIER ;;
  }

  dimension: customer_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: pg_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: commitment_value {
    type: string
    label: "Value"
    sql: ${TABLE}.COMMITMENT_VALUE ;;
  }

  dimension_group: date_updated {
    type: time
    hidden: yes
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: on_hold {
    type: string
    hidden: yes
    label: "On Hold"
    sql: ${TABLE}.ON_HOLD ;;
  }

  dimension: on_hold_yes_no {
    type: string
    label: "Is on Hold ?"
    sql:  CASE WHEN ${on_hold} = 1 THEN 'Yes'
               WHEN ${on_hold} = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension_group: src_sys_cmt_date_updated {
    type: time
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CMT_DATE_UPDATED ;;
  }

  dimension: cmt_change_code_name {
    type: string
    label: "Change Reason"
    sql: ${TABLE}.CMT_CHANGE_CODE_NAME ;;
  }

  dimension: cmt_type_name {
    type: string
    label: "Type"
    sql: ${TABLE}.CMT_TYPE_NAME ;;
  }

  dimension: track_start_date_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.TRACK_START_DATE_WID ;;
  }

  dimension_group: track_start_date {
    type: time
    label: "Tracking Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: to_date(${track_start_date_wid},'yyyymmdd') ;;
  }

  dimension: src_sys_commit_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_COMMIT_ID ;;
  }

  dimension: definition_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.DEFINITION_WID ;;
  }

  set: detail {
    fields: [
      contract_wid,
      commit_start_date_wid,
      commit_end_date_wid,
      commit_tier,
      customer_wid,
      pg_wid,
      commitment_value,
      date_updated_time,
      on_hold,
      src_sys_cmt_date_updated_time,
      cmt_change_code_name,
      cmt_type_name,
      track_start_date_wid,
      src_sys_commit_id
    ]
  }
}
