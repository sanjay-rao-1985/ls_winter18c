view: mn_user_contact_fact {
  sql_table_name: MN_USER_CONTACT_FACT_VW ;;

  dimension: contact {
    type: string
    sql: ${TABLE}.CONTACT ;;
  }

  dimension: contact_comment {
    type: string
    label: "Name"
    sql: ${TABLE}.CONTACT_COMMENT ;;
  }

  dimension: contact_desc {
    type: string
    label: "Description"
    sql: ${TABLE}.CONTACT_DESC ;;
  }

  dimension: contact_type {
    type: string
    hidden: yes
    sql: ${TABLE}.CONTACT_TYPE ;;
  }

  dimension: contact_type_name {
    type: string
    label: "Type"
    sql: ${TABLE}.CONTACT_TYPE_NAME ;;
  }

  dimension: contact_wid {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.CONTACT_WID ;;
  }

  dimension_group: date_created {
    type: time
    hidden: yes
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
    hidden: yes
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

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: primary_contact_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.PRIMARY_CONTACT_FLAG ;;
  }

  dimension: primary_contact_flag_yes_no {
    type: string
    label: "Primary Contact"
    sql: CASE WHEN ${primary_contact_flag} = 'Y' THEN 'Yes'
      WHEN ${primary_contact_flag} = 'N' THEN 'No' ELSE NULL END ;;
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

  dimension: src_sys_contact_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CONTACT_ID ;;
  }

  dimension_group: src_sys_date_updated {
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

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_user_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_USER_ID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: user_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.USER_WID ;;
  }

#*************Master Data Customer Contact Set
  set: md_cust_contact_set {
    fields: [contact_comment,contact_desc,contact_type_name]
  }

}
