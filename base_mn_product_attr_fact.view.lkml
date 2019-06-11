view: mn_product_attr_fact {
  sql_table_name: MN_PRODUCT_ATTR_FACT_VW ;;

  dimension: product_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: attribute_name {
    type: string
    hidden: yes
    sql: ${TABLE}.ATTRIBUTE_NAME ;;
  }

  dimension: field_name {
    type: string
    hidden: yes
    sql: ${TABLE}.FIELD_NAME ;;
  }

  dimension: drug_type {
    type: string
    label: "Drug Type"
    sql: ${TABLE}.FIELD_VALUE ;;
  }

  dimension: desi_indicator {
    type: string
    label: "DESI Indicator"
    sql: ${TABLE}.FIELD_VALUE ;;
  }

  dimension: primary_uom {
    type: string
    label: "Primary UOM"
    sql: ${TABLE}.FIELD_VALUE ;;
  }

  dimension_group: fda_approval {
    type: time
    label: "FDA Approval"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: CASE WHEN ${TABLE}.FIELD_NAME = 'fdaApprovalDate' THEN TO_DATE(${TABLE}.FIELD_VALUE, 'YYYY-MM-DD')
              ELSE NULL END;;
  }

  dimension: low_dispunit_pkgsize {
    type: string
    label: "Lowest Dispensable Units per Package Size"
    sql: ${TABLE}.FIELD_VALUE ;;
  }

  dimension: product_strength {
    type: string
    label: "Strength"
    sql: ${TABLE}.FIELD_VALUE ;;
  }

  dimension: src_sys_prod_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.SRC_SYS_PROD_ID ;;
  }

  dimension_group: date_created {
    hidden:  yes
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
    hidden:  yes
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
}
