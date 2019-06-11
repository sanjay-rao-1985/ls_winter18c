include: "base_mn_discount_bridge_fact.view.lkml"

view: mn_discount_bridge_fact_payer {
  extends: [mn_discount_bridge_fact]

  measure: total_rebate_paid_amount_payer {
    type: sum
    label: "Rebate Payment Amount"
    value_format_name: usd
    sql: ${paid_amt} ;;
    drill_fields: [mn_rebate_payment_fact.rebate_payment_id,mn_combined_rebate_program_dim.program_name,mn_pm_program_type_dim.program_type_name,mn_payment_package_dim.pymt_pkg_id,mn_payment_package_dim.pymt_pkg_name]
  }

  set: payer_excl_set {
    fields: [total_rebate_paid_amount]
  }
}
