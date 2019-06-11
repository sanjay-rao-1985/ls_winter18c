view: mn_rbt_prg_ben_flat_dim {
  derived_table: {
    sql: SELECT  RQB.PROGRAM_QUAL_BEN_WID AS PROGRAM_BEN_WID,
        RQB.PROGRAM_WID,
        RQB.SRC_SYS_QUAL_BEN_ID AS SRC_SYS_BEN_ID,
        RQB.NAME,
        RQB.COMPONENT_TYPE,
        RQB.COMPONENT_NAME,
        RPT.SPREADSHEET_TYPE,
        RQB.DESCRIPTION,
        RQB.STRATEGY_BASED_FLAG,
        lvls.EFF_START_DATE,
        lvls.EFF_END_DATE,
        lvls.TIER1_VALUE,
        lvls.TIER2_VALUE,
        lvls.TIER3_VALUE,
        lvls.TIER4_VALUE,
        lvls.TIER5_VALUE,
        lvls.TIER6_VALUE,
        lvls.TIER7_VALUE,
        lvls.TIER8_VALUE,
        lvls.TIER9_VALUE,
        lvls.NUM_TIERS,
        RQB.SALE_LINE_TYPE,
        RQB.ITEM_OVERRIDE_FLAG,
        RPT.ALT_UOM,
        RPT.ENABLE_NETTING_FLAG,
        RPT.CALC_PRICE_BASIS,
        RPT.PRICE_REF_DATE,
        RPT.PMON_CALC_PRICE_BASIS,
        RPT.PMON_BENEFIT_TYPE,
        RPT.PMON_PRICE_RES_METHOD,
        RPT.PMON_ALT_UOM,
        RPT.PMON_ESTIMATED_VAL,
        RPT.QTY_BASIS,
        RPT.PMON_MCO_VOL_BASIS,
        RPT.FORMULARY_MB_WID,
        RPT.PMON_PL_TYPE,
        RPT.FORMULARY_PRODUCT_WID,
        RPT.CONDITION_1,
        RPT.CONDITION_2,
        RPT.CONDITION_3,
        RPT.CONDITION_4,
        RPT.CONDITION_5,
        RPT.FORMULARY_OPERATOR,
        RPT.MS_BASIS,
        RPT.UNIT_BASIS,
        RPT.SCHEDULE_BASIS,
        RPT.MCO_VOL_BASIS,
        RPT.GROWTH_TYPE,
        RPT.BASELINE_PERIOD,
        RPT.BASE_DOS,
        RPT.SEGMENT,
        RPT.PRICE_RES_METHOD,
        RPT.BASE_PRICE_REF_DATE,
        RPT.MAX_INCREASE,
        RPT.PRICE_LIST_TYPE,
        RPT.IS_ROUND_QTY_FLAG,
        RPT.MANUAL_BASELINE_VAL,
        RPT.NUMBER_OF_WEEKS_SPAN,
        RQB.VER_NUM,
        RQB.END_VER_NUM,
        RQB.VER_START_DATE,
        RQB.VER_END_DATE,
        RQB.CONTRACT_TYPE,
        RPT.PP_THRESHOLD,
        RPT.ADHOC_DATE,
        RPT.SCH_BASIS_CUSTOM_DATE,
        RPT.PP_TYPE,
        RPT.PP_SCHEDULE_BASIS,
        RPT.CUMULATION_FREQ,
        RPT.INCLUDE_ADMIN_FEE,
        RPT.CAP_PERCENT,
        RPT.ENABLE_BEP_CALC,
        RPT.ENABLE_CUSTOM_RESET,
        RPT.IS_DEPENDENT,
        RPT.TOTAL_DISC_CAP_PERCENT,
        RPT.TIER_FLAG
FROM MN_RBT_PROG_QUAL_BEN_DIM_VW RQB
     LEFT JOIN MN_RBT_PROG_QUAL_BEN_SD_RPT_VW RPT ON RPT.PROGRAM_QUAL_BEN_WID = RQB.PROGRAM_QUAL_BEN_WID
     LEFT JOIN (
     SELECT PROGRAM_QUAL_BEN_WID,
        NUM_TIERS,
        NULLIF(EFF_START_DATE, To_Date('07/03/1776','mm/dd/yyyy')) AS EFF_START_DATE,
        NULLIF(EFF_END_DATE, To_Date('12/31/4700','mm/dd/yyyy')) AS EFF_END_DATE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=1 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER1_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=2 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER2_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=3 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER3_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=4 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER4_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=5 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER5_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=6 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER6_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=7 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER7_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=8 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER8_VALUE,
        MAX(CASE WHEN  NVL(TIER_IDX,1)=9 THEN NVL(TIER_LOW_VALUE, TIER_LOW_VAL_STRING) ELSE NULL END) AS TIER9_VALUE
    FROM MN_RBT_PROG_QUAL_BEN_SD_RPT_VW WHERE TIER_FLAG ='Y'
    GROUP BY PROGRAM_QUAL_BEN_WID,
        NUM_TIERS,
        NULLIF(EFF_START_DATE, To_Date('07/03/1776','mm/dd/yyyy')),
        NULLIF(EFF_END_DATE, To_Date('12/31/4700','mm/dd/yyyy'))
        )
    lvls ON lvls.PROGRAM_QUAL_BEN_WID = RQB.PROGRAM_QUAL_BEN_WID
WHERE RQB.IS_QUAL_COMPONENT = 'N' AND RPT.TIER_FLAG ='N' AND SPREADSHEET_NAME IS NULL
 ;;
  }


  dimension: program_ben_wid {
    # group_label: "Benefit"
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.PROGRAM_BEN_WID ;;
  }

  dimension: program_wid {
    # group_label: "Benefit"
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: src_sys_ben_id {
    # group_label: "Benefit"
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_BEN_ID ;;
  }

  dimension: name {
    # group_label: "Benefit"
    type: string
    label: "Name"
    sql: ${TABLE}.NAME ;;
  }

  dimension: component_type {
    # group_label: "Benefit"
    type: string
    label: "Component Type"
    sql: ${TABLE}.COMPONENT_TYPE ;;
  }

  dimension: component_name {
    # group_label: "Benefit"
    type: string
    label: "Component Name"
    sql: ${TABLE}.COMPONENT_NAME ;;
  }

  dimension: spreadsheet_type {
    # group_label: "Benefit"
    type: string
    label: "Spreadsheet Type"
    sql: ${TABLE}.SPREADSHEET_TYPE ;;
  }

  dimension: description {
    # group_label: "Benefit"
    type: string
    label: "Description"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: strategy_based_flag {
    hidden: yes
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: strategy_based_yes_no {
    # group_label: "Benefit"
    label: "Is Strategy Based ?"
    type: string
    sql: CASE WHEN ${strategy_based_flag} = 'Y' THEN 'Yes'
      WHEN ${strategy_based_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension_group: eff_start_date {
    type: time
    label: "Effective Start"
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
  }

  dimension_group: eff_end_date {
    type: time
    label: "Effective End"
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
  }

  dimension: tier1_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER1_VALUE ;;
  }

  dimension: tier2_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER2_VALUE ;;
  }

  dimension: tier3_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER3_VALUE ;;
  }

  dimension: tier4_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER4_VALUE ;;
  }

  dimension: tier5_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER5_VALUE ;;
  }

  dimension: tier6_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER6_VALUE ;;
  }

  dimension: tier7_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER7_VALUE ;;
  }

  dimension: tier8_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER8_VALUE ;;
  }

  dimension: tier9_value {
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.TIER9_VALUE ;;
  }

  dimension: num_tiers {
    # group_label: "Benefit"
    type: string
    label: "# of Tiers"
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: sale_line_type {
    # group_label: "Benefit"
    type: string
    label: "Sales Line Types"
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: item_override_flag {
    hidden: yes
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.ITEM_OVERRIDE_FLAG ;;
  }

  dimension: item_override_yes_no {
    # group_label: "Benefit"
    label: "Is Item Override ?"
    type: string
    sql: CASE WHEN ${item_override_flag} = 1 THEN 'Yes'
      WHEN ${item_override_flag} = 0 THEN 'No' ELSE Null END ;;
  }

  dimension: alt_uom {
    # group_label: "Benefit"
    type: string
    label: "Alternate UOM"
    sql: ${TABLE}.ALT_UOM ;;
  }

  dimension: enable_netting_flag {
    # group_label: "Benefit"
    type: string
    hidden: yes
    label: "Enable Netting"
    sql: ${TABLE}.ENABLE_NETTING_FLAG ;;
  }

  dimension: enable_netting_flag_yes_no {
    # group_label: "Benefit"
    type: string
    label: "Enable Netting"
    sql: CASE WHEN ${enable_netting_flag} = 1 THEN 'True'
              WHEN ${enable_netting_flag} = 0 THEN 'False' ELSE Null END ;;
  }

  dimension: calc_price_basis {
    # group_label: "Benefit"
    type: string
    label: "Calculation Price Basis"
    sql: ${TABLE}.CALC_PRICE_BASIS ;;
  }

  dimension: price_ref_date {
    # group_label: "Benefit"
    type: string
    label: "Price Reference Date"
    sql: ${TABLE}.PRICE_REF_DATE ;;
  }

  dimension: pmon_calc_price_basis {
    # group_label: "Benefit"
    label: "PMon Calculation Price Basis"
    type: string
    sql: ${TABLE}.PMON_CALC_PRICE_BASIS ;;
  }

  dimension: pmon_benefit_type {
    # group_label: "Benefit"
    label: "PMon Benefit Type"
    type: string
    sql: ${TABLE}.PMON_BENEFIT_TYPE ;;
  }

  dimension: pmon_price_res_method {
    # group_label: "Benefit"
    label: "PMon Price Resolution Method"
    type: string
    sql: ${TABLE}.PMON_PRICE_RES_METHOD ;;
  }

  dimension: pmon_alt_uom {
    # group_label: "Benefit"
    label: "PMon Alternate UOM"
    type: string
    sql: ${TABLE}.PMON_ALT_UOM ;;
  }

  dimension: pmon_estimated_val {
    # group_label: "Benefit"
    label: "PMon Estimated Value"
    hidden: yes
    type: number
    value_format_name: usd
    sql: ${TABLE}.PMON_ESTIMATED_VAL ;;
  }

  dimension: pmon_estimated_val_calc {
    # group_label: "Benefit"
    label: "PMon Estimated Value"
    type: string
    sql:  CASE  WHEN ${TABLE}.PMON_BENEFIT_TYPE = '%' THEN CONCAT(${TABLE}.PMON_ESTIMATED_VAL*100,'%')
                WHEN ${TABLE}.PMON_BENEFIT_TYPE = 'Amount Per Unit' THEN CONCAT('$',${TABLE}.PMON_ESTIMATED_VAL) ELSE NULL END ;;
  }

  dimension: qty_basis {
    # group_label: "Benefit"
    label: "Quantity Basis"
    type: string
    sql: ${TABLE}.QTY_BASIS ;;
  }

  dimension: pmon_mco_vol_basis {
    # group_label: "Benefit"
    label: "PMon MCO Volume Basis"
    type: string
    sql: ${TABLE}.PMON_MCO_VOL_BASIS ;;
  }

  dimension: formulary_mb_wid {
    # group_label: "Benefit"
    type: number
    hidden: yes
    sql: ${TABLE}.FORMULARY_MB_WID ;;
  }

  dimension: pmon_pl_type {
    # group_label: "Benefit"
    label: "PMon Price List Type"
    type: string
    sql: ${TABLE}.PMON_PL_TYPE ;;
  }

  dimension: formulary_product_wid {
    # group_label: "Benefit"
    type: number
    hidden: yes
    sql: ${TABLE}.FORMULARY_PRODUCT_WID ;;
  }

  dimension: condition_1 {
    # group_label: "Benefit"
    type: string
    label: "Condition 1"
    sql: ${TABLE}.CONDITION_1 ;;
  }

  dimension: condition_2 {
    # group_label: "Benefit"
    type: string
    label: "Condition 2"
    sql: ${TABLE}.CONDITION_2 ;;
  }

  dimension: condition_3 {
    # group_label: "Benefit"
    type: string
    label: "Condition 3"
    sql: ${TABLE}.CONDITION_3 ;;
  }

  dimension: condition_4 {
    # group_label: "Benefit"
    type: string
    label: "Condition 4"
    sql: ${TABLE}.CONDITION_4 ;;
  }

  dimension: condition_5 {
    # group_label: "Benefit"
    type: string
    label: "Condition 5"
    sql: ${TABLE}.CONDITION_5 ;;
  }

  dimension: formulary_operator {
    # group_label: "Benefit"
    type: string
    label: "Formulary Operator"
    sql: ${TABLE}.FORMULARY_OPERATOR ;;
  }

  dimension: ms_basis {
    # group_label: "Benefit"
    label: "Market Share Basis"
    type: string
    sql: ${TABLE}.MS_BASIS ;;
  }

  dimension: unit_basis {
    # group_label: "Benefit"
    type: string
    label: "Unit Basis"
    sql: ${TABLE}.UNIT_BASIS ;;
  }

  dimension: schedule_basis {
    # group_label: "Benefit"
    type: string
    label: "Schedule Basis"
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: mco_vol_basis {
    # group_label: "Benefit"
    type: string
    label: "MCO Volume Basis"
    sql: ${TABLE}.MCO_VOL_BASIS ;;
  }

  dimension: growth_type {
    # group_label: "Benefit"
    type: string
    label: "Growth Type"
    sql: ${TABLE}.GROWTH_TYPE ;;
  }

  dimension: baseline_period {
    # group_label: "Benefit"
    type: string
    label: "Baseline Period"
    sql: ${TABLE}.BASELINE_PERIOD ;;
  }

  dimension: base_dos {
    # group_label: "Benefit"
    type: string
    label: "Base DOS"
    sql: ${TABLE}.BASE_DOS ;;
  }

  dimension: segment {
    # group_label: "Benefit"
    type: string
    label: "Segment"
    sql: ${TABLE}.SEGMENT ;;
  }

  dimension: price_res_method {
    # group_label: "Benefit"
    label: "Price Resolution Method"
    type: string
    sql: ${TABLE}.PRICE_RES_METHOD ;;
  }

  dimension: base_price_ref_date {
    # group_label: "Benefit"
    label: "Base Price Reference Date"
    type: string
    sql: ${TABLE}.BASE_PRICE_REF_DATE ;;
  }

  dimension: max_increase {
    # group_label: "Benefit"
    type: string
    label: "Max Increase"
    sql: ${TABLE}.MAX_INCREASE ;;
  }

  dimension: price_list_type {
    # group_label: "Benefit"
    type: string
    label: "Price List Type"
    sql: ${TABLE}.PRICE_LIST_TYPE ;;
  }

  dimension: is_round_qty_flag {
    hidden: yes
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.IS_ROUND_QTY_FLAG ;;
  }

  dimension: is_round_qty_yes_no {
    # group_label: "Benefit"
    label: "Is Round Quantity ?"
    type: string
    sql: CASE WHEN ${is_round_qty_flag} = 1 THEN 'Yes'
      WHEN ${is_round_qty_flag} = 0 THEN 'No' ELSE Null END ;;
  }

  dimension: manual_baseline_val {
    # group_label: "Benefit"
    label: "Manual Baseline Value"
    type: number
    value_format_name: usd
    sql: ${TABLE}.MANUAL_BASELINE_VAL ;;
  }

  dimension: number_of_weeks_span {
    # group_label: "Benefit"
    type: string
    label: "Number Of Weeks Span"
    sql: ${TABLE}.NUMBER_OF_WEEKS_SPAN ;;
  }

  dimension: ver_num {
    # group_label: "Benefit"
    type: number
    hidden: yes
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension: end_ver_num {
    # group_label: "Benefit"
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension_group: ver_start_date {
    # group_label: "Benefit"
    type: time
    hidden: yes
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension_group: ver_end_date {
    # group_label: "Benefit"
    type: time
    hidden: yes
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: contract_type {
    hidden: yes
    # group_label: "Benefit"
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: pp_threshold {
    # group_label: "Benefit"
    label: "PP Threshold%"
    type: string
    sql: ${TABLE}.PP_THRESHOLD*100 ;;
  }

  dimension_group: adhoc_date {
    type: time
    label: "Adhoc"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ADHOC_DATE ;;
  }

  dimension_group: sch_basis_custom_date {
    type: time
    label: "Schedule Basis Custom"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SCH_BASIS_CUSTOM_DATE ;;
  }

  dimension: pp_type {
    # group_label: "Benefit"
    label: "Price Protection Type"
    type: string
    sql: ${TABLE}.PP_TYPE ;;
  }

  dimension: pp_schedule_basis {
    # group_label: "Benefit"
    label: "Price Protection Schedule Basis"
    type: string
    sql: ${TABLE}.PP_SCHEDULE_BASIS ;;
  }

  dimension: cumulation_freq {
    # group_label: "Benefit"
    label: "Price Protection Cumulation Frequency"
    type: string
    sql: ${TABLE}.CUMULATION_FREQ ;;
  }

  dimension: include_admin_fee {
    # group_label: "Benefit"
    type: number
    label: "Include Admin Fee"
    value_format_name: usd
    sql: ${TABLE}.INCLUDE_ADMIN_FEE ;;
  }

  dimension: cap_percent {
    # group_label: "Benefit"
    label: "PP Cap%"
    type: string
    sql: ${TABLE}.CAP_PERCENT*100;;
  }

  dimension: enable_bep_calc {
    # group_label: "Benefit"
    type: string
    label: "Enable Custom Benefit Effectivity"
    sql: ${TABLE}.ENABLE_BEP_CALC ;;
  }

  dimension: enable_custom_reset {
    # group_label: "Benefit"
    type: string
    label: "Enable Custom Reset Or Cumulation"
    sql: ${TABLE}.ENABLE_CUSTOM_RESET ;;
  }

  dimension: is_dependent {
    # group_label: "Benefit"
    type: string
    label: "Is Dependent ?"
    sql: ${TABLE}.IS_DEPENDENT ;;
  }

  dimension: total_disc_cap_percent {
    # group_label: "Benefit"
    label: "PP Total Discount Cap%"
    type: string
    sql: ${TABLE}.TOTAL_DISC_CAP_PERCENT*100 ;;
  }

  dimension: tier_flag {
    # group_label: "Benefit"
    type: string
    hidden: yes
    label: "Tier Flag"
    sql: ${TABLE}.TIER_FLAG ;;
  }

  dimension: tier_flag_yes_no {
    # group_label: "Benefit"
    type: string
    label: "Tier Flag"
    sql: CASE WHEN ${tier_flag} = 'Y' THEN 'Yes'
              WHEN ${tier_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  #***********************Provider Exclude Set
  set: provider_ben_exclude_set {
    fields: [cap_percent,pp_threshold,total_disc_cap_percent,cumulation_freq,pp_schedule_basis,pp_type]
  }

}
