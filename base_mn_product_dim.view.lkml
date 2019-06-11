view: mn_product_dim {
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
    type: string
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

  dimension: product_name_num {
    type: string
    label: "Product Name [Number]"
    sql: ${TABLE}.PRODUCT_NAME ||' [' ||NVL(${TABLE}.PRODUCT_NUM,'None') ||']';;
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
    type: string
    hidden: yes
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
    hidden: yes
    label: "Units per Day"
    sql: ${TABLE}.PRODUCT_UNITS_PER_DAY ;;
  }

  dimension: avg_units_per_script {
    type: number
    hidden: yes
    label: "Average Units per Script"
    sql: ${TABLE}.AVG_UNITS_PER_SCRIPT ;;
  }

#   dimension: product_name_pp {
#     type: string
# #     hidden: yes
#     label: "Product Name"
#     sql: ${product_name} ;;
#   }
#
#   dimension: product_number_pp {
#     type: string
# #     hidden: yes
#     label: "Product ID"
#     sql: ${product_num} ;;
#   }

#   set: product_pricing_name_set {
#     fields: [product_name_pp,product_number_pp]
#   }

  set: short_gtn_set1  {
    fields: [ product_name, product_type, product_num, sku, ndc, ndc9, catalog_level, catalog_type, cogs, medicaid_units_per_pack]
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [product_name, drug_category_name, thera_code_name]
  }

}
