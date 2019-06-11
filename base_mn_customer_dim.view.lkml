view: mn_customer_dim {
  sql_table_name: MN_CUSTOMER_DIM_VW ;;

  dimension: account_size {
    type: string
    sql: ${TABLE}.ACCOUNT_SIZE ;;
  }

  dimension: address {
    type: string
    label: "Address"
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: address_type {
    type: string
    label: "Address Type"
    sql: ${TABLE}.ADDRESS_TYPE ;;
  }

  dimension: city {
    type: string
    label: "City"
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    label: "Country"
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: credit_rebill_regexp_criteria {
    type: string
    label: "Credit Rebill Regex Criteria"
    sql: ${TABLE}.CREDIT_REBILL_REGEXP_CRITERIA ;;
  }

  dimension: currency {
    type: string
    label: "Currency"
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: cust_domain {
    type: string
    label: "Domain"
    sql: ${TABLE}.CUST_DOMAIN ;;
  }

  dimension: customer_name {
    type: string
    label: "Name"
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: customer_num {
    type: string
    label: "ID"
    sql: ${TABLE}.CUSTOMER_NUM ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: customer_type {
    hidden: yes
    type: string
    sql: ${TABLE}.MEMBER_INFO_TYPE ;;
  }

  dimension_group: date_created {
    type: time
    hidden:  yes
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
    type: time
    hidden:  yes
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

  dimension: external_segment {
    type: string
    sql: ${TABLE}.EXTERNAL_SEGMENT ;;
  }

  dimension: member_info_type {
    type: string
    label: "Type"
    sql: ${TABLE}.MEMBER_INFO_TYPE ;;
  }

  dimension: member_status {
    type: string
    label: "Status"
    sql: ${TABLE}.MEMBER_STATUS ;;
  }

  dimension: org_id {
    type: string
    label: "Preferred Customer ID"
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: org_id_type {
    type: string
    label: "Preferred ID Type"
    sql: ${TABLE}.ORG_ID_TYPE ;;
  }

  dimension: plan_type {
    type: string
    label: "Plan Type"
    sql: ${TABLE}.PLAN_TYPE ;;
  }

  dimension: pmt_method {
    type: string
    label: "Payment Method"
    sql: ${TABLE}.PMT_METHOD ;;
  }

  dimension: postal_zip {
    type: string
    sql: ${TABLE}.POSTAL_ZIP ;;
  }

  dimension: purchase_method {
    type: string
    label: "Purchase Method"
    sql: ${TABLE}.PURCHASE_METHOD ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: segmentation_attrubute1 {
    type: string
    sql: ${TABLE}.SEG_ATTR1 ;;
    label: "Segmentation Attribute1"
  }

  dimension: segmentation_attrubute2 {
    type: string
    sql: ${TABLE}.SEG_ATTR2 ;;
    label: "Segmentation Attribute2"
  }

  dimension: segmentation_attrubute3 {
    type: string
    sql: ${TABLE}.SEG_ATTR3 ;;
    label: "Segmentation Attribute3"
  }

  dimension: segmentation_attrubute4 {
    type: string
    sql: ${TABLE}.SEG_ATTR4 ;;
    label: "Segmentation Attribute4"
  }

  dimension: segmentation_attrubute5 {
    type: string
    sql: ${TABLE}.SEG_ATTR5 ;;
    label: "Segmentation Attribute5"
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_cust_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CUST_ID ;;
  }

  dimension_group: src_sys_date_created {
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
    sql: ${TABLE}.SRC_SYS_DATE_CREATED ;;
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: state_province {
    type: string
    sql: ${TABLE}.STATE_PROV ;;
  }

  dimension_group: status_eff_end {
    label: "End"
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
    sql: ${TABLE}.STATUS_EFF_END_DATE ;;
  }

  dimension_group: status_eff_start {
    label: "Start"
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
    sql: ${TABLE}.STATUS_EFF_START_DATE ;;
  }

  dimension: customer_name_num {
    type: string
    label: "Customer Name [Number]"
    sql: CASE WHEN ${TABLE}.CUSTOMER_NUM IS NULL THEN NULL ELSE ${TABLE}.CUSTOMER_NAME ||' [' ||${TABLE}.CUSTOMER_NUM ||']' END;;
  }


  measure: count_formatted {
    hidden: yes
    label: "Customer Count"
    html: <p style="color: white; background-color: green; font-size:160%;">{{ rendered_value }}</p>;;
    type: count
  }


  set: short_gtn_set1  {
    fields: [ customer_name, customer_name_num, customer_num, customer_type, segmentation_attrubute1, segmentation_attrubute2, segmentation_attrubute3,
      address, address_type, city, country, postal_zip, state_province, org_id, member_info_type]
  }


  measure: count {
    hidden: yes
    type: count
    drill_fields: [customer_name]
  }
}
