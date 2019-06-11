view: mn_formulary_prod_map {
  sql_table_name: MN_FORMULARY_PROD_MAP_VW ;;

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
    label: "Effective End"
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

  dimension_group: eff_start {
    type: time
    label: "Effective Start"
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

  dimension: formulary_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.FORMULARY_WID ;;
  }

  dimension: line_sev {
    type: string
    sql: ${TABLE}.LINE_SEV ;;
    label: "Severity"
  }

  dimension: ndc_lock {
    type: string
    sql: CASE WHEN ${TABLE}.NDC_LOCK = 0 THEN 'No' ELSE 'Yes' END ;;
    label: "NDC Lock ?"
  }

  dimension: notes {
    type: string
    label: "Notes"
    sql: ${TABLE}.NOTES ;;
  }

  dimension: other_rest {
    type: string
    sql: CASE WHEN ${TABLE}.OTHER_REST = 0 THEN 'No' ELSE 'Yes' END ;;
    label: "Other Restriction ?"
  }

  dimension: prior_auth {
    type: string
    sql: CASE WHEN ${TABLE}.PRIOR_AUTH = 0 THEN 'No' ELSE 'Yes' END ;;
    label: "Prior Authorization ?"
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: qty_limit {
    type: string
    sql: CASE WHEN ${TABLE}.QTY_LIMIT = 0 THEN 'No' ELSE 'Yes' END ;;
    label: "Quantity Limit ?"
  }

  dimension: run_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: step_edit {
    type: string
    label: "Step Edit ?"
    sql: CASE WHEN ${TABLE}.STEP_EDIT = 0 THEN 'No' ELSE 'Yes' END ;;
  }

  dimension: tier_num {
    type: string
    sql: ${TABLE}.TIER_NUM ;;
    label: "Tier"
  }

  dimension: tier_on_off {
    type: string
    sql: CASE WHEN ${TABLE}.TIER_ON_OFF = 0 THEN 'No' ELSE 'Yes' END ;;
    label: "Tier On ?"
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  set: detail {
    fields: [
      line_sev,
      ndc_lock,
      notes,
      other_rest,
      prior_auth,
      qty_limit,
      step_edit,
      tier_num,
      tier_on_off
    ]
  }
}
