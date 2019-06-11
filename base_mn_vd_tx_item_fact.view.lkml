view: mn_vd_tx_item_fact {
    sql_table_name: MN_VD_TX_ITEM_FACT_VW ;;


  dimension: tx_item_wid {
    type: number
    value_format: "0"
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.TX_ITEM_WID ;;
  }

  dimension: file_wid {
    type: number
    value_format: "0"
    hidden: yes
    label: "File ID"
    sql: ${TABLE}.FILE_WID ;;
  }

  dimension: contract_wid {
    type: number
    value_format: "0"
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: plan_wid {
    type: number
    value_format: "0"
    hidden: yes
    sql: ${TABLE}.PLAN_WID ;;
  }

  dimension: product_wid {
    type: number
    value_format: "0"
    hidden: yes
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension: status {
    type: string
    label: "Status"
    sql: ${TABLE}.STATUS ;;
  }

  dimension: cgd_item_status {
    type: string
    label: "Item Status"
    sql: ${status} ;;
  }

  dimension: dup_processed {
    type: string
    label: "Dup Processed"
    sql: CASE WHEN ${TABLE}.DUP_PROCESSED = 'Y' THEN 'Yes' ELSE 'No' END ;;
  }

  dimension: summarized {
    type: string
    label: "Summarized"
    sql: CASE WHEN ${TABLE}.SUMMARIZED = 'Y' THEN 'Yes' ELSE 'No' END ;;
  }

  dimension: reversal_status {
    type: string
    label: "Reversal Status"
    sql: ${TABLE}.REVERSAL_STATUS ;;
  }

  dimension: product_id_qualifier {
    type: string
    label: "Product ID Qualifier"
    sql: ${TABLE}.PRODUCT_ID_QUALIFIER ;;
  }

  dimension: product_id {
    type: string
    label: "Product ID"
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension: product_description {
    type: string
    label: "Product Description"
    sql: ${TABLE}.PRODUCT_DESCRIPTION ;;
  }

  dimension: plan_id_qualifier {
    type: string
    label: "Plan ID Qualifier"
    sql: ${TABLE}.PLAN_ID_QUALIFIER ;;
  }

  dimension: plan_id_code {
    type: string
    label: "Plan ID Code"
    sql: ${TABLE}.PLAN_ID_CODE ;;
  }

  dimension: plan_name {
    type: string
    label: "Plan Name"
    sql: ${TABLE}.PLAN_NAME ;;
  }

  dimension: service_provider_id {
    type: string
    label: "Service Provider ID"
    sql: ${TABLE}.SERVICE_PROVIDER_ID ;;
  }

  dimension: medicaid_record_id {
    type: string
    label: "Medicaid Record ID"
    sql: ${TABLE}.MEDICAID_RECORD_ID ;;
  }

  dimension: service_provider_id_qualifier {
    type: string
    label: "Service Provider ID Qualifier"
    sql: ${TABLE}.SERVICE_PROVIDER_ID_QUALIFIER ;;
  }

  dimension: prescription_reference_number {
    type: string
    label: "Prescription Reference Number"
    sql: ${TABLE}.PRESCRIPTION_REFERENCE_NUMBER ;;
  }

  dimension: prescription_type {
    type: number
    label: "Prescription Type"
    sql: ${TABLE}.PRESCRIPTION_TYPE ;;
  }

  dimension: unit_of_measure {
    type: string
    label: "Unit Of Measure"
    sql: ${TABLE}.UNIT_OF_MEASURE ;;
  }

  dimension: dispensing_status {
    type: string
    label: "Dispensing Status"
    sql: ${TABLE}.DISPENSING_STATUS ;;
  }

  dimension_group: service {
    type: time
    label: "Service"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SERVICE_DATE ;;
  }

  dimension_group: reimbursement {
    type: time
    label: "Reimbursement"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REIMBURSEMENT_DATE ;;
  }

  dimension: quarter {
    type: string
    label: "Quarter"
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: reimbursement_qualifier {
    type: string
    label: "Reimbursement Qualifier"
    sql: ${TABLE}.REIMBURSEMENT_QUALIFIER ;;
  }

  dimension: fill_number {
    type: string
    label: "Fill Number"
    sql: ${TABLE}.FILL_NUMBER ;;
  }

  dimension: record_purpose_indicator {
    type: string
    label: "Record Purpose Indicator"
    sql: ${TABLE}.RECORD_PURPOSE_INDICATOR ;;
  }

  dimension: contract_id {
    type: string
    label: "Contract ID"
    sql: ${TABLE}.CONTRACT_ID ;;
  }

  dimension: formulary_code {
    type: string
    label: "Formulary Code"
    sql: ${TABLE}.FORMULARY_CODE ;;
  }

  dimension: dosage_form_id_code {
    type: string
    label: "Dosage Form ID Code"
    sql: ${TABLE}.DOSAGE_FORM_ID_CODE ;;
  }

  dimension: therapeutic_cc_qualifier {
    type: string
    label: "Therapeutic CC Qualifier"
    sql: ${TABLE}.THERAPEUTIC_CC_QUALIFIER ;;
  }

  dimension: pharmacy_service_type {
    type: number
    label: "Pharmacy Service Type"
    sql: ${TABLE}.PHARMACY_SERVICE_TYPE ;;
  }

  dimension: pharmacy_master {
    type: string
    label: "Pharmacy Master"
    sql: ${TABLE}.PHARMACY_MASTER ;;
  }

  dimension: encrypted_patient_id_code {
    type: string
    label: "Encrypted Patient ID Code"
    sql: ${TABLE}.ENCRYPTED_PATIENT_ID_CODE ;;
  }

  dimension: claim_number {
    type: string
    label: "Claim Number"
    sql: ${TABLE}.CLAIM_NUMBER ;;
  }

  dimension: compound_code {
    type: number
    label: "Compound Code"
    sql: ${TABLE}.COMPOUND_CODE ;;
  }

  dimension: other_coverage_code {
    type: number
    label: "Other Coverage Code"
    sql: ${TABLE}.OTHER_COVERAGE_CODE ;;
  }

  dimension: benefit_stage_qualifier {
    type: string
    label: "Benefit Stage Qualifier"
    sql: ${TABLE}.BENEFIT_STAGE_QUALIFIER ;;
  }

  dimension_group: adjudication_date {
    type: time
    label: "Adjudication"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ADJUDICATION_DATE ;;
  }

  dimension: adjudication_time {
    type: string
    label: "Adjudication Time"
    sql: ${TABLE}.ADJUDICATION_TIME ;;
  }

  dimension: prescription_origin_code {
    type: string
    label: "Prescription Origin Code"
    sql: ${TABLE}.PRESCRIPTION_ORIGIN_CODE ;;
  }

  dimension: entity_country_code {
    type: string
    label: "Entity Country Code"
    sql: ${TABLE}.ENTITY_COUNTRY_CODE ;;
  }

  dimension: segment_qualifier_1 {
    type: string
    label: "Segment Qualifier 1"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_QUALIFIER_1 ;;
  }

  dimension: segment_1 {
    type: string
    label: "Segment 1"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_1 ;;
  }

  dimension: segment_qualifier_2 {
    type: string
    label: "Segment Qualifier 2"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_QUALIFIER_2 ;;
  }

  dimension: segment_2 {
    type: string
    label: "Segment 2"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_2 ;;
  }

  dimension: segment_qualifier_3 {
    type: string
    label: "Segment Qualifier 3"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_QUALIFIER_3 ;;
  }

  dimension: segment_3 {
    type: string
    label: "Segment 3"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_3 ;;
  }

  dimension: segment_qualifier_4 {
    type: string
    label: "Segment Qualifier 4"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_QUALIFIER_4 ;;
  }

  dimension: segment_4 {
    type: string
    label: "Segment 4"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_4 ;;
  }

  dimension: segment_qualifier_5 {
    type: string
    label: "Segment Qualifier 5"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_QUALIFIER_5 ;;
  }

  dimension: segment_5 {
    type: string
    label: "Segment 5"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_5 ;;
  }

  dimension: segment_qualifier_6 {
    type: string
    label: "Segment Qualifier 6"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_QUALIFIER_6 ;;
  }

  dimension: segment_6 {
    type: string
    label: "Segment 6"
    group_label: "Segment"
    sql: ${TABLE}.SEGMENT_6 ;;
  }

  dimension: invoice_type_1 {
    type: string
    label: "Invoice Type 1"
    group_label: "Invoice Type"
    sql: ${TABLE}.INVOICE_TYPE_1 ;;
  }

  dimension: invoice_rate_1 {
    type: number
    hidden: yes
    label: "Invoice Rate 1"
    sql: ${TABLE}.INVOICE_RATE_1 ;;
  }

  dimension: invoice_price_1 {
    type: number
    hidden: yes
    group_label: "Invoice Type"
    sql: ${TABLE}.INVOICE_PRICE_1 ;;
  }

  dimension: invoiced_per_unit_amnt_1 {
    type: number
    hidden: yes
    sql: ${TABLE}.INVOICED_PER_UNIT_AMNT_1 ;;
  }

  dimension: invoiced_amount_1 {
    type: number
    hidden: yes
    sql: ${TABLE}.INVOICED_AMOUNT_1 ;;
  }

  dimension: invoice_type_2 {
    type: string
    label: "Invoice Type 2"
    group_label: "Invoice Type"
    sql: ${TABLE}.INVOICE_TYPE_2 ;;
  }

  dimension: invoice_rate_2 {
    type: number
    label: "Invoice Rate 2"
    hidden: yes
    sql: ${TABLE}.INVOICE_RATE_2 ;;
  }

  dimension: invoice_price_2 {
    type: number
    label: "Invoice Price 2"
    hidden: yes
    sql: ${TABLE}.INVOICE_PRICE_2 ;;
  }

  dimension: invoiced_per_unit_amnt_2 {
    type: string
    label: "Invoiced Per Unit Amount 2"
    hidden: yes
    sql: ${TABLE}.INVOICED_PER_UNIT_AMNT_2 ;;
  }

  dimension: invoiced_amount_2 {
    type: number
    label: "Invoiced Amount 2"
    hidden: yes
    sql: ${TABLE}.INVOICED_AMOUNT_2 ;;
  }

  dimension: invoice_type_3 {
    type: string
    label: "Invoice Type 3"
    group_label: "Invoice Type"
    sql: ${TABLE}.INVOICE_TYPE_3 ;;
  }

  dimension: invoice_rate_3 {
    type: number
    label: "Invoice Rate 3"
    hidden: yes
    sql: ${TABLE}.INVOICE_RATE_3 ;;
  }

  dimension: invoice_price_3 {
    type: number
    label: "Invoice Price 3"
    hidden: yes
    sql: ${TABLE}.INVOICE_PRICE_3 ;;
  }

  dimension: invoiced_per_unit_amnt_3 {
    type: number
    label: "Invoiced Per Unit Amount 3"
    hidden: yes
    sql: ${TABLE}.INVOICED_PER_UNIT_AMNT_3 ;;
  }

  dimension: invoiced_amount_3 {
    type: number
    label: "Invoiced Amount 3"
    hidden: yes
    sql: ${TABLE}.INVOICED_AMOUNT_3 ;;
  }

  dimension: invoice_type_4 {
    type: string
    label: "Invoice Type 4"
    group_label: "Invoice Type"
    sql: ${TABLE}.INVOICE_TYPE_4 ;;
  }

  dimension: invoice_rate_4 {
    type: number
    label: "Invoice Rate 4"
    hidden: yes
    sql: ${TABLE}.INVOICE_RATE_4 ;;
  }

  dimension: invoice_price_4 {
    type: number
    label: "Invoice Price 4"
    hidden: yes
    sql: ${TABLE}.INVOICE_PRICE_4 ;;
  }

  dimension: invoiced_per_unit_amnt_4 {
    type: number
    label: "Invoiced Per Unit Amount 4"
    hidden: yes
    sql: ${TABLE}.INVOICED_PER_UNIT_AMNT_4 ;;
  }

  dimension: invoiced_amount_4 {
    type: number
    label: "Invoiced Amount 4"
    hidden: yes
    sql: ${TABLE}.INVOICED_AMOUNT_4 ;;
  }

  dimension: invoice_type_5 {
    type: string
    label: "Invoice Type 5"
    group_label: "Invoice Type"
    sql: ${TABLE}.INVOICE_TYPE_5 ;;
  }

  dimension: invoice_rate_5 {
    type: number
    label: "Invoice Rate 5"
    hidden: yes
    sql: ${TABLE}.INVOICE_RATE_5 ;;
  }

  dimension: invoice_price_5 {
    type: number
    label: "Invoice Price 5"
    hidden: yes
    sql: ${TABLE}.INVOICE_PRICE_5 ;;
  }

  dimension: invoiced_per_unit_amnt_5 {
    type: number
    label: "Invoiced Per Unit Amount 5"
    hidden: yes
    sql: ${TABLE}.INVOICED_PER_UNIT_AMNT_5 ;;
  }

  dimension: invoiced_amount_5 {
    type: number
    label: "Invoiced Amount 5"
    hidden: yes
    sql: ${TABLE}.INVOICED_AMOUNT_5 ;;
  }

  dimension: filler_1 {
    type: string
    label: "Filler 1"
    group_label: "Filler"
    sql: ${TABLE}.FILLER_1 ;;
  }

  dimension: filler_2 {
    type: string
    label: "Filler 2"
    group_label: "Filler"
    sql: ${TABLE}.FILLER_2 ;;
  }

  dimension: filler_3 {
    type: string
    label: "Filler 3"
    group_label: "Filler"
    sql: ${TABLE}.FILLER_3 ;;
  }

  dimension: error_desc_concat {
    type: string
    label: "Item Errors Concatenated"
    sql: ${TABLE}.ERROR_DESC_CONCAT ;;
  }

  dimension: total_quantity {
    type: number
    hidden: yes
    sql: ${TABLE}.TOTAL_QUANTITY ;;
  }

  dimension: reimbursement_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.REIMBURSEMENT_AMOUNT ;;
  }

  dimension: patient_liability_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.PATIENT_LIABILITY_AMOUNT ;;
  }

  dimension: total_prescriptions {
    type: number
    hidden: yes
    sql: ${TABLE}.TOTAL_PRESCRIPTIONS ;;
  }

  dimension: subscriber_reimburse_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.SUBSCRIBER_REIMBURSE_AMOUNT ;;
  }

  dimension: requested_rebate_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.REQUESTED_REBATE_AMOUNT ;;
  }

  dimension: rebate_per_unit {
    type: number
    hidden: yes
    sql: ${TABLE}.REBATE_PER_UNIT ;;
  }

  dimension: rebate_days_supply {
    type: number
    label: "Rebate Days Supply"
    group_label: "Item Measures"
    sql: ${TABLE}.REBATE_DAYS_SUPPLY ;;
  }

  dimension: third_party_liability {
    type: number
    hidden: yes
    sql: ${TABLE}.THIRD_PARTY_LIABILITY ;;
  }

  dimension: table_dispensing_fee {
    type: number
    hidden: yes
    sql: ${TABLE}.TABLE_DISPENSING_FEE ;;
  }

  dimension: record_dispensing_fee {
    type: number
    hidden: yes
    sql: ${TABLE}.RECORD_DISPENSING_FEE ;;
  }

  dimension: pharmacy_name {
    type: string
    label: "Pharmacy Name"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.PHARMACY_NAME ;;
  }

  dimension: pharmacy_address {
    type: string
    label: "Pharmacy Address"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.PHARMACY_ADDRESS ;;
  }

  dimension: pharmacy_city {
    type: string
    label: "Pharmacy City"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.PHARMACY_CITY ;;
  }

  dimension: pharmacy_state {
    type: string
    label: "Pharmacy State"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.PHARMACY_STATE ;;
  }

  dimension: pharmacy_zip {
    type: string
    label: "Entity Zip/Postal Code"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.PHARMACY_ZIP ;;
  }

  dimension: dispensed_as_written {
    type: string
    label: "Dispensed As Written"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.DISPENSED_AS_WRITTEN ;;
  }

  dimension: external_rx_id {
    type: string
    label: "External Rx ID"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.EXTERNAL_RX_ID ;;
  }

  dimension: subscriber_id {
    type: string
    label: "Subscriber ID"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.SUBSCRIBER_ID ;;
  }

  dimension: prescriber_id_type {
    type: string
    label: "Prescriber ID Qualifier"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.PRESCRIBER_ID_TYPE ;;
  }

  dimension: prescriber_id {
    type: string
    label: "Prescriber ID"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.PRESCRIBER_ID ;;
  }

  dimension: diagnosis_code {
    type: string
    label: "Diagnosis Code"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.DIAGNOSIS_CODE ;;
  }

  dimension: therapeutic_code {
    type: string
    label: "Therapeutic Class Code"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.THERAPEUTIC_CODE ;;
  }

  dimension: therapeutic_description {
    type: string
    label: "Therapeutic Class Description"
    view_label: "Transaction Items Details"
    sql: ${TABLE}.THERAPEUTIC_DESCRIPTION ;;
  }

  dimension: src_sys_tx_item_id {
    type: number
    value_format: "0"
    label: "Record ID"
    sql: ${TABLE}.SRC_SYS_TX_ITEM_ID ;;
  }
 # Created duplicate Record ID Fields for Transaction Items Details & History group
  dimension: src_sys_tx_item_id_det {
    type: number
    value_format: "0"
    label: "Record ID"
    view_label: "Transaction Items Details"
    sql: ${src_sys_tx_item_id} ;;
  }

  dimension: src_sys_tx_item_id_hist {
    type: number
    value_format: "0"
    label: "Transaction Record ID"
    view_label: "Transaction Items History"
    sql: ${src_sys_tx_item_id} ;;
  }

  dimension: date_created {
    type: string
    hidden: yes
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: date_updated {
    type: string
    hidden: yes
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: run_id {
    type: number
    hidden: yes
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  #   Alias column names for set
  dimension: rev_contract_id {
    type: string
    label: "Rev Contract ID"
    sql: ${contract_id} ;;
  }

  dimension_group: rev_service {
    type: time
    label: "Rev Service"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SERVICE_DATE ;;
  }

  dimension: rev_formulary_code {
    type: string
    label: "Rev Formulary Code"
    sql: ${formulary_code} ;;
  }

  dimension_group: rev_reimbursement {
    type: time
    label: "Rev Reimbursement"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REIMBURSEMENT_DATE ;;
  }

  dimension: rev_service_provider_id {
    type: string
    label: "Rev Service Provider ID"
    sql: ${service_provider_id} ;;
  }

  dimension: rev_plan_id_code {
    type: string
    label: "Rev Plan ID Code"
    sql: ${plan_id_code} ;;
  }

  dimension: rev_plan_id_qualifier {
    type: string
    label: "Rev Plan ID Qualifier"
    sql: ${plan_id_qualifier} ;;
  }

  dimension: rev_product_id {
    type: string
    label: "Rev Product ID"
    sql: ${product_id} ;;
  }

  dimension: rev_product_id_qualifier {
    type: string
    label: "Rev Product ID Qualifier"
    sql: ${product_id_qualifier} ;;
  }

  dimension: rev_fill_number {
    type: string
    label: "Rev Fill Number"
    sql: ${fill_number} ;;
  }

  dimension: rev_prescription_reference_number {
    type: string
    label: "Rev Prescription Reference Number"
    sql: ${prescription_reference_number} ;;
  }

  dimension: rev_unit_of_measure {
    type: string
    label: "Rev Unit Of Measure"
    sql: ${unit_of_measure} ;;
  }

  dimension: dup_record_id {
    type: number
    value_format: "0"
    label: "Record ID"
    view_label: "Items in the Duplicate Set"
    sql: ${src_sys_tx_item_id} ;;
  }

  dimension: itm_dup_record_id {
    type: number
    value_format: "0"
    label: "Duplicate Record ID"
    view_label: "File with Duplicates"
    sql: ${src_sys_tx_item_id} ;;
  }

  dimension: rev_record_id {
    type: number
    value_format: "0"
    label: "Rev Record ID"
    view_label: "Reversals"
    sql: ${src_sys_tx_item_id} ;;
  }

  measure: total_count {
    type: count_distinct
    label: "Total Record Count"
    group_label: "Item Measures"
    value_format_name: decimal_2
    sql: ${TABLE}.SRC_SYS_TX_ITEM_ID ;;
  }

  measure: Rebate_Unit_Calc {
    type: sum
    label: "Average Rebate per Unit"
    group_label: "Item Measures"
    value_format_name: decimal_2
    sql: ${reimbursement_amount}/Count(${TABLE}.SRC_SYS_TX_ITEM_ID) ;;
  }

  measure: total_qty {
    type: sum
    label: "Total Quantity"
    group_label: "Item Measures"
    value_format_name: decimal_2
    sql: ${total_quantity} ;;
  }

  measure: total_reimb_amt {
    type: sum
    label: "Reimbursement Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${reimbursement_amount} ;;
  }

  measure: patient_liability_amt {
    type: sum
    label: "Patient Liability Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${patient_liability_amount} ;;
  }

  measure: total_no_prescriptions {
    type: sum
    label: "Total # of Prescriptions"
    group_label: "Item Measures"
    value_format_name: decimal_2
    sql: ${total_prescriptions} ;;
  }

  measure: subscriber_reimburse_amt {
    type: sum
    label: "Subscriber Reimbursement Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${subscriber_reimburse_amount} ;;
  }

  measure: requested_rebate_amt {
    type: sum
    label: "Requested Rebate Amount"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${requested_rebate_amount} ;;
  }

  measure: no_rebate_per_unit {
    type: sum
    label: "Rebate Per Unit"
    group_label: "Item Measures"
    value_format_name: decimal_2
    sql: ${rebate_per_unit} ;;
  }

  measure: tot_third_party_liability {
    type: sum
    label: "Third Party Liability"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${third_party_liability} ;;
  }

  measure: total_table_disp_fee {
    type: sum
    label: "Table Dispensing Fee"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${table_dispensing_fee} ;;
  }

  measure: tot_record_disp_fee {
    type: sum
    label: "Record Dispensing Fee"
    group_label: "Item Measures"
    value_format_name: usd
    sql: ${record_dispensing_fee} ;;
  }

   #   Alias column names for set
  measure: rev_patient_liability_amount {
    type: sum
    label: "Rev Patient Liability Amount"
    group_label: "Reversal Measures"
    value_format_name: usd
    sql: ${patient_liability_amount} ;;
  }

  measure: rev_reimbursement_amount {
    type: sum
    label: "Rev Reimbursement Amount"
    group_label: "Reversal Measures"
    value_format_name: usd
    sql: ${reimbursement_amount} ;;
  }

  measure: rev_quantity {
    type: sum
    label: "Rev Quantity"
    group_label: "Reversal Measures"
    value_format_name: decimal_2
    sql: ${total_quantity} ;;
  }

  measure: rev_rebate_per_unit {
    type: sum
    label: "Rev Rebate Per Unit"
    group_label: "Reversal Measures"
    value_format_name: decimal_2
    sql: ${rebate_per_unit} ;;
  }

  measure: rev_subscriber_reimbursement_amount {
    type: sum
    label: "Rev Subscriber Reimbursement Amount"
    group_label: "Reversal Measures"
    value_format_name: usd
    sql: ${subscriber_reimburse_amount} ;;
  }

  measure: rev_total_no_of_prescriptions {
    type: sum
    label: "Rev Total # of Prescriptions"
    group_label: "Reversal Measures"
    value_format_name: decimal_2
    sql: ${total_prescriptions} ;;
  }


  measure: tot_inv_rate_1 {
    type: sum
    label: "Invoice Rate 1"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_rate_1} ;;
  }

  measure: tot_invo_price_1 {
    type: sum
    label: "Invoice Price 1"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_price_1} ;;
  }

  measure: tot_inv_per_unit_amt_1 {
    type: sum
    label: "Invoiced Per Unit Amount 1"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_per_unit_amnt_1} ;;
  }

  measure: tot_inv_amount_1 {
    type: sum
    label: "Invoiced Amount 1"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_amount_1} ;;
  }

  measure: tot_inv_rate_2 {
    type: sum
    label: "Invoice Rate 2"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_rate_2} ;;
  }

  measure: tot_invo_price_2 {
    type: sum
    label: "Invoice Price 2"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_price_2} ;;
  }

  measure: tot_inv_per_unit_amt_2 {
    type: sum
    label: "Invoiced Per Unit Amount 2"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_per_unit_amnt_2} ;;
  }

  measure: tot_inv_amount_2 {
    type: sum
    label: "Invoiced Amount 2"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_amount_2} ;;
  }

  measure: tot_inv_rate_3 {
    type: sum
    label: "Invoice Rate 3"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_rate_3} ;;
  }

  measure: tot_invo_price_3 {
    type: sum
    label: "Invoice Price 3"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_price_3} ;;
  }

  measure: tot_inv_per_unit_amt_3 {
    type: sum
    label: "Invoiced Per Unit Amount 3"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_per_unit_amnt_3} ;;
  }

  measure: tot_inv_amount_3 {
    type: sum
    label: "Invoiced Amount 3"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_amount_3} ;;
  }

  measure: tot_inv_rate_4 {
    type: sum
    label: "Invoice Rate 4"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_rate_4} ;;
  }

  measure: tot_invo_price_4 {
    type: sum
    label: "Invoice Price 4"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_price_4} ;;
  }

  measure: tot_inv_per_unit_amt_4 {
    type: sum
    label: "Invoiced Per Unit Amount 4"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_per_unit_amnt_4} ;;
  }

  measure: tot_inv_amount_4 {
    type: sum
    label: "Invoiced Amount 4"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_amount_4} ;;
  }

  measure: tot_inv_rate_5 {
    type: sum
    label: "Invoice Rate 5"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_rate_5} ;;
  }

  measure: tot_invo_price_5 {
    type: sum
    label: "Invoice Price 5"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoice_price_5} ;;
  }

  measure: tot_inv_per_unit_amt_5 {
    type: sum
    label: "Invoiced Per Unit Amount 5"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_per_unit_amnt_5} ;;
  }

  measure: tot_inv_amount_5 {
    type: sum
    label: "Invoiced Amount 5"
    group_label: "Invoice Type"
    value_format_name: usd
    sql: ${invoiced_amount_5} ;;
  }

  set: transactionreversing {
    fields: [rev_contract_id,rev_service_raw,rev_service_time,rev_service_date,rev_service_week_of_year,
      rev_service_month,rev_service_quarter,rev_service_year,rev_formulary_code,rev_reimbursement_raw,
      rev_reimbursement_time,rev_reimbursement_date,rev_reimbursement_week_of_year,rev_reimbursement_month,
      rev_reimbursement_quarter,rev_reimbursement_year,rev_service_provider_id,rev_plan_id_code,rev_plan_id_qualifier,
      rev_product_id,rev_product_id_qualifier,rev_fill_number,rev_prescription_reference_number,rev_unit_of_measure,rev_patient_liability_amount,
      rev_reimbursement_amount,rev_quantity,rev_rebate_per_unit,rev_subscriber_reimbursement_amount,rev_total_no_of_prescriptions,
      rev_record_id,total_count,Rebate_Unit_Calc]
  }

  set: transactionitemsset {
    fields: [src_sys_tx_item_id,file_wid,status,dup_processed,summarized,reversal_status,product_id_qualifier,product_id,product_description,plan_id_qualifier,
      plan_id_code,plan_name,service_provider_id,medicaid_record_id,service_provider_id_qualifier,prescription_reference_number,
      prescription_type,unit_of_measure,dispensing_status,service_date,service_time,service_week_of_year,service_month,
      service_quarter,service_year,reimbursement_time,reimbursement_date,reimbursement_week_of_year,
      reimbursement_month,reimbursement_quarter,reimbursement_year,quarter,reimbursement_qualifier,fill_number,
      record_purpose_indicator,contract_id,formulary_code,dosage_form_id_code,therapeutic_cc_qualifier,pharmacy_service_type,
      pharmacy_master,encrypted_patient_id_code,claim_number,compound_code,other_coverage_code,benefit_stage_qualifier,
      adjudication_date_date,adjudication_date_week_of_year,adjudication_date_month,adjudication_date_quarter,adjudication_date_year,
      adjudication_time,prescription_origin_code,entity_country_code,segment_qualifier_1,segment_1,segment_qualifier_2,segment_2,
      segment_qualifier_3,segment_3,segment_qualifier_4,segment_4,segment_qualifier_5,segment_5,segment_qualifier_6,segment_6,
      invoice_type_1,invoice_rate_1,invoice_price_1,invoiced_per_unit_amnt_1,invoiced_amount_1,invoice_type_2,invoice_rate_2,
      invoice_price_2,invoiced_per_unit_amnt_2,invoiced_amount_2,invoice_type_3,invoice_rate_3,invoice_price_3,invoiced_per_unit_amnt_3,
      invoiced_amount_3,invoice_type_4,invoice_rate_4,invoice_price_4,invoiced_per_unit_amnt_4,invoiced_amount_4,invoice_type_5,
      invoice_rate_5,invoice_price_5,invoiced_per_unit_amnt_5,invoiced_amount_5,filler_1,filler_2,filler_3,error_desc_concat,rebate_days_supply,total_qty,total_reimb_amt,patient_liability_amt,
      total_no_prescriptions,subscriber_reimburse_amt,requested_rebate_amt,no_rebate_per_unit,tot_third_party_liability,
      total_table_disp_fee,tot_record_disp_fee,tot_inv_rate_1,tot_invo_price_1,tot_inv_per_unit_amt_1,tot_inv_amount_1,
      tot_inv_rate_2,tot_invo_price_2,tot_inv_per_unit_amt_2,tot_inv_amount_2,tot_inv_rate_3,tot_invo_price_3,tot_inv_per_unit_amt_3,
      tot_inv_amount_3,tot_inv_rate_4,tot_invo_price_4,tot_inv_per_unit_amt_4,tot_inv_amount_4,tot_inv_rate_5,tot_invo_price_5,
      tot_inv_per_unit_amt_5,tot_inv_amount_5,total_count,Rebate_Unit_Calc]
  }

  set: tx_item_hist_set {
    fields: [src_sys_tx_item_id,file_wid,status,dup_processed,summarized,reversal_status,product_id_qualifier,product_id,product_description,plan_id_qualifier,
      plan_id_code,plan_name,service_provider_id,medicaid_record_id,service_provider_id_qualifier,prescription_reference_number,
      prescription_type,unit_of_measure,dispensing_status,service_date,service_time,service_week_of_year,service_month,
      service_quarter,service_year,reimbursement_time,reimbursement_date,reimbursement_week_of_year,
      reimbursement_month,reimbursement_quarter,reimbursement_year,quarter,reimbursement_qualifier,fill_number,
      record_purpose_indicator,contract_id,formulary_code,dosage_form_id_code,therapeutic_cc_qualifier,pharmacy_service_type,
      pharmacy_master,encrypted_patient_id_code,claim_number,compound_code,other_coverage_code,benefit_stage_qualifier,
      adjudication_date_date,adjudication_date_week_of_year,adjudication_date_month,adjudication_date_quarter,adjudication_date_year,
      adjudication_time,prescription_origin_code,entity_country_code,segment_qualifier_1,segment_1,segment_qualifier_2,segment_2,
      segment_qualifier_3,segment_3,segment_qualifier_4,segment_4,segment_qualifier_5,segment_5,segment_qualifier_6,segment_6,
      invoice_type_1,invoice_rate_1,invoice_price_1,invoiced_per_unit_amnt_1,invoiced_amount_1,invoice_type_2,invoice_rate_2,
      invoice_price_2,invoiced_per_unit_amnt_2,invoiced_amount_2,invoice_type_3,invoice_rate_3,invoice_price_3,invoiced_per_unit_amnt_3,
      invoiced_amount_3,invoice_type_4,invoice_rate_4,invoice_price_4,invoiced_per_unit_amnt_4,invoiced_amount_4,invoice_type_5,
      invoice_rate_5,invoice_price_5,invoiced_per_unit_amnt_5,invoiced_amount_5,filler_1,filler_2,filler_3,error_desc_concat,rebate_days_supply,total_qty,total_reimb_amt,patient_liability_amt,
      total_no_prescriptions,subscriber_reimburse_amt,requested_rebate_amt,no_rebate_per_unit,tot_third_party_liability,
      total_table_disp_fee,tot_record_disp_fee,tot_inv_rate_1,tot_invo_price_1,tot_inv_per_unit_amt_1,tot_inv_amount_1,
      tot_inv_rate_2,tot_invo_price_2,tot_inv_per_unit_amt_2,tot_inv_amount_2,tot_inv_rate_3,tot_invo_price_3,tot_inv_per_unit_amt_3,
      tot_inv_amount_3,tot_inv_rate_4,tot_invo_price_4,tot_inv_per_unit_amt_4,tot_inv_amount_4,tot_inv_rate_5,tot_invo_price_5,
      tot_inv_per_unit_amt_5,tot_inv_amount_5,total_count,Rebate_Unit_Calc]
  }

  set: transactiondetailsset {
    fields: [dispensed_as_written,external_rx_id,subscriber_id,prescriber_id_type,prescriber_id,diagnosis_code,
      therapeutic_code,therapeutic_description,pharmacy_name,pharmacy_address,pharmacy_city,pharmacy_state,pharmacy_zip,src_sys_tx_item_id_det,total_count,Rebate_Unit_Calc]
  }

# Transaction Duplicates Sets Begin
  set: item_itemsintheduplicateset {
    fields: [dup_record_id,status,dup_processed,summarized,reversal_status,product_id_qualifier,product_id,product_description,plan_id_qualifier,plan_id_code,plan_name,service_provider_id,
medicaid_record_id,service_provider_id_qualifier,prescription_reference_number,prescription_type,unit_of_measure,dispensing_status,
service_raw,service_time,service_date,service_week_of_year,service_month,service_quarter,service_year,
reimbursement_raw,reimbursement_time,reimbursement_date,reimbursement_week_of_year,reimbursement_month,reimbursement_quarter,
reimbursement_year,quarter,reimbursement_qualifier,fill_number,record_purpose_indicator,contract_id,formulary_code,
dosage_form_id_code,therapeutic_cc_qualifier,pharmacy_service_type,pharmacy_master,encrypted_patient_id_code,claim_number,
compound_code,other_coverage_code,benefit_stage_qualifier,adjudication_date_raw,adjudication_date_time,adjudication_date_date,adjudication_date_week_of_year,
adjudication_date_month,adjudication_date_quarter,adjudication_date_year,adjudication_time,prescription_origin_code,entity_country_code,
segment_qualifier_1,segment_1,segment_qualifier_2,segment_2,segment_qualifier_3,segment_3,segment_qualifier_4,
segment_4,segment_qualifier_5,segment_5,segment_qualifier_6,segment_6,invoice_type_1,invoice_rate_1,invoice_price_1,
invoiced_per_unit_amnt_1,invoiced_amount_1,invoice_type_2,invoice_rate_2,invoice_price_2,invoiced_per_unit_amnt_2,
invoiced_amount_2,invoice_type_3,invoice_rate_3,invoice_price_3,invoiced_per_unit_amnt_3,invoiced_amount_3,invoice_type_4,
invoice_rate_4,invoice_price_4,invoiced_per_unit_amnt_4,invoiced_amount_4,invoice_type_5,invoice_rate_5,invoice_price_5,
invoiced_per_unit_amnt_5,invoiced_amount_5,filler_1,filler_2,filler_3,total_qty,total_reimb_amt,patient_liability_amt,total_no_prescriptions,
subscriber_reimburse_amt,requested_rebate_amt,no_rebate_per_unit,rebate_days_supply,tot_third_party_liability,total_table_disp_fee,tot_record_disp_fee,
tot_inv_rate_1,tot_invo_price_1,tot_inv_per_unit_amt_1,tot_inv_amount_1,tot_inv_rate_2,tot_invo_price_2,tot_inv_per_unit_amt_2,tot_inv_amount_2,tot_inv_rate_3,
tot_invo_price_3,tot_inv_per_unit_amt_3,tot_inv_amount_3,tot_inv_rate_4,tot_invo_price_4,tot_inv_per_unit_amt_4,tot_inv_amount_4,tot_inv_rate_5,tot_invo_price_5,
tot_inv_per_unit_amt_5,tot_inv_amount_5,total_count,Rebate_Unit_Calc]
  }

 set: item_filewithduplicates {
   fields: [itm_dup_record_id,total_count,Rebate_Unit_Calc]
 }
# Transaction Duplicates Sets End

}
