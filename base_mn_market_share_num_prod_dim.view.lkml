view: mn_market_share_num_prod_dim {
  derived_table: {
    sql: SELECT DISTINCT rbtqmb.PRODUCT_WID, rbnumfg.PRODUCT_WID as NUM_PRODUCT_WID,
       CASE WHEN rbnumfg.PRODUCT_WID IS NOT NULL THEN 'Yes' ELSE 'No' END AS NUMERATOR_FLAG
FROM (SELECT DISTINCT RQMB.BASKET_WID,RQMB.DATE_CREATED,RQMB.DATE_UPDATED,RQMB.EFF_END_DATE,RQMB.EFF_END_DATE_WID,RQMB.EFF_START_DATE,
      RQMB.EFF_START_DATE_WID,RQMB.INCLUDED_FROM_CTRT_FLAG,RQMB.INCLUDED_FROM_PG_FLAG,RQMB.OVERRIDE_FLAG,RQMB.PROD_ADDED_DATE,
      RQMB.PROD_ADDED_DATE_WID,RQMB.PROGRAM_QUAL_WID,RQMB.SOURCE_PG_ID,MBPM.PRODUCT_WID,MBPM.INTERNAL_ITEM_FLAG,MBPM.IS_INHERITED,MBPM.EXCLUDED_FLAG
FROM MN_RBT_QUAL_MB_PROD_MAP_ALL_VW RQMB LEFT OUTER JOIN MN_BASKET_PROD_MAP_VW MBPM ON MBPM.BASKET_WID = RQMB.BASKET_WID WHERE MBPM.IS_INHERITED = 'N') rbtqmb
LEFT JOIN MN_RBT_QUAL_MB_PROD_MAP_ALL_VW rbnumfg
      ON rbnumfg.BASKET_WID = rbtqmb.BASKET_WID AND rbnumfg.PRODUCT_WID = rbtqmb.PRODUCT_WID WHERE rbtqmb.IS_INHERITED = 'N'
 ;;
  }

  dimension: product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: num_product_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.NUM_PRODUCT_WID ;;
  }

  dimension: numerator_flag {
    type: string
    label: "Is Product Numerator ?"
    sql: ${TABLE}.NUMERATOR_FLAG ;;
  }
}
