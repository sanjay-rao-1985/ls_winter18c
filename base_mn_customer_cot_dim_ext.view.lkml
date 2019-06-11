include: "base_mn_customer_cot_dim.view.lkml"

view: mn_customer_cot_dim_ext {
  extends: [mn_customer_cot_dim]

#*************Master Data Customers Aliasing
  dimension_group: md_eff_start {
    type: time
    label: "Effective"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${eff_start_raw} ;;
  }

  dimension_group: md_eff_end {
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
    sql: ${eff_end_raw} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #*************Master Data Customers Set
  set: md_customer_cot_set {
    fields: [md_eff_start_raw,md_eff_start_time,md_eff_start_date,md_eff_start_week_of_year,md_eff_start_month,md_eff_start_quarter,md_eff_start_year,
      md_eff_end_raw,md_eff_end_time,md_eff_end_date,md_eff_end_week_of_year,md_eff_end_month,md_eff_end_quarter,md_eff_end_year,count]
  }

}
