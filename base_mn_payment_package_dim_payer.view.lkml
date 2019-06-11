include: "base_mn_payment_package_dim.view.lkml"

view: mn_payment_package_dim_payer {
  extends: [mn_payment_package_dim]

    measure: pymt_amt_payer {
    type: sum
    label: "Total Amount"
    value_format_name: usd
    sql: ${TABLE}.TOTAL_PMT_AMT ;;
    drill_fields: [pymt_pkg_id,pymt_pkg_name,pymt_pkg_type,paid_date]
  }

  set: payer_excl_set {
    fields: [pymt_amt]
  }
 }
