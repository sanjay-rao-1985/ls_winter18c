include: "base_ls_explores_ls_winter18c.model.lkml"

label: "Validata"

#*** Transaction Details Explore Start ***
explore: vd_tx_details {
  from: mn_vd_file_header_fact
  view_name: mn_vd_file_header_fact
  label: "Transaction Details"
  view_label: "Transactions"

  hidden: no

  sql_always_where: ${mn_vd_file_header_fact.file_data_type} = 'TX' ;;
  fields: [mn_vd_file_header_fact.transactionincludeset*,mn_vd_tx_item_fact.transactionitemsset*,mn_vd_tx_item_fact.transactiondetailsset*,
    mn_vd_file_item_error_fact.itemErrors_set*,mn_vd_trading_partner_dim_vw.vd_tx_det_cust_set*,mn_vd_customer_addr_fact.vd_customer_addr_set*,
    mn_vd_product_dim.vd_tx_det_prod_incl_set*,mn_vd_prod_family_dim.vd_prod_family_incl_set*,mn_vd_contract_dim.vd_contract_set*,
    mn_vd_ctrt_entity.vd_ctrt_entity_set*,mn_vd_prod_mds_dim.vd_mds_set*,mn_vd_ctrt_mds_dim.vd_mds_set*,mn_vd_trad_part_mds_dim_vw.vd_mds_set*]

  join: mn_vd_tx_item_fact {
    from: mn_vd_tx_item_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Transaction Items"
    sql_on: ${mn_vd_file_header_fact.file_wid} = ${mn_vd_tx_item_fact.file_wid} ;;
  }


  join: mn_vd_file_item_error_fact {
    from: mn_vd_file_item_error_fact
    type: left_outer
    relationship: many_to_many
    view_label: "Transaction Items"
    sql_on: ${mn_vd_tx_item_fact.tx_item_wid} = ${mn_vd_file_item_error_fact.file_item_wid} and ${mn_vd_file_item_error_fact.file_data_type} = 'TX' ;;
  }

  join: mn_vd_trading_partner_dim_vw {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_tx_item_fact.plan_wid} = ${mn_vd_trading_partner_dim_vw.customer_wid} ;;
  }

  join: mn_vd_customer_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_trading_partner_dim_vw.customer_wid} = ${mn_vd_customer_addr_fact.customer_wid}
      and ${mn_vd_customer_addr_fact.primary_address} = 'Yes';;
  }

  join: mn_vd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_tx_item_fact.product_wid} = ${mn_vd_product_dim.product_wid} ;;
  }

  join: mn_vd_prod_family_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.ndc9} = ${mn_vd_prod_family_dim.ndc} ;;
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_tx_item_fact.contract_wid} = ${mn_vd_contract_dim.contract_wid}
      and ${mn_vd_contract_dim.ctrt_type_name} = ${mn_vd_file_header_fact.transaction_type} ;;
  }

  join: mn_vd_ctrt_entity {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.owner_wid} = ${mn_vd_ctrt_entity.customer_wid} ;;
  }

  join: mn_vd_prod_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.mds_num} = ${mn_vd_prod_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_ctrt_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.mds_num} = ${mn_vd_ctrt_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_trad_part_mds_dim_vw {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_trading_partner_dim_vw.mds_num} = ${mn_vd_trad_part_mds_dim_vw.src_sys_mds_id} ;;
  }
}

#*** Transaction Details Explore End ***


#*** Transaction Items History Explore Start ***
explore: vd_tx_item_history {
  from: mn_vd_file_item_hist_fact
  view_name: mn_vd_file_item_hist_fact
  view_label: "Transaction Items History"
  label: "Transaction Items History"
  sql_always_where: ${mn_vd_file_item_hist_fact.file_data_type} = 'TX' ;;

  fields: [ALL_FIELDS*,-mn_vd_file_item_hist_fact.tx_hist_item_excl_set*]

  hidden: no

  join: mn_vd_file_header_fact {
    from: mn_vd_file_header_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transactions"
    sql_on: ${mn_vd_file_item_hist_fact.file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
    fields: [mn_vd_file_header_fact.tx_item_hist_incl_set*]
  }

  join: mn_vd_tx_item_fact {
    from: mn_vd_tx_item_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Items"
    sql_on: ${mn_vd_file_item_hist_fact.file_item_wid} = ${mn_vd_tx_item_fact.tx_item_wid} ;;
    fields: [mn_vd_tx_item_fact.tx_item_hist_set*]
  }

  join: mn_vd_file_item_error_fact {
    from: mn_vd_file_item_error_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Transaction Items"
    sql_on: ${mn_vd_tx_item_fact.tx_item_wid} = ${mn_vd_file_item_error_fact.file_item_wid} and ${mn_vd_file_item_error_fact.file_data_type} = 'TX' ;;
    fields: [mn_vd_file_item_error_fact.itemErrors_set*]
  }

  join: mn_vd_file_head_itm_hist_fact {
    from: mn_vd_file_header_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Items History"
    sql_on: ${mn_vd_file_item_hist_fact.file_wid} = ${mn_vd_file_head_itm_hist_fact.file_wid} ;;
    fields: [mn_vd_file_head_itm_hist_fact.file_name,mn_vd_file_head_itm_hist_fact.itm_tx_hist_file_id]
  }

  join: mn_vd_tx_item_hist_fact {
    from: mn_vd_tx_item_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Items History"
    sql_on: ${mn_vd_file_item_hist_fact.file_item_wid} = ${mn_vd_tx_item_hist_fact.tx_item_wid} ;;
    fields: [mn_vd_tx_item_hist_fact.status,mn_vd_tx_item_hist_fact.src_sys_tx_item_id_hist]
  }

  join: mn_vd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Items"
    sql_on: ${mn_vd_tx_item_fact.product_wid} = ${mn_vd_product_dim.product_wid} ;;
    fields: [mn_vd_product_dim.tx_item_prod_key]
  }

  join: mn_vd_contract_header_dim {
    from: mn_contract_header_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Items"
    sql_on: ${mn_vd_tx_item_fact.contract_wid} = ${mn_vd_contract_header_dim.contract_wid} ;;
    fields: [mn_vd_contract_header_dim.trnx_item_ctrt_key]
  }

  join: mn_vd_trading_partner_dim_vw {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Items"
    sql_on: ${mn_vd_tx_item_fact.plan_wid} = ${mn_vd_trading_partner_dim_vw.customer_wid} ;;
    fields: [mn_vd_trading_partner_dim_vw.tx_item_plan_key]
  }

}

#*** Transaction Items History Explore End ***


#*** Transactions-CG Data Details Explore Start ***
explore: tx_cgd_details {
  from: mn_vd_file_header_fact
  view_name: mn_cgd_vd_file_header_fact
  label: "Transactions-CG Data Details"
  view_label: "Transactions-CG Data Files"

  sql_always_where: ${mn_cgd_vd_file_header_fact.file_data_type} = 'CGD' ;;
  fields: [mn_cgd_vd_file_header_fact.cgd_tx_details_incl_set*,mn_vd_cgd_item_fact.cgd_tx_items_set*,
           mn_vd_trading_partner_dim_vw.vd_cgd_tx_det_cust_set*,mn_vd_customer_addr_fact.vd_customer_addr_set*,
           mn_vd_product_dim.vd_tx_cg_det_prod_incl_set*,mn_vd_prod_family_dim.vd_prod_family_incl_set*,
           mn_vd_contract_dim.vd_cgd_det_ctrt_set*,mn_vd_ctrt_entity.vd_ctrt_entity_set*,mn_vd_prod_mds_dim.vd_mds_set*,
           mn_vd_ctrt_mds_dim.vd_mds_set*,mn_vd_trad_part_mds_dim_vw.vd_mds_set*,mn_vd_file_item_error_fact.itemErrors_set*]

  hidden: no

  join: mn_vd_cgd_item_fact {
    from: mn_vd_cgd_item_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Item-CG Data"
    sql_on: ${mn_cgd_vd_file_header_fact.file_wid} = ${mn_vd_cgd_item_fact.file_wid} ;;
  }

  join: mn_vd_trading_partner_dim_vw {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_cgd_vd_file_header_fact.pbm_wid} = ${mn_vd_trading_partner_dim_vw.customer_wid} ;;
  }

  join: mn_vd_customer_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_trading_partner_dim_vw.customer_wid} = ${mn_vd_customer_addr_fact.customer_wid}
      and ${mn_vd_customer_addr_fact.primary_address} = 'Yes';;
  }

  join: mn_vd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_cgd_item_fact.product_wid} = ${mn_vd_product_dim.product_wid} ;;
  }

  join: mn_vd_prod_family_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.ndc9} = ${mn_vd_prod_family_dim.ndc} ;;
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_cgd_vd_file_header_fact.contract_wid} = ${mn_vd_contract_dim.contract_wid} ;;
  }

  join: mn_vd_ctrt_entity {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.owner_wid} = ${mn_vd_ctrt_entity.customer_wid} ;;
  }

  join: mn_vd_prod_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.mds_num} = ${mn_vd_prod_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_ctrt_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.mds_num} = ${mn_vd_ctrt_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_trad_part_mds_dim_vw {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_trading_partner_dim_vw.mds_num} = ${mn_vd_trad_part_mds_dim_vw.src_sys_mds_id} ;;
  }

  join: mn_vd_file_item_error_fact {
    from: mn_vd_file_item_error_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Item-CG Data"
    sql_on: ${mn_vd_cgd_item_fact.cgd_item_wid} = ${mn_vd_file_item_error_fact.file_item_wid} and ${mn_vd_file_item_error_fact.file_data_type} = 'CGD' ;;
  }
}

#*** Transactions-CG Data Details Explore End ***


#*** Transaction Reversals Explore Begins ***
explore: vd_tx_reversals {
  label: "Transaction Reversals"
  from: mn_vd_tx_item_rev_map
  view_name: mn_vd_tx_item_rev_map
  view_label: "Reversals"

  hidden: no

  join: mn_vd_file_header_fact {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "Transactions"
    relationship: many_to_one
    sql_on: ${mn_vd_tx_item_rev_map.ref_file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
    fields: [mn_vd_file_header_fact.transactionincludeset*]
  }

  join: mn_vd_file_header_fact_ref {
    from: mn_vd_file_header_fact
    type: left_outer
    view_label: "Reversals"
    relationship: many_to_one
    sql_on: ${mn_vd_tx_item_rev_map.ref_file_wid} = ${mn_vd_file_header_fact_ref.file_wid} ;;
    fields: [mn_vd_file_header_fact_ref.transactionreversed*]
  }

  join: mn_vd_file_header_fact_rev {
    from: mn_vd_file_header_fact
    type: left_outer
    view_label: "Reversals"
    relationship: many_to_one
    sql_on: ${mn_vd_tx_item_rev_map.rev_file_wid} = ${mn_vd_file_header_fact_rev.file_wid} ;;
    fields: [mn_vd_file_header_fact_rev.transactionreversing*]
  }

  join: mn_vd_tx_item_fact {
    from: mn_vd_tx_item_fact
    type: left_outer
    view_label: "Reversals"
    relationship: many_to_many
    sql_on: ${mn_vd_tx_item_rev_map.ref_tx_item_wid} = ${mn_vd_tx_item_fact.tx_item_wid} ;;
    fields: [mn_vd_tx_item_fact.transactionreversing*]
  }

  join: mn_vd_customer_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    view_label: "Trading Partner"
    relationship: many_to_one
    sql_on: ${mn_vd_tx_item_fact.plan_wid} = ${mn_vd_customer_dim.customer_wid} ;;
    fields: [mn_vd_customer_dim.vd_rev_cust_set*]
  }

  join: mn_vd_customer_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    view_label: "Trading Partner"
    relationship: one_to_one
    sql_on: ${mn_vd_customer_dim.customer_wid} = ${mn_vd_customer_addr_fact.customer_wid} and ${mn_vd_customer_addr_fact.primary_address} = 'Yes' ;;
    fields: [mn_vd_customer_addr_fact.vd_customer_addr_set*]
  }

  join: mn_vd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_tx_item_fact.product_wid} = ${mn_vd_product_dim.product_wid} ;;
    fields: [mn_vd_product_dim.vd_rev_prod_incl_set*]
  }

  join: mn_vd_prod_family_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.ndc9} = ${mn_vd_prod_family_dim.ndc} ;;
    fields: [mn_vd_prod_family_dim.vd_prod_family_incl_set*]
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_tx_item_fact.contract_wid} = ${mn_vd_contract_dim.contract_wid}
      and ${mn_vd_contract_dim.ctrt_type_name} = ${mn_vd_file_header_fact.transaction_type} ;;
    fields: [mn_vd_contract_dim.vd_rev_ctrt_set*]
  }

  join: mn_vd_ctrt_entity {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.owner_wid} = ${mn_vd_ctrt_entity.customer_wid} ;;
    fields: [mn_vd_ctrt_entity.vd_ctrt_entity_set*]
  }

  join: mn_vd_prod_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.mds_num} = ${mn_vd_prod_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_ctrt_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.mds_num} = ${mn_vd_ctrt_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_trad_part_mds_dim_vw {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_customer_dim.mds_num} = ${mn_vd_trad_part_mds_dim_vw.src_sys_mds_id} ;;
  }

}
#*** Transaction Reversals Explore Ends ***

#*** Transaction Duplicate Explore Begins ***
explore: vd_tx_duplicates {
  label: "Transaction Duplicates"
  from: mn_vd_tx_item_dupl_map
  view_name: mn_vd_tx_item_dupl_map
  view_label: "File with Duplicates"

  hidden: no

  join: mn_vd_file_header_fact {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "File with Duplicates"
    relationship: many_to_one
    sql_on: ${mn_vd_tx_item_dupl_map.orig_file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
    fields: [mn_vd_file_header_fact.header_filewithduplicates*]
  }

  join: mn_vd_file_header_fact_itms {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "Items in the Duplicate Set"
    relationship: many_to_one
    sql_on: ${mn_vd_tx_item_dupl_map.file_wid} = ${mn_vd_file_header_fact_itms.file_wid} ;;
    fields: [mn_vd_file_header_fact_itms.header_itemsintheduplicateset*]
  }

  join: mn_vd_tx_item_fact {
    from: mn_vd_tx_item_fact
    type: left_outer
    view_label: "Items in the Duplicate Set"
    relationship: many_to_many
    sql_on: ${mn_vd_tx_item_dupl_map.tx_item_wid} = ${mn_vd_tx_item_fact.tx_item_wid} ;;
    fields: [mn_vd_tx_item_fact.item_itemsintheduplicateset*]
  }

  join: mn_vd_tx_item_fact_header {
    from: mn_vd_tx_item_fact
    type: left_outer
    view_label: "File with Duplicates"
    relationship: many_to_many
    sql_on: ${mn_vd_tx_item_dupl_map.orig_tx_item_wid} = ${mn_vd_tx_item_fact_header.tx_item_wid} ;;
    fields: [mn_vd_tx_item_fact_header.item_filewithduplicates*]
  }


  join: mn_vd_file_header_fact_item {
    from: mn_vd_file_header_fact
    type: left_outer
    view_label: "Items in the Duplicate Set"
    relationship: many_to_many
    sql_on: ${mn_vd_tx_item_fact.file_wid} = ${mn_vd_file_header_fact_item.file_wid} ;;
    fields: [mn_vd_file_header_fact_item.file_name]
  }

  join: mn_vd_customer_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    view_label: "Trading Partner"
    relationship: many_to_one
    sql_on: ${mn_vd_tx_item_fact.plan_wid} = ${mn_vd_customer_dim.customer_wid} ;;
    fields: [mn_vd_customer_dim.vd_dup_cust_set*]
  }

  join: mn_vd_customer_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    view_label: "Trading Partner"
    relationship: one_to_one
    sql_on: ${mn_vd_customer_dim.customer_wid} = ${mn_vd_customer_addr_fact.customer_wid} and ${mn_vd_customer_addr_fact.primary_address} = 'Yes' ;;
    fields: [mn_vd_customer_addr_fact.vd_customer_addr_set*]
  }

  join: mn_vd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_tx_item_fact.product_wid} = ${mn_vd_product_dim.product_wid} ;;
    fields: [mn_vd_product_dim.vd_dup_prod_incl_set*]
  }

  join: mn_vd_prod_family_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.ndc9} = ${mn_vd_prod_family_dim.ndc} ;;
    fields: [mn_vd_prod_family_dim.vd_prod_family_incl_set*]
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_tx_item_fact.contract_wid} = ${mn_vd_contract_dim.contract_wid}
      and ${mn_vd_contract_dim.ctrt_type_name} = ${mn_vd_file_header_fact.transaction_type} ;;
    fields: [mn_vd_contract_dim.vd_dup_ctrt_set*]
  }

  join: mn_vd_ctrt_entity {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.owner_wid} = ${mn_vd_ctrt_entity.customer_wid} ;;
    fields: [mn_vd_ctrt_entity.vd_ctrt_entity_set*]
  }

  join: mn_vd_prod_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.mds_num} = ${mn_vd_prod_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_ctrt_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.mds_num} = ${mn_vd_ctrt_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_trad_part_mds_dim_vw {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_customer_dim.mds_num} = ${mn_vd_trad_part_mds_dim_vw.src_sys_mds_id} ;;
  }

}
#*** Transaction Duplicate Explore Ends ***

#*** Transaction History Explore Begins ***
explore: vd_tx_history {
  label: "Transaction History"
  from: mn_vd_file_usg_hist_fact
  view_name: mn_vd_file_usg_hist_fact
  view_label: "Transaction File History"
  fields: [ALL_FIELDS*,-mn_vd_file_usg_hist_fact.Exc_Trns_File_Hist*]

  sql_always_where: ${mn_vd_file_usg_hist_fact.file_data_type} = 'TX' ;;

  hidden: no

  join: mn_vd_file_header_fact {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "Transactions"
    relationship: many_to_one
    sql_on: ${mn_vd_file_usg_hist_fact.file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
    fields: [mn_vd_file_header_fact.transactionincludeset*]
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction File History"
    sql_on: ${mn_vd_file_header_fact.contract_comb_pk} = ${mn_vd_contract_dim.contract_pk} ;;
    fields: [mn_vd_contract_dim.vd_hist_ctrt_set*]
  }

}
#*** Transaction History Explore Ends ***

#*** Transactions-CG Data Duplicate Explore Begins ***
explore: vd_cgd_duplicates {
  label: "Transactions-CG Data Duplicates"
  from: mn_vd_cgd_item_dupl_map
  view_name: mn_vd_cgd_item_dupl_map
  view_label: "File with Duplicates"

  hidden: no

  join: mn_vd_file_header_fact {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "File with Duplicates"
    relationship: many_to_one
    sql_on: ${mn_vd_cgd_item_dupl_map.orig_file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
    fields: [mn_vd_file_header_fact.header_cgd_filewithduplicates*]
  }

  join: mn_vd_file_header_fact_itms {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "Items in the Duplicate Set"
    relationship: many_to_one
    sql_on: ${mn_vd_cgd_item_dupl_map.file_wid} = ${mn_vd_file_header_fact_itms.file_wid} ;;
    fields: [mn_vd_file_header_fact_itms.header_cgd_itemsintheduplicateset*]
  }

  join: mn_vd_cgd_item_fact {
    from: mn_vd_cgd_item_fact
    type: left_outer
    view_label: "Items in the Duplicate Set"
    relationship: many_to_many
    sql_on: ${mn_vd_cgd_item_dupl_map.cgd_item_wid} = ${mn_vd_cgd_item_fact.cgd_item_wid} ;;
    fields: [mn_vd_cgd_item_fact.item_cgd_itemsintheduplicateset*]
  }

  join: mn_vd_cgd_item_fact_header {
    from: mn_vd_cgd_item_fact
    type: left_outer
    view_label: "File with Duplicates"
    relationship: many_to_many
    sql_on: ${mn_vd_cgd_item_dupl_map.dup_grp_item_wid} = ${mn_vd_cgd_item_fact_header.cgd_item_wid} ;;
    fields: [mn_vd_cgd_item_fact_header.item_cgd_filewithduplicates*]
  }

  join: mn_vd_cgd_header_fact_item {
    from: mn_vd_file_header_fact
    type: left_outer
    view_label: "Items in the Duplicate Set"
    relationship: many_to_many
    sql_on: ${mn_vd_cgd_item_fact.file_wid} = ${mn_vd_cgd_header_fact_item.file_wid} ;;
    fields: [mn_vd_cgd_header_fact_item.file_name]
  }

  join: mn_vd_customer_dim_dsk {
    from: mn_customer_dim_reuse
    type: left_outer
    view_label: "File with Duplicates"
    relationship: many_to_one
    sql_on: ${mn_vd_file_header_fact.pbm_wid} = ${mn_vd_customer_dim.customer_wid} ;;
    fields: [mn_vd_customer_dim_dsk.vd_cgd_dup_file_dsk*]
  }

  join: mn_vd_customer_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    view_label: "Trading Partner"
    relationship: many_to_one
    sql_on: ${mn_vd_file_header_fact_itms.pbm_wid} = ${mn_vd_customer_dim.customer_wid} ;;
    fields: [mn_vd_customer_dim.vd_cgd_dup_cust_set*]
  }

  join: mn_vd_customer_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    view_label: "Trading Partner"
    relationship: one_to_one
    sql_on: ${mn_vd_customer_dim.customer_wid} = ${mn_vd_customer_addr_fact.customer_wid} and ${mn_vd_customer_addr_fact.primary_address} = 'Yes' ;;
    fields: [mn_vd_customer_addr_fact.vd_customer_addr_set*]
  }

  join: mn_vd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_cgd_item_fact.product_wid} = ${mn_vd_product_dim.product_wid} ;;
    fields: [mn_vd_product_dim.vd_cgd_dup_prod_incl_set*]
  }

  join: mn_vd_prod_family_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.ndc9} = ${mn_vd_prod_family_dim.ndc} ;;
    fields: [mn_vd_prod_family_dim.vd_prod_family_incl_set*]
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_file_header_fact.contract_wid} = ${mn_vd_contract_dim.contract_wid} ;;
    fields: [mn_vd_contract_dim.vd_cgd_dup_ctrt_set*]
  }

  join: mn_vd_ctrt_entity {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.owner_wid} = ${mn_vd_ctrt_entity.customer_wid} ;;
    fields: [mn_vd_ctrt_entity.vd_ctrt_entity_set*]
  }

  join: mn_vd_prod_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Product"
    sql_on: ${mn_vd_product_dim.mds_num} = ${mn_vd_prod_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_ctrt_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.mds_num} = ${mn_vd_ctrt_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_trad_part_mds_dim_vw {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_customer_dim.mds_num} = ${mn_vd_trad_part_mds_dim_vw.src_sys_mds_id} ;;
  }

}
#*** Transactions-CG Data Duplicate Explore Begins ***

#*** Transaction-CG Data History Explore Begins ***
explore: vd_cgd_history {
  label: "Transaction-CG Data History"
  from: mn_vd_file_usg_hist_fact
  view_name: mn_vd_file_usg_hist_fact
  view_label: "Transaction-CG Data Files History"
  fields: [ALL_FIELDS*,-mn_vd_file_usg_hist_fact.Exc_Trns_CGD_File_Hist*]

  sql_always_where: ${mn_vd_file_usg_hist_fact.file_data_type} = 'CGD' ;;

  hidden: no

  join: mn_vd_file_header_fact {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "Transactions-CG Data Files"
    relationship: many_to_one
    sql_on: ${mn_vd_file_usg_hist_fact.file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
    fields: [mn_vd_file_header_fact.trns_cgd_filehist_includeset*]
  }

  join: mn_vd_contract_dim_files {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Transactions-CG Data Files"
    sql_on: ${mn_vd_file_header_fact.contract_comb_pk} = ${mn_vd_contract_dim_files.contract_pk} ;;
    fields: [mn_vd_contract_dim_files.vd_cgd_file_hist_ctrt_set*]
  }

  join: mn_vd_customer_dim_fsk {
    from: mn_customer_dim_reuse
    type: left_outer
    view_label: "Transactions-CG Data Files"
    relationship: many_to_one
    sql_on: ${mn_vd_file_header_fact.pbm_wid} = ${mn_vd_customer_dim_fsk.customer_wid} ;;
    fields: [mn_vd_customer_dim_fsk.vd_cgd_file_hist_fsk*]
  }

}
#*** Transaction-CG Data History Explore Ends ***

#*** Transaction-CG Data Items History BEGINS ***
explore: vd_cgd_item_history {
  from: mn_vd_file_item_hist_fact
  view_name: mn_vd_file_item_hist_fact
  view_label: "Transaction Items-CG Data History"
  label: "Transactions-CG Data Items History"
  fields: [mn_vd_file_item_hist_fact.cgd_hist_item_ìncl_set*,mn_vd_file_header_fact.trns_cgd_itm_hist_incl_set*,mn_vd_cgd_item_fact.cgd_itm_hist_incl_set*,
    mn_vd_file_header_fact_files.trns_cgd_filehist_includeset*,mn_vd_contract_dim_files.vd_cgd_file_hist_ctrt_set*,mn_vd_customer_dim_fsk.vd_cgd_file_hist_fsk*,
    mn_vd_cgd_item_fact_itm.cgd_tx_items_set*,mn_vd_file_header_fact_itm.trns_cgd_itm_incl_set*,mn_vd_product_dim.vd_cgd_itm_hist_prod_incl_set*,
    mn_vd_file_item_error_fact.itemErrors_set*]


  sql_always_where: ${mn_vd_file_item_hist_fact.file_data_type} = 'CGD' ;;

  hidden: no

  join: mn_vd_file_header_fact {
    from: mn_vd_file_header_fact
    type: left_outer
    view_label: "Transaction Items-CG Data History"
    relationship: many_to_one
    sql_on: ${mn_vd_file_item_hist_fact.file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
  }

  join: mn_vd_cgd_item_fact {
    from: mn_vd_cgd_item_fact
    type: left_outer
    view_label: "Transaction Items-CG Data History"
    relationship: many_to_one
    sql_on: ${mn_vd_file_item_hist_fact.file_item_wid} = ${mn_vd_cgd_item_fact.cgd_item_wid} ;;
  }

  join: mn_vd_file_header_fact_files {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "Transactions-CG Data Files"
    relationship: many_to_one
    sql_on: ${mn_vd_file_item_hist_fact.file_wid} = ${mn_vd_file_header_fact_files.file_wid} ;;
#     fields: [mn_vd_file_header_fact_files.trns_cgd_filehist_includeset*]
  }

  join: mn_vd_contract_dim_files {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Transactions-CG Data Files"
    sql_on: ${mn_vd_file_header_fact_files.contract_comb_pk} = ${mn_vd_contract_dim_files.contract_pk} ;;
#     fields: [mn_vd_contract_dim_files.vd_cgd_file_hist_ctrt_set*]
  }

  join: mn_vd_customer_dim_fsk {
    from: mn_customer_dim_reuse
    type: left_outer
    view_label: "Transactions-CG Data Files"
    relationship: many_to_one
    sql_on: ${mn_vd_file_header_fact_files.pbm_wid} = ${mn_vd_customer_dim_fsk.customer_wid} ;;
#     fields: [mn_vd_customer_dim_fsk.vd_cgd_file_hist_fsk*]
  }

  join: mn_vd_cgd_item_fact_itm {
    from: mn_vd_cgd_item_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Item-CG Data"
    sql_on: ${mn_vd_file_item_hist_fact.file_item_wid} = ${mn_vd_cgd_item_fact_itm.cgd_item_wid} ;;
#     fields: [mn_vd_cgd_item_fact_itm.cgd_tx_items_set*]
  }

  join: mn_vd_file_header_fact_itm {
    from: mn_vd_file_header_fact
    type: left_outer
    view_label: "Transaction Item-CG Data"
    relationship: many_to_one
    sql_on: ${mn_vd_cgd_item_fact_itm.file_wid} = ${mn_vd_file_header_fact_itm.file_wid} ;;
#     fields: [mn_vd_file_header_fact_itm.trns_cgd_itm_incl_set*]
  }

  join: mn_vd_product_dim {
    from: mn_product_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Item-CG Data"
    sql_on: ${mn_vd_cgd_item_fact_itm.product_wid} = ${mn_vd_product_dim.product_wid} ;;
#     fields: [mn_vd_product_dim.vd_cgd_itm_hist_prod_incl_set*]
  }

  join: mn_vd_file_item_error_fact {
    from: mn_vd_file_item_error_fact
    type: left_outer
    relationship: many_to_one
    view_label: "Transaction Item-CG Data"
    sql_on: ${mn_vd_cgd_item_fact_itm.cgd_item_wid} = ${mn_vd_file_item_error_fact.file_item_wid} and ${mn_vd_file_item_error_fact.file_data_type} = 'CGD' ;;
#     fields: [mn_vd_file_item_error_fact.itemErrors_set*]
  }

}
#*** Transaction-CG Data Items History ENDS ***


#*** Transactions-CG Invoice Details Explore Start ***

explore: vd_cgi_details {
  label: "Transactions-CG Invoice Details"
  from: mn_vd_file_header_fact
  view_name: mn_vd_cgi_file_header_fact
  view_label: "Transactions-CG Invoice Files"

  sql_always_where: ${mn_vd_cgi_file_header_fact.file_data_type} = 'CGI' ;;
  fields: [mn_vd_cgi_file_header_fact.vd_cgi_det_incl_set*,mn_vd_cgi_item_fact.vd_cgi_items_incl_set*,mn_vd_trading_partner_dim.vd_customer_set*,
    mn_vd_cust_addr_fact.vd_customer_addr_set*,mn_vd_contract_dim.vd_contract_set*,mn_vd_ctrt_entity.vd_ctrt_entity_set*,mn_vd_tp_mds_dim.vd_mds_set*,
    mn_vd_ctrt_mds_dim.vd_mds_set*]

  hidden: no

  join: mn_vd_cgi_item_fact {
    from: mn_vd_cgi_item_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Transaction Item-CG Invoice"
    sql_on: ${mn_vd_cgi_file_header_fact.file_wid} = ${mn_vd_cgi_item_fact.file_wid} ;;
  }

  join: mn_vd_trading_partner_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_cgi_file_header_fact.pbm_wid} = ${mn_vd_trading_partner_dim.customer_wid} ;;
  }

  join: mn_vd_cust_addr_fact {
    from: mn_customer_addr_fact
    type: left_outer
    relationship: one_to_many
    view_label: "Trading Partner"
    sql_on: ${mn_vd_trading_partner_dim.customer_wid} = ${mn_vd_cust_addr_fact.customer_wid}
      and ${mn_vd_cust_addr_fact.primary_address} = 'Yes';;
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_cgi_file_header_fact.contract_wid} = ${mn_vd_contract_dim.contract_wid} AND ${mn_vd_contract_dim.ctrt_type_name} = 'Commercial'  ;;
  }

  join: mn_vd_ctrt_entity {
    from: mn_customer_dim_reuse
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.owner_wid} = ${mn_vd_ctrt_entity.customer_wid} ;;
  }

  join: mn_vd_tp_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Trading Partner"
    sql_on: ${mn_vd_trading_partner_dim.mds_num} = ${mn_vd_tp_mds_dim.src_sys_mds_id} ;;
  }

  join: mn_vd_ctrt_mds_dim {
    from: mn_vd_mds_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Contract"
    sql_on: ${mn_vd_contract_dim.mds_num} = ${mn_vd_ctrt_mds_dim.src_sys_mds_id} ;;
  }

}
#*** Transactions-CG Invoice Details Explore End ***


#*** Transaction-CG Invoice History Explore Start ***
explore: vd_cgi_history {
  label: "Transaction-CG Invoice History"
  from: mn_vd_file_usg_hist_fact
  view_name: mn_vd_cgi_file_usg_hist_fact
  view_label: "Transaction-CG Invoice Files History"
  fields: [mn_vd_cgi_file_usg_hist_fact.vd_cgi_fh_incl_set*,mn_vd_file_header_fact.vd_cgi_fh_incl_set*,mn_vd_contract_dim.vd_cgi_fh_ctrt_set*,
    mn_vd_customer_dim.vd_cgi_fh_src_set*]

  sql_always_where: ${mn_vd_file_header_fact.file_data_type} = 'CGI' ;;

  hidden: no

  join: mn_vd_file_header_fact {
    from:  mn_vd_file_header_fact
    type: left_outer
    view_label: "Transactions-CG Invoice Files"
    relationship: many_to_one
    sql_on: ${mn_vd_cgi_file_usg_hist_fact.file_wid} = ${mn_vd_file_header_fact.file_wid} ;;
  }

  join: mn_vd_contract_dim {
    from: mn_vd_contract_dim
    type: left_outer
    relationship: many_to_one
    view_label: "Transactions-CG Invoice Files"
    sql_on: ${mn_vd_file_header_fact.contract_wid} = ${mn_vd_contract_dim.contract_wid} AND ${mn_vd_contract_dim.ctrt_type_name} = 'Commercial' ;;
  }

  join: mn_vd_customer_dim {
    from: mn_customer_dim_reuse
    type: left_outer
    view_label: "Transactions-CG Invoice Files"
    relationship: many_to_one
    sql_on: ${mn_vd_file_header_fact.pbm_wid} = ${mn_vd_customer_dim.customer_wid} ;;
  }

}
#*** Transaction-CG Invoice History Explore End ***
