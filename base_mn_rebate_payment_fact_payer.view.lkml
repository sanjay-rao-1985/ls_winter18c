include: "base_mn_rebate_payment_fact.view.lkml"

view: mn_rebate_payment_fact_payer {
  extends: [mn_rebate_payment_fact]

  measure: count_payer {
    type: count
    label: "Count"
    drill_fields: [rebate_payment_id,paid_date,mn_combined_rebate_program_dim.program_name,mn_pm_program_type_dim.program_type_name,
      mn_payment_package_dim.pymt_pkg_id,mn_payment_package_dim.pymt_pkg_name]
  }

  measure: total_rebate_due_amount_payer {
    type: sum
    label: "Total Amount Due"
    value_format_name: usd
    sql: ${rebate_due_amount} ;;
    drill_fields: [rebate_payment_id,mn_combined_rebate_program_dim.program_name,mn_pm_program_type_dim.program_type_name,
      mn_payment_package_dim.pymt_pkg_id,mn_payment_package_dim.pymt_pkg_name]
  }

  set: payer_excl_set {
    fields: [count,total_rebate_due_amount]
  }
 }
