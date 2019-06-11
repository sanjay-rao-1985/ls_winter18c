include: "base_mn_contract_header_dim.view.lkml"

view: mn_contract_header_dim_payer {
 extends: [mn_contract_header_dim]

measure: no_of_contracted_customers_payer {
  type: count_distinct
  sql: ${TABLE}.OWNER_WID ;;
  drill_fields: [mn_rbt_cust_owner_dim.customer_name,mn_rbt_cust_owner_dim.customer_num,mn_rbt_cust_owner_dim.customer_type]
  label: "# of Contracted Customers"
}

  measure: contract_count_payer {
    type: count_distinct
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
    drill_fields: [contract_name,contract_number,mn_rbt_ctrt_type_dim.ctrt_type_name,eff_start_date,eff_end_date]
    label: "Count"
  }

set: payer_excl_set {
  fields: [no_of_contracted_customers,contract_count]
}

set: payer_comb_excl_set {
  fields: [no_of_contracted_customers_payer,contract_count]
}

}
