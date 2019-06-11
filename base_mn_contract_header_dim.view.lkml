view: mn_contract_header_dim {
  sql_table_name: MN_CONTRACT_HEADER_DIM_VW ;;

  label: "Contract"

  dimension: additional_delegate_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.ADDITIONAL_DELEGATE_WID ;;
  }

  dimension: alternate_contract_number {
    type: string
    label: "Alternate ID"
    sql: ${TABLE}.ALTERNATE_CTRT_NUM ;;
  }

  dimension: amended_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.AMENDED_FLAG ;;
  }

  dimension: amended_yes_no {
    type: string
    sql:  CASE WHEN ${amended_flag} = 1 THEN 'Yes'
               WHEN ${amended_flag} = 0 THEN 'No' ELSE NULL END ;;
    label: "Is Amended ?"
  }

  dimension: amendment_count {
    type: number
    hidden: yes
    label: "Amendment #"
    sql: ${TABLE}.AMENDMENT_COUNT ;;
  }

  dimension_group: amendment {
    type: time
    label: "Amendment End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.AMENDMENT_DATE ;;
  }

  dimension: amendment_number {
    type: string
    label: "Amendment #"
    sql: ${TABLE}.AMENDMENT_NUMBER ;;
  }

  dimension_group: approved {
    type: time
    label: "Approved"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.APPROVED_DATE ;;
  }

  dimension: author_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.AUTHOR_WID ;;
  }

  dimension: contract_54_56_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.CONTRACT_54_56_FLAG ;;
  }

  dimension: contract_54_56_yes_no {
    type: string
    hidden: yes
    label: "Is 54/56 Contract ?"
    sql: CASE WHEN ${contract_54_56_flag} = 'Y' THEN 'Yes'
              WHEN ${contract_54_56_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: contract_domain_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_DOMAIN_WID ;;
  }

  dimension: contract_name {
    type: string
    label: "Name"
    sql: ${TABLE}.CONTRACT_NAME ;;
  }

  dimension: contract_number {
    type: string
    label: "ID"
    # hidden: yes
    sql: ${TABLE}.CONTRACT_NUMBER ;;
    # Navigation link to RC
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }
  }

# #for Payer navigation
#   dimension: ctrt_num_payer {
#     type: string
#     label: "ID"
#     sql: ${TABLE}.CONTRACT_NUMBER ;;
#     # Navigation link to RC
#     link: {
#       label: "Navigate to RC"
#       url: "{{_user_attributes['ls_rc_url']}}={{ mn_rbt_ctrt_header_dim.src_sys_mgr_id._value }},{{ mn_rbt_ctrt_header_dim.src_sys_pk_id._value }}"
#     }
#   }

# #for Provider navigation
#   dimension: ctrt_num_provider {
#     type: string
#     label: "ID"
#     sql: ${TABLE}.CONTRACT_NUMBER ;;
#     # Navigation link to RC
#     link: {
#       label: "Navigate to RC"
#       url: "{{_user_attributes['ls_rc_url']}}={{ mn_contract_header_dim.src_sys_mgr_id._value }},{{ mn_contract_header_dim.src_sys_pk_id._value }}"
#     }
#   }

  # url: "http://mnipdqaapp3/modeln/BusinessNetwork?NH={{ mn_rbt_ctrt_header_dim.src_sys_mgr_id._value }},{{ mn_rbt_ctrt_header_dim.src_sys_pk_id._value }}"

  dimension: contract_number_url {
    type: string
    label: "Dashboard URL"
    hidden: yes
    sql: ${TABLE}.CONTRACT_NUMBER ;;
    html: <a href="/dashboards/base_si_app_model_ls_winter18c::si_app_contract_and_products?contract_number={{value}}&">
      {{value}}</a>;;
  }


  dimension: contract_status_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_STATUS_WID ;;
  }

  dimension: contract_sub_type_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_SUB_TYPE_WID ;;
  }

  dimension: contract_type_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.CONTRACT_TYPE_WID ;;
  }

  dimension: contract_wid {
    type: number
    primary_key: yes
    hidden:  yes
    sql: ${TABLE}.CONTRACT_WID ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: cust_amendment_num {
    type: string
    sql: ${TABLE}.CUST_AMENDMENT_NUM ;;
    label: "Customer Amendment Number"
  }

  dimension: customer_contract_id {
    type: string
    label: "Customer Contract ID"
    sql: ${TABLE}.CUSTOMER_CONTRACT_ID ;;
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

  dimension: distribution_method_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.DISTRIBUTION_METHOD_WID ;;
  }

  dimension_group: eff_end {
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
    sql: ${TABLE}.EFF_END_DATE ;;
    label: "End"
  }

  dimension_group: eff_start {
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
    sql: ${TABLE}.EFF_START_DATE ;;
    label: "Start"
  }

  dimension: eligibility_membership {
    type: string
    label: "Eligibility Requires"
    sql: ${TABLE}.ELIGIBILITY_MEMBERSHIP ;;
  }

  dimension: end_ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
    label: "End Version Number"
  }

  dimension: evergreen_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.EVERGREEN_FLAG ;;
  }

  dimension: evergreen_yes_no {
    type: string
    label: "Is Evergreen ?"
    sql: CASE WHEN ${evergreen_flag} = 1 THEN 'Yes'
              WHEN ${evergreen_flag} = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: ext_notes {
    type: string
    sql: ${TABLE}.EXT_NOTES ;;
    label: "External Notes(Printed)"
  }

  dimension: filter_applied_to {
    type: string
    label: "Apply Contract Filters To"
    sql: ${TABLE}.FILTER_APPLIED_TO ;;
  }

  dimension: generic_brand_type {
    type: string
    label: "Generic/Brand"
    sql: ${TABLE}.GENERIC_BRAND_TYPE ;;
  }

  dimension_group: implemented {
    type: time
    label: "Implementation"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.IMPLEMENTED_DATE ;;
  }

  dimension_group: internal_rejection {
    type: time
    label: "Internal Rejection"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INTERNAL_REJECTION_DATE ;;
  }

  dimension: is_340_b_eligible {
    type: string
    hidden: yes
    sql: ${TABLE}.IS_340B_ELIGIBLE ;;
  }

  dimension: 340_b_eligible_yes_no {
    type: string
    label: "Is 340B Eligible ?"
    sql: CASE WHEN ${is_340_b_eligible} = 1 THEN 'Yes'
              WHEN ${is_340_b_eligible} = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: latest_flag {
    type: string
     hidden: yes
    sql: ${TABLE}.LATEST_FLAG;;
  }

  dimension: latest_yes_no {
    type: string
    sql: CASE WHEN ${latest_flag} = 'Y' THEN 'Yes'
              WHEN ${latest_flag} = 'N' THEN 'No' ELSE NULL END ;;
    label: "Is Latest ?"
  }

  dimension: locale {
    type: string
    label: "Locale"
    sql: ${TABLE}.LOCALE ;;
  }

  dimension: min_order_amt {
    type: number
    sql: ${TABLE}.MIN_ORDER_AMT ;;
    value_format_name: usd
    label: "Minimum Order Amount"
  }

  dimension: min_order_block {
    type: string
    hidden: yes
    sql: ${TABLE}.MIN_ORDER_BLOCK ;;
    label: "Minimum Order Block"
  }

  dimension: min_order_block_yes_no {
    type: string
    label: "Minimum Order Block"
    sql: CASE WHEN ${min_order_block} = 1 THEN 'Yes'
              WHEN ${min_order_block} = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: min_order_penalty {
    type: number
    sql: ${TABLE}.MIN_ORDER_PENALTY ;;
    value_format_name: usd
    label: "Minimum Order Penalty"
  }

  dimension: min_order_qty {
    type: string
    sql: ${TABLE}.MIN_ORDER_QTY ;;
    label: "Minimum Order Quantity"
  }

  dimension_group: offer {
    type: time
    label: "Sent for Signature"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.OFFER_DATE ;;
  }

  dimension: offer_term {
    type: string
    label: "Offer Term"
    sql: ${TABLE}.OFFER_TERM ;;
  }

  dimension: org_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: owner_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.OWNER_WID ;;
  }

  dimension: parent_contract_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.PARENT_CONTRACT_WID ;;
  }

  dimension: program_only {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_ONLY ;;
  }

  dimension: program_only_yes_no {
    type: string
    sql: CASE WHEN ${program_only} = 1 THEN 'Yes'
              WHEN ${program_only} = 0 THEN 'No' ELSE NULL END ;;
    label: "Is Program Only ?"
  }

  dimension_group: rejection {
    type: time
    label: "Rejection"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REJECTION_DATE ;;
  }

  dimension_group: released {
    type: time
    label: "Released"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RELEASED_DATE ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sales_rep_wid {
    type: number
    hidden:  yes
    sql: ${TABLE}.SALES_REP_WID ;;
  }

  dimension_group: signature {
    type: time
    label: "Signature"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SIGNATURE_DATE ;;
  }

  dimension_group: signature_due {
    type: time
    label: "Signature Due"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SIGNATURE_DUE_DATE ;;
  }

  dimension_group: signed_doc_rcvd {
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
    sql: ${TABLE}.SIGNED_DOC_RCVD_DATE ;;
    label: "Signed Document Received"
  }

  dimension: signed_ind_type {
    type: string
    label: "Signed/Unsigned Indicator"
    sql: ${TABLE}.SIGNED_IND_TYPE ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: source_system_id {
    type: string
    hidden:  yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_contract_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
  }

  dimension_group: src_sys_date_updated {
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
    sql: ${TABLE}.SRC_SYS_DATE_UPDATED ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: src_sys_pk_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension_group: termination {
    type: time
    label: "Termination"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TERMINATION_DATE ;;
  }

  dimension: timezone {
    type: string
    label: "TimeZone"
    sql: ${TABLE}.TIMEZONE ;;
  }

  dimension: value {
    type: number
    hidden: yes
    label: "Value"
    value_format_name: decimal_2
    sql: ${TABLE}.VALUE ;;
  }

  dimension_group: version_end {
    type: time
    label: "Version End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    hidden: yes
    type: string
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: version_start {
    type: time
    label: "Version Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension: version {
    type: string
    label: "Version"
    sql: ${TABLE}.VERSION ;;
  }

  dimension_group: withdrawn {
    type: time
    label: "Withdrawn"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.WITHDRAWN_DATE ;;
  }

  dimension: days_to_expire {
    type: number
    sql: TO_NUMBER(to_date(to_char(${TABLE}.eff_end_date,'YYYYDDMM'),'YYYYDDMM')  - trunc(sysdate)) ;;
  }

  dimension: days_to_expire_fmt {
    type: number
    hidden:  yes
    label: "Days to Expire"
    value_format_name: decimal_0
    sql: ${days_to_expire} ;;
    html:  {% if value >0 and value < 60 %}
        <p style="color: white; background-color: red">{{ rendered_value }}</p>
      {% else %}
        {{ rendered_value }}
      {% endif %}
    ;;
  }

  dimension_group: doc_tz_eff_start {
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
    sql: ${TABLE}.DOC_TZ_EFF_START_DATE ;;
    label: "Contract TZ Start"
  }

  dimension_group: doc_tz_eff_end {
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
    sql: ${TABLE}.DOC_TZ_EFF_END_DATE ;;
    label: "Contract TZ End"
  }

  dimension: contract_name_details_nav {
    type: string
    label: "Name Navigation"
    hidden:  yes
    sql: ${contract_name};;

    link: {
      label: "Contract Detail View Dashboard"
      url: "/dashboards/base_ls_provider_int_app_model_ls_winter18c/ls_provider_int_app_ctrt_details?contract_name_flt={{_view.contract_name._value}}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }

  dimension: days_to_expire_0 {
    type: number
    hidden:  yes
    sql: CASE WHEN ${TABLE}.eff_end_date < SYSDATE THEN 0 ELSE to_date(to_char(${TABLE}.eff_end_date,'YYYYDDMM'),'YYYYDDMM')  - trunc(sysdate) END ;;
  }

  dimension: months_to_expire {
    type: number
    hidden: yes
    sql: CASE WHEN trunc(MONTHS_BETWEEN(${TABLE}.eff_end_date,sysdate)) = 0 THEN  '1 Month' WHEN trunc(MONTHS_BETWEEN(${TABLE}.eff_end_date,sysdate)) BETWEEN 1 and 2 THEN '3 Months' ELSE NULL END ;;
  }

  measure:  contract_value {
    type:  sum
    label: "Value"
#     value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
    value_format_name: usd
    sql:  ${TABLE}.value ;;
  }

  # measure: no_of_contracts {
  #   type: count
  #   drill_fields: [contract_name]
  #   label: "# of Contracts"
  # }

  measure: contract_count {
    type: count_distinct
    sql: ${TABLE}.SRC_SYS_CONTRACT_ID ;;
    label: "Count"
  }

  measure: no_of_contracted_customers {
    type: count_distinct
    sql: ${TABLE}.OWNER_WID ;;
    label: "# of Contracted Customers"
  }

  set: short_gtn_set1  {
    fields: [ contract_name, contract_number, doc_tz_eff_start_date, doc_tz_eff_end_date]
  }

}
