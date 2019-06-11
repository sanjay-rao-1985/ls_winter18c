view: mn_product_dim_reuse {
  sql_table_name: MN_PRODUCT_DIM_VW ;;

  dimension_group: acquisition {
    type: time
    label: "Acquisition"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ACQUISITION_DATE ;;
  }

  dimension: acquisition_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.ACQUISITION_DATE_WID ;;
  }

  dimension: catalog_level {
    type: string
    sql: ${TABLE}.CATALOG_LEVEL ;;
  }

#   dimension: catalog_type {
#     type: string
#     sql: ${TABLE}.CATALOG_TYPE ;;
#   }

  dimension: catalog_type {
    type: string
    sql: CASE WHEN ${TABLE}.CATALOG_TYPE = 'INT' THEN 'Internal'
              WHEN ${TABLE}.CATALOG_TYPE = 'CMP' THEN 'Competitor' ELSE NULL END;;
  }

  dimension: catalog_type_name {
    type: string
    label: "Catalog/Competitor Products"
    sql: ${TABLE}.CATALOG_TYPE_NAME ;;
  }

  dimension: cogs {
    type: string
    label: "COGS"
    sql: ${TABLE}.COGS ;;
  }

  dimension: cogs_base {
    type: string
    label: "COGS Base"
    hidden: yes
    sql: ${TABLE}.COGS_BASE ;;
  }

  dimension: cogs_currency {
    type: string
    label: "COGS Currency"
    hidden: yes
    sql: ${TABLE}.COGS_CURR ;;
  }

  dimension_group: creation {
    type: time
    label: "Creation"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATION_DATE ;;
  }

  dimension: creation_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.CREATION_DATE_WID ;;
  }

  dimension: custom_code1 {
    type: string
    hidden: yes
    label: "Custom Code 1"
    sql: ${TABLE}.CUSTOM_CDE1 ;;
  }

  dimension: custom_code2 {
    type: string
    hidden: yes
    label: "Custom Code 2"
    sql: ${TABLE}.CUSTOM_CDE2 ;;
  }

  dimension: custom_code3 {
    type: string
    hidden: yes
    label: "Custom Code 3"
    sql: ${TABLE}.CUSTOM_CDE3 ;;
  }

  dimension: custom_code4 {
    type: string
    hidden: yes
    label: "Custom Code 4"
    sql: ${TABLE}.CUSTOM_CDE4 ;;
  }

  dimension: custom_code5 {
    type: string
    hidden: yes
    label: "Custom Code 5"
    sql: ${TABLE}.CUSTOM_CDE5 ;;
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

  dimension_group: divestiture {
    type: time
    label: "Divestiture"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DIVESTITURE_DATE ;;
  }

  dimension: divestiture_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.DIVESTITURE_DATE_WID ;;
  }

  dimension: drug_category {
    type: string
    hidden: yes
    sql: ${TABLE}.DRUG_CATEGORY ;;
  }

  dimension: drug_category_name {
    type: string
    label: "Drug Category"
    sql: ${TABLE}.DRUG_CATEGORY_NAME ;;
  }

  dimension: eligible_asp_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_ASP_FLAG ;;
  }

  dimension: eligible_asp_yes_no {
    type: string
    label: "Is ASP Eligible ?"
    sql: CASE WHEN ${eligible_asp_flag} = 'Y' THEN 'Yes'
      WHEN ${eligible_asp_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: eligible_medicaid_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_MEDICAID_FLAG ;;
  }

  dimension: elig_medicaid_yes_no {
    type: string
    label: "Is Medicaid Eligible ?"
    sql: CASE WHEN ${eligible_medicaid_flag} = 'Y' THEN 'Yes'
      WHEN ${eligible_medicaid_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: eligible_phs_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_PHS_FLAG ;;
  }

  dimension: eligible_phs_yes_no {
    type: string
    label: "Is PHS Eligible ?"
    sql: CASE WHEN ${eligible_phs_flag} = 'Y' THEN 'Yes'
      WHEN ${eligible_phs_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: eligible_va_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ELIGIBLE_VA_FLAG ;;
  }

  dimension: eligible_va_yes_no {
    type: string
    label: "Is VA Eligible ?"
    sql: CASE WHEN ${eligible_va_flag} = 'Y' THEN 'Yes'
      WHEN ${eligible_va_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension_group: first_sales {
    type: time
    label: "First Sale"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FIRST_SALES_DATE ;;
  }

  dimension: first_sales_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.FIRST_SALES_DATE_WID ;;
  }

  dimension: gl_account_code {
    type: string
    label: "GL Account Code"
    sql: ${TABLE}.GL_ACCOUNT_CODE ;;
  }

  dimension_group: manu_term {
    type: time
    label: "Manufacturing Termination"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.MANU_TERM_DATE ;;
  }

  dimension: manu_term_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.MANU_TERM_DATE_WID ;;
  }

  dimension_group: market_entry {
    type: time
    label: "Market Entry"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.MARKET_ENTRY_DATE ;;
  }

  dimension: market_entry_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.MARKET_ENTRY_DATE_WID ;;
  }

  dimension: medicaid_units_per_pack {
    type: number
    label: "Medicaid/Managed Care Units per Package"
    sql: ${TABLE}.MEDICAID_UNITS_PER_PACK ;;
  }

  dimension: ndc {
    type: string
    label: "NDC"
    sql: ${TABLE}.NDC ;;
  }

  dimension: ndc9 {
    type: string
    label: "NDC9"
    sql: SUBSTR(${ndc},1,9) ;;
  }

  dimension: labeler_code {
    type: string
    label: "Labeler Code"
    sql: SUBSTR(${ndc},1,5) ;;
  }

  dimension: non_cmty_pharma_drug_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.NON_CMTY_PHARMA_DRUG_FLAG ;;
  }

  dimension: non_cmty_pharma_drug_yes_no {
    type: string
    label: "Is Non Community Pharma Drug ?"
    sql: CASE WHEN ${non_cmty_pharma_drug_flag} = 'Y' THEN 'Yes'
      WHEN ${non_cmty_pharma_drug_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: product_description {
    type: string
    label: "Description"
    sql: ${TABLE}.PRODUCT_DESC ;;
  }

  dimension: product_name {
    type: string
    label: "Name"
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: product_num {
    type: string
    label: "ID"
    sql: ${TABLE}.PRODUCT_NUM ;;
  }

  dimension: product_type {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: product_type_adhoc {
    type: string
    label: "Type"
    sql: CASE WHEN ${product_type} ='Bundle'  THEN 'Kit' ELSE ${product_type}  END ;;
  }

  dimension: product_wid {
    hidden:  yes
    type: number
    value_format: "0"
    primary_key: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: run_id {
    hidden:  yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension_group: shelf_life_exp {
    type: time
    timeframes: [
      raw,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SHELF_LIFE_EXP_DATE ;;
    label: "Shelf Life Expiration"
  }

  dimension: shelf_life_exp_date_wid {
    hidden:  yes
    type: number
    sql: ${TABLE}.SHELF_LIFE_EXP_DATE_WID ;;
  }

  dimension: cms_stop_rep_date{
    type: date_raw
    hidden: yes
    sql: add_months(${TABLE}.SHELF_LIFE_EXP_DATE,12)  ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
    label: "SKU"
  }

  dimension: source_system_id {
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_prod_id {
    type: number
    value_format: "0"
    label: "Key"
    sql: ${TABLE}.SRC_SYS_PROD_ID ;;
  }

  dimension: thera_code {
    type: string
    hidden: yes
    sql: ${TABLE}.THERA_CODE ;;
  }

  dimension: thera_code_name {
    type: string
    label: "Therapeutic Code"
    sql: ${TABLE}.THERA_CODE_NAME ;;
  }

  dimension: product_units_per_day {
    type: number
    label: "Units per Day"
    sql: ${TABLE}.PRODUCT_UNITS_PER_DAY ;;
  }

  dimension: avg_units_per_script {
    type: number
    label: "Average Units per Script"
    sql: ${TABLE}.AVG_UNITS_PER_SCRIPT ;;
  }

  dimension_group: cms_stop_reporting {
    type: time
    label: "CMS Stop Reporting"
    timeframes: [
      raw,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${cms_stop_rep_date} ;;
  }

  dimension: ndc9_name {
    type: string
    label: "Family Name"
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: mds_num {
    type: number
    hidden: yes
    sql: ${TABLE}.MDS_NUM ;;
  }

#   created dimensions for validata explore

  dimension: vd_market_share {
    type: string
    label: "Market Share"
    sql: ${TABLE}.CATALOG_TYPE_NAME ;;
  }

  dimension: vd_product_desc {
    type: string
    label: "Description"
    sql: ${product_name} ;;
  }

  dimension: vd_prod_prim_id {
    type: string
    label: "Primary ID"
    sql: ${product_num} ;;
  }

  dimension: vd_fam_prim_id {
    type: string
    label: "Family Primary ID"
    sql: ${product_num} ;;
  }

  dimension: prod_family_key {
    type: number
    value_format: "0"
    label: "Family Key"
    sql: ${src_sys_prod_id} ;;
  }

  dimension: ndc9_flag {
    type: string
    label: "NDC9 Flag"
    sql: ${TABLE}.NDC9_FLAG ;;
  }

  dimension: primary_id_type {
    type: string
    label: "Primary ID Type"
    sql: CASE WHEN ${ndc9_flag} = 'Y' THEN 'NDC-9'
      WHEN ${ndc9_flag} = 'N' THEN 'NDC-11' ELSE NULL END ;;
  }

  dimension: fam_prim_id_type {
    type: string
    label: "Family Primary ID Type"
    sql: CASE WHEN ${ndc9_flag} = 'Y' THEN 'NDC-9'
      WHEN ${ndc9_flag} = 'N' THEN 'NDC-11' ELSE NULL END ;;
  }

  dimension: family_desc {
    type: string
    label: "Family Description"
    sql: ${ndc9_name} ;;
  }

  dimension: tx_item_prod_key {
    type: number
    value_format: "0"
    label: "Product Key"
    view_label: "Transaction Items"
    sql: ${src_sys_prod_id} ;;
  }

  dimension: cgd_tx_item_prod_key {
    type: number
    value_format: "0"
    label: "Product Key"
    view_label: "Transaction Item-CG Data"
    sql: ${src_sys_prod_id} ;;
  }

  dimension: rev_tx_item_prod_key {
    type: number
    value_format: "0"
    label: "Rev Product Key"
    view_label: "Reversals"
    sql: ${src_sys_prod_id} ;;
  }

  dimension: dup_tx_item_prod_key {
    type: number
    value_format: "0"
    label: "Product Key"
    view_label: "Items in the Duplicate Set"
    sql: ${src_sys_prod_id} ;;
  }

  dimension_group: pkg_sz_intro {
    type: time
    label: "Package Size Intro"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PKG_SIZE_INTRO_DATE ;;
  }

  dimension: aquired_amp {
    type: number
    label: "Acquired AMP"
    value_format_name: usd_6
    sql: ${TABLE}.ACQUIRED_AMP_BASE ;;
  }

  dimension: aquired_bamp {
    type: number
    label: "Acquired BAMP"
    value_format_name: usd_6
    sql: ${TABLE}.ACQUIRED_BAMP_BASE ;;
  }

  dimension_group: last_bamp {
    type: time
    label: "Last BAMP"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BAMP_DATE ;;
  }

  dimension: route_5i_adm {
    type: string
    label: "5i Route of Administration"
    sql: ${TABLE}.ROUTE_OF_5I_ADMINISTRATION ;;
  }

  dimension: aca_bamp {
    type: number
    label: "ACA Baseline AMP"
    value_format_name: usd_6
    sql: ${TABLE}.ACA_BAMP_BASE ;;
  }

  dimension: cod_status {
    type: string
    label: "COD Status"
    sql: ${TABLE}.COD_STATUS ;;
  }

  dimension: dra_bamp {
    type: number
    label: "DRA BAMP"
    value_format_name: usd_6
    sql: ${TABLE}.REVISED_BAMP_BASE ;;
  }

  dimension_group: rev_bamp_eff {
    type: time
    label: "DRA BAMP Effective"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REVISED_BAMP_EFF_DATE ;;
  }

  dimension: obra_90_bamp {
    type: number
    label: "OBRA 90 BAMP"
    value_format_name: usd_6
    sql: ${TABLE}.OBRA_BAMP_BASE ;;
  }

  dimension: special_item_num {
    type: string
    label: "Special Item Number"
    sql: ${TABLE}.SPECIAL_ITEM_NUMBER ;;
  }

  dimension: is_5i_drug_yn {
    type: string
    label: "Is 5i Drug ?"
    sql: CASE WHEN ${TABLE}.IS_5I_DRUG_FLAG = 'Y' THEN 'Yes'
              WHEN ${TABLE}.IS_5I_DRUG_FLAG = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: initial_drug_inv {
    type: string
    label: "Initial Drug (Invoice Date)"
    group_label: "Initial Drug"
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} >= ${mn_prod_id_attr_fact.entry_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_inv_date_raw} <= ${mn_prod_id_attr_fact.entry_end_date_raw})
         THEN ${TABLE}.PRODUCT_NUM ELSE NULL END;;
  }

  dimension: initial_drug_appr {
    type: string
    label: "Initial Drug (Approve Date)"
    group_label: "Initial Drug"
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} >= ${mn_prod_id_attr_fact.entry_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_approved_date_raw} <= ${mn_prod_id_attr_fact.entry_end_date_raw})
      THEN ${TABLE}.PRODUCT_NUM ELSE NULL END;;
  }

  dimension: initial_drug_paid {
    type: string
    label: "Initial Drug (Paid Date)"
    group_label: "Initial Drug"
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} >= ${mn_prod_id_attr_fact.entry_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_paid_date_raw} <= ${mn_prod_id_attr_fact.entry_end_date_raw})
         THEN ${TABLE}.PRODUCT_NUM ELSE NULL END;;
  }

  dimension: initial_drug_procss {
    type: string
    label: "Initial Drug (Process Date)"
    group_label: "Initial Drug"
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} >= ${mn_prod_id_attr_fact.entry_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_process_date_raw} <= ${mn_prod_id_attr_fact.entry_end_date_raw})
         THEN ${TABLE}.PRODUCT_NUM ELSE NULL END;;
  }

  dimension: initial_drug_recved {
    type: string
    label: "Initial Drug (Received Date)"
    group_label: "Initial Drug"
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} >= ${mn_prod_id_attr_fact.entry_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_received_date_raw} <= ${mn_prod_id_attr_fact.entry_end_date_raw})
         THEN ${TABLE}.PRODUCT_NUM ELSE NULL END;;
  }

  dimension: initial_drug_req {
    type: string
    label: "Initial Drug (Requested Date)"
    group_label: "Initial Drug"
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} >= ${mn_prod_id_attr_fact.entry_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.tx_request_date_raw} <= ${mn_prod_id_attr_fact.entry_end_date_raw})
         THEN ${TABLE}.PRODUCT_NUM ELSE NULL END;;
  }

  dimension: initial_drug_tx {
    type: string
    label: "Initial Drug (Transaction Date)"
    group_label: "Initial Drug"
    sql: CASE WHEN (${mn_lkr_gp_comb_sales_fact.transaction_date_raw} >= ${mn_prod_id_attr_fact.entry_start_date_raw} and ${mn_lkr_gp_comb_sales_fact.transaction_date_raw} <= ${mn_prod_id_attr_fact.entry_end_date_raw})
         THEN ${TABLE}.PRODUCT_NUM ELSE NULL END;;
  }

  dimension: initial_drug {
    type: string
    label: "Initial Drug"
    sql: ${TABLE}.PRODUCT_NUM ;;
  }

# Alias column name for Transaction-CG Data Items History BEGINS
  dimension: cgd_itm_hist_prod_key {
    type: number
    value_format: "0"
    label: "Product Key"
    sql: ${src_sys_prod_id} ;;
  }

# Alias column name for Transaction-CG Data Items History ENDS
  measure: number_of_product_SKUs_with_claims {
    type: count_distinct
    label: "# of Product SKUs with Claims"
    value_format_name: decimal_0
    sql: ${sku} ;;
  }

  set: mcd_prod_incl_set {
    fields: [acquisition_time,acquisition_date,acquisition_week_of_year,acquisition_month,acquisition_quarter,acquisition_year,
      catalog_level,catalog_type,catalog_type_name,cogs,creation_time,creation_date,creation_week_of_year,creation_month,creation_quarter,
      creation_year,divestiture_time,divestiture_date,divestiture_week_of_year,divestiture_month,divestiture_quarter,divestiture_year,
      drug_category_name,eligible_asp_yes_no,elig_medicaid_yes_no,eligible_phs_yes_no,eligible_va_yes_no,first_sales_time,
      first_sales_date,first_sales_week_of_year,first_sales_month,first_sales_quarter,first_sales_year,gl_account_code,
      manu_term_time,manu_term_date,manu_term_week_of_year,manu_term_month,manu_term_quarter,manu_term_year,market_entry_time,
      market_entry_date,market_entry_week_of_year,market_entry_month,market_entry_quarter,market_entry_year,medicaid_units_per_pack,
      ndc,ndc9,labeler_code,non_cmty_pharma_drug_yes_no,product_description,product_name,product_num,product_type_adhoc,
      shelf_life_exp_date,shelf_life_exp_week_of_year,shelf_life_exp_month,shelf_life_exp_quarter,shelf_life_exp_year,
      sku,thera_code_name,product_units_per_day,avg_units_per_script,cms_stop_reporting_date,
      cms_stop_reporting_week_of_year,cms_stop_reporting_month,cms_stop_reporting_quarter,cms_stop_reporting_year,
      number_of_product_SKUs_with_claims]
  }

  set: vd_product_incl_set {
    fields: [src_sys_prod_id,vd_product_desc,vd_prod_prim_id,primary_id_type,vd_market_share,labeler_code]
  }

  set: vd_tx_det_prod_incl_set {
    fields: [src_sys_prod_id,vd_product_desc,vd_prod_prim_id,primary_id_type,vd_market_share,labeler_code,tx_item_prod_key]
  }

  set: vd_tx_cg_det_prod_incl_set {
    fields: [src_sys_prod_id,vd_product_desc,vd_prod_prim_id,primary_id_type,vd_market_share,labeler_code,cgd_tx_item_prod_key]
  }

  set: vd_rev_prod_incl_set {
    fields: [src_sys_prod_id,vd_product_desc,vd_prod_prim_id,primary_id_type,vd_market_share,labeler_code,rev_tx_item_prod_key]
  }

  set: vd_dup_prod_incl_set {
    fields: [src_sys_prod_id,vd_product_desc,vd_prod_prim_id,primary_id_type,vd_market_share,labeler_code,dup_tx_item_prod_key]
  }

  set: vd_prod_family_incl_set {
    fields: [prod_family_key,family_desc,vd_fam_prim_id,fam_prim_id_type]
  }

  set: ndc9_name_exl_set {
    fields: [ndc9_name]
  }

  set: vd_cgd_dup_prod_incl_set {
    fields: [src_sys_prod_id,vd_product_desc,vd_prod_prim_id,primary_id_type,vd_market_share,labeler_code,dup_tx_item_prod_key]
  }

  set: vd_cgd_itm_hist_prod_incl_set {
    fields: [cgd_itm_hist_prod_key]
  }

  set: tx_exp_product_set {
    fields: [acquisition_time,acquisition_date,acquisition_week_of_year,acquisition_month,acquisition_quarter,acquisition_year,
      catalog_level,catalog_type,catalog_type_name,cogs,creation_time,creation_date,creation_week_of_year,creation_month,creation_quarter,
      creation_year,divestiture_time,divestiture_date,divestiture_week_of_year,divestiture_month,divestiture_quarter,divestiture_year,
      drug_category_name,eligible_asp_yes_no,elig_medicaid_yes_no,eligible_phs_yes_no,eligible_va_yes_no,first_sales_time,
      first_sales_date,first_sales_week_of_year,first_sales_month,first_sales_quarter,first_sales_year,gl_account_code,
      manu_term_time,manu_term_date,manu_term_week_of_year,manu_term_month,manu_term_quarter,manu_term_year,market_entry_time,
      market_entry_date,market_entry_week_of_year,market_entry_month,market_entry_quarter,market_entry_year,medicaid_units_per_pack,
      ndc,ndc9,labeler_code,non_cmty_pharma_drug_yes_no,product_description,product_name,product_num,product_type_adhoc,
      shelf_life_exp_date,shelf_life_exp_week_of_year,shelf_life_exp_month,shelf_life_exp_quarter,shelf_life_exp_year,
      sku,thera_code_name,product_units_per_day,avg_units_per_script,cms_stop_reporting_date,cms_stop_reporting_week_of_year,
      cms_stop_reporting_month,cms_stop_reporting_quarter,cms_stop_reporting_year,pkg_sz_intro_time,pkg_sz_intro_date,
      pkg_sz_intro_week_of_year,pkg_sz_intro_month,pkg_sz_intro_quarter,pkg_sz_intro_year,aquired_amp,aquired_bamp,last_bamp_time,
      last_bamp_date,last_bamp_week_of_year,last_bamp_month,last_bamp_quarter,last_bamp_year,route_5i_adm,aca_bamp,cod_status,
      dra_bamp,rev_bamp_eff_time,rev_bamp_eff_date,rev_bamp_eff_week_of_year,rev_bamp_eff_month,rev_bamp_eff_quarter,
      rev_bamp_eff_year,obra_90_bamp,special_item_num,is_5i_drug_yn]
  }

  set: wb_res_exp_product_set {
    fields: [acquisition_time,acquisition_date,acquisition_week_of_year,acquisition_month,acquisition_quarter,acquisition_year,
      catalog_level,catalog_type,catalog_type_name,cogs,creation_time,creation_date,creation_week_of_year,creation_month,creation_quarter,
      creation_year,divestiture_time,divestiture_date,divestiture_week_of_year,divestiture_month,divestiture_quarter,divestiture_year,
      drug_category_name,eligible_asp_yes_no,elig_medicaid_yes_no,eligible_phs_yes_no,eligible_va_yes_no,first_sales_time,
      first_sales_date,first_sales_week_of_year,first_sales_month,first_sales_quarter,first_sales_year,gl_account_code,
      manu_term_time,manu_term_date,manu_term_week_of_year,manu_term_month,manu_term_quarter,manu_term_year,market_entry_time,
      market_entry_date,market_entry_week_of_year,market_entry_month,market_entry_quarter,market_entry_year,medicaid_units_per_pack,
      ndc,ndc9,labeler_code,non_cmty_pharma_drug_yes_no,product_description,product_name,product_num,product_type_adhoc,
      shelf_life_exp_date,shelf_life_exp_week_of_year,shelf_life_exp_month,shelf_life_exp_quarter,shelf_life_exp_year,
      sku,thera_code_name,product_units_per_day,avg_units_per_script,cms_stop_reporting_date,cms_stop_reporting_week_of_year,
      cms_stop_reporting_month,cms_stop_reporting_quarter,cms_stop_reporting_year,pkg_sz_intro_time,pkg_sz_intro_date,
      pkg_sz_intro_week_of_year,pkg_sz_intro_month,pkg_sz_intro_quarter,pkg_sz_intro_year,aquired_amp,aquired_bamp,last_bamp_time,
      last_bamp_date,last_bamp_week_of_year,last_bamp_month,last_bamp_quarter,last_bamp_year,route_5i_adm,aca_bamp,cod_status,
      dra_bamp,rev_bamp_eff_time,rev_bamp_eff_date,rev_bamp_eff_week_of_year,rev_bamp_eff_month,rev_bamp_eff_quarter,
      rev_bamp_eff_year,obra_90_bamp,special_item_num,is_5i_drug_yn]
  }

  set: initial_drug_set {
    fields: [initial_drug_inv,initial_drug_appr,initial_drug_paid,initial_drug_procss,initial_drug_recved,initial_drug_req,initial_drug_tx]
  }

}
