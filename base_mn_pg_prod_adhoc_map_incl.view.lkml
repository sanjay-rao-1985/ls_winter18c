view: mn_pg_prod_adhoc_map_incl {
  derived_table: {
    sql: SELECT DISTINCT
             SRC_SYS_STRUCT_LI_ID,
             PRODUCT_WID AS PG_INCLUDED_CAT_PROD_WID,
             PRODUCT_NAME AS PG_INCL_PRODUCT_NAME,
             PRODUCT_NUM AS PG_INCL_PRODUCT_NUMBER,
             PRODUCT_TYPE AS PG_INCL_PRODUCT_TYPE
             FROM MN_LKR_PG_PROD_MAP_VW
             WHERE SRC_SYS_INCLUDED_LI_ID IS NULL
 ;;
  }

  dimension: src_sys_struct_li_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_STRUCT_LI_ID ;;
  }

  dimension: pg_included_cat_prod_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.PG_INCLUDED_CAT_PROD_WID ;;
  }

  dimension: pg_incl_product_name {
    type: string
    group_label: "Included Product/Category"
    label: "Included Product Name"
    sql: ${TABLE}.PG_INCL_PRODUCT_NAME ;;
  }

  dimension: pg_incl_product_number {
    type: string
    group_label: "Included Product/Category"
    label: "Included Product ID"
    sql: ${TABLE}.PG_INCL_PRODUCT_NUMBER ;;
  }

  dimension: pg_incl_product_type {
    type: string
    group_label: "Included Product/Category"
    label: "Included Product Type"
    sql: ${TABLE}.PG_INCL_PRODUCT_TYPE ;;
  }


}
