view: mn_rbt_qual_mb_prod_map_all {
   derived_table: {
    sql: SELECT DISTINCT
           RQMB.BASKET_WID,
           RQMB.DATE_CREATED,
           RQMB.DATE_UPDATED,
           RQMB.EFF_END_DATE,
           RQMB.EFF_END_DATE_WID,
           RQMB.EFF_START_DATE,
           RQMB.EFF_START_DATE_WID,
           RQMB.INCLUDED_FROM_CTRT_FLAG,
           RQMB.INCLUDED_FROM_PG_FLAG,
           RQMB.OVERRIDE_FLAG,
           RQMB.PROD_ADDED_DATE,
           RQMB.PROD_ADDED_DATE_WID,
           RQMB.PROGRAM_QUAL_WID,
           RQMB.SOURCE_PG_ID,
           MBPM.PRODUCT_WID,
           MBPM.INTERNAL_ITEM_FLAG,
           MBPM.IS_INHERITED,
           MBPM.EXCLUDED_FLAG,
           RQMB.BASKET_WID || RQMB.PROGRAM_QUAL_WID || MBPM.PRODUCT_WID AS COMBINED_PRIMARY_KEY,
           P.PRODUCT_TYPE
           FROM MN_RBT_QUAL_MB_PROD_MAP_ALL_VW RQMB
           LEFT OUTER JOIN MN_BASKET_PROD_MAP_VW MBPM ON MBPM.BASKET_WID = RQMB.BASKET_WID
           LEFT JOIN MN_PRODUCT_DIM_VW P ON MBPM.PRODUCT_WID = P.PRODUCT_WID
           --WHERE MBPM.IS_INHERITED = 'N'
       ;;
  }

  dimension: basket_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BASKET_WID ;;
  }

  dimension: combined_primary_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.COMBINED_PRIMARY_KEY ;;
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

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: eff_end_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_END_DATE_WID ;;
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: eff_start_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.EFF_START_DATE_WID ;;
  }

  dimension: excluded_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.EXCLUDED_FLAG ;;
  }

  dimension: excluded_flag_yes_no {
    type: string
    label: "Is Excluded ?"
    sql: CASE WHEN ${excluded_flag} = 'Y' THEN 'Yes'
      WHEN ${excluded_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: included_from_ctrt_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.INCLUDED_FROM_CTRT_FLAG ;;
  }

  dimension: included_from_ctrt_yes_no {
    type: string
      label: "Is Included From Contract ?"
    sql: CASE WHEN ${included_from_ctrt_flag} = 'Y' THEN 'Yes'
      WHEN ${included_from_ctrt_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: included_from_pg_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.INCLUDED_FROM_PG_FLAG ;;
  }

  dimension: included_from_pg_yes_no {
    type: string
    label: "Is Included From Price Program ?"
    sql: CASE WHEN ${included_from_pg_flag} = 'Y' THEN 'Yes'
      WHEN ${included_from_pg_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: override_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.OVERRIDE_FLAG ;;
  }

  dimension: override_yes_no {
    type: string
    sql: CASE WHEN ${override_flag} = 'Y' THEN 'Yes'
      WHEN ${override_flag} = 'N' THEN 'No' ELSE Null END ;;
    label: "Is Overridden ?"
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: prod_added {
    type: time
    label: "Added"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROD_ADDED_DATE ;;
  }

  dimension: prod_added_date_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
  }

  dimension: program_qual_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_QUAL_WID ;;
  }

  dimension: source_pg_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SOURCE_PG_ID ;;
  }

  dimension: internal_item_flag {
    hidden: yes
    type: number
    sql: ${TABLE}.INTERNAL_ITEM_FLAG ;;
  }

  dimension: internal_comp_item {
    type: string
    label: "Internal/Competitor"
    sql: CASE WHEN ${internal_item_flag} = 'Y' THEN 'Internal'
         WHEN ${internal_item_flag} = 'N' THEN 'Competitor' ELSE Null END ;;
  }

  dimension: product_type {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  set: detail {
    fields: [
      excluded_flag,
      included_from_ctrt_flag,
      included_from_pg_flag,
      override_flag
    ]
  }
}
