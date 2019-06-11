view: mn_pg_prod_adhoc_map {
    derived_table: {
      sql: SELECT DISTINCT PPM.PG_WID,
        PPM.PRODUCT_WID AS PG_PRODUCT_WID,
        PPM.EFF_START_DATE,
        PPM.EFF_END_DATE,
        PPM.EFF_START_DATE_WID,
        PPM.EFF_END_DATE_WID,
        PPM.PROD_ADDED_DATE_WID,
        PPM.PROD_ADDED_DATE,
        PPM.EXCLUDED_FLAG,
        P1.LEVEL0_PROD_WID AS PG_EXPANDED_PRODUCT_WID,
        PPM.BASKET_WID     AS PG_BASKET_WID,
        PPM.SRC_SYS_STRUCT_LI_ID,
        PPM.SRC_SYS_INCLUDED_LI_ID
      FROM MN_PG_PROD_MAP_ALL_VW PPM
      JOIN MN_PRODUCT_MAP_ALL_VERS_VW P1
      ON (P1.LEVEL0_PROD_WID = PPM.PRODUCT_WID
      OR P1.LEVEL1_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL2_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL3_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL4_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL5_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL6_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL7_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL8_PROD_WID  = PPM.PRODUCT_WID
      OR P1.LEVEL9_PROD_WID  = PPM.PRODUCT_WID)
       ;;
    }

    measure: count {
      type: count
      hidden: yes
    }

    dimension: pg_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_WID ;;
    }

    dimension: pg_product_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_PRODUCT_WID ;;
    }

    dimension_group: effective_start_date {
      type: time
      label: "Product Effective Start"
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

    dimension_group: effective_end_date {
      type: time
      label: "Product Effective End"
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

    dimension: eff_start_date_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.EFF_START_DATE_WID ;;
    }

    dimension: eff_end_date_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.EFF_END_DATE_WID ;;
    }

    dimension: prod_added_date_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PROD_ADDED_DATE_WID ;;
    }

    dimension_group: prod_added_date {
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

    dimension: excluded_flag {
      type: string
      hidden: yes
      sql: ${TABLE}.EXCLUDED_FLAG ;;
    }

  dimension: excluded_flag_yes_no {
    type: string
    label: "Is Excluded ?"
    sql: CASE WHEN ${excluded_flag} = 'N' THEN 'No'
              WHEN ${excluded_flag} = 'Y' THEN 'Yes' ELSE NULL END ;;
  }

    dimension: is_market_basket_product {
      type: string
      hidden: yes
      sql: CASE WHEN ${pg_basket_wid} IS NULL THEN 'N' ELSE 'Y' END ;;
    }

  dimension: is_mb_product_yes_no {
    type: string
    label: "Is Market Basket Product ?"
    sql: CASE WHEN ${is_market_basket_product} = 'N' THEN 'No'
              WHEN ${is_market_basket_product} = 'Y' THEN 'Yes' ELSE NULL END ;;
  }


  dimension: pg_expanded_product_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_EXPANDED_PRODUCT_WID ;;
    }

    dimension: pg_basket_wid {
      type: number
      hidden: yes
      sql: ${TABLE}.PG_BASKET_WID ;;
    }

    dimension: src_sys_struct_li_id {
      type: number
      hidden: yes
      sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
    }

    dimension: src_sys_included_li_id {
      type: number
      hidden: yes
      sql: ${TABLE}.SRC_SYS_INCLUDED_LI_ID ;;
    }


}
