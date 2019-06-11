view: mn_rbt_prg_qual_flat_dim {
  derived_table: {
    sql: SELECT    RQB.PROGRAM_QUAL_BEN_WID AS PROGRAM_QUAL_WID,
        RQB.PROGRAM_WID,
        RQB.SRC_SYS_QUAL_BEN_ID AS SRC_SYS_QUAL_ID,
        RQB.NAME,
        RQB.COMPONENT_TYPE,
        RQB.COMPONENT_NAME,
        RPT.SPREADSHEET_TYPE,
        RQB.DESCRIPTION,
        RQB.STRATEGY_BASED_FLAG,
        lvls.NUM_TIERS,
        RQB.SALE_LINE_TYPE,
        RQB.ITEM_OVERRIDE_FLAG,
        RPT.ALT_UOM,
        RPT.ENABLE_NETTING_FLAG,
        RPT.CALC_PRICE_BASIS,
        RPT.PRICE_REF_DATE,
        RPT.QTY_BASIS,
        RPT.FORMULARY_MB_WID,
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
        RPT.TIER_FLAG,
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
              lvls.TIER9_VALUE
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
      WHERE RQB.IS_QUAL_COMPONENT = 'Y' AND RPT.TIER_FLAG ='N' AND SPREADSHEET_NAME IS NULL
       ;;
  }



  dimension: program_qual_wid {
    # group_label: "Qualification"
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.PROGRAM_QUAL_WID ;;
  }

  dimension: program_wid {
    # group_label: "Qualification"
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: src_sys_qual_id {
    # group_label: "Qualification"
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_QUAL_ID ;;
  }

  dimension: name {
    # group_label: "Qualification"
    type: string
    label: "Name"
    sql: ${TABLE}.NAME ;;
  }

  dimension: component_type {
    # group_label: "Qualification"
    type: string
    label: "Component Type"
    sql: ${TABLE}.COMPONENT_TYPE ;;
  }

  dimension: component_name {
    # group_label: "Qualification"
    type: string
    label: "Component Name"
    sql: ${TABLE}.COMPONENT_NAME ;;
  }

  dimension: spreadsheet_type {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.SPREADSHEET_TYPE ;;
  }

  dimension: description {
    # group_label: "Qualification"
    type: string
    label: "DESCRIPTION"
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: strategy_based_flag {
    hidden: yes
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: strategy_based_yes_no {
    # group_label: "Qualification"
    label: "Is Strategy Based ?"
    type: string
    sql: CASE WHEN ${strategy_based_flag} = 'Y' THEN 'Yes'
      WHEN ${strategy_based_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension: num_tiers {
    # group_label: "Qualification"
    type: string
    label: "# of Tiers"
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: sale_line_type {
    # group_label: "Qualification"
    type: string
    label: "Sales Line Types"
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: item_override_flag {
    hidden: yes
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.ITEM_OVERRIDE_FLAG ;;
  }

  dimension: item_override_yes_no {
    # group_label: "Qualification"
    label: "Is Item Override ?"
    type: string
    sql: CASE WHEN ${item_override_flag} = 1 THEN 'Yes'
      WHEN ${item_override_flag} = 0 THEN 'No' ELSE Null END ;;
  }

  dimension: alt_uom {
    # group_label: "Qualification"
    label: "Alternative UOM"
    type: string
    sql: ${TABLE}.ALT_UOM ;;
  }

  dimension: enable_netting_flag {
    # group_label: "Qualification"
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
    # group_label: "Qualification"
    label: "Calculation Price Basis"
    type: string
    sql: ${TABLE}.CALC_PRICE_BASIS ;;
  }

  dimension: price_ref_date {
    # group_label: "Qualification"
    label: "Price Reference Date"
    type: string
    sql: ${TABLE}.PRICE_REF_DATE ;;
  }

  dimension: qty_basis {
    # group_label: "Qualification"
    label: "Quantity Basis"
    type: string
    sql: ${TABLE}.QTY_BASIS ;;
  }

  dimension: formulary_mb_wid {
    # group_label: "Qualification"
    type: number
    hidden: yes
    sql: ${TABLE}.FORMULARY_MB_WID ;;
  }

  dimension: formulary_product_wid {
    # group_label: "Qualification"
    type: number
    hidden: yes
    sql: ${TABLE}.FORMULARY_PRODUCT_WID ;;
  }

  dimension: condition_1 {
    # group_label: "Qualification"
    type: string
    label: "Condition 1"
    sql: ${TABLE}.CONDITION_1 ;;
  }

  dimension: condition_2 {
    # group_label: "Qualification"
    type: string
    label: "Condition 2"
    sql: ${TABLE}.CONDITION_2 ;;
  }

  dimension: condition_3 {
    # group_label: "Qualification"
    type: string
    label: "Condition 3"
    sql: ${TABLE}.CONDITION_3 ;;
  }

  dimension: condition_4 {
    # group_label: "Qualification"
    type: string
    label: "Condition 4"
    sql: ${TABLE}.CONDITION_4 ;;
  }

  dimension: condition_5 {
    # group_label: "Qualification"
    type: string
    label: "Condition 5"
    sql: ${TABLE}.CONDITION_5 ;;
  }

  dimension: formulary_operator {
    # group_label: "Qualification"
    type: string
    label: "Formulary Operator"
    sql: ${TABLE}.FORMULARY_OPERATOR ;;
  }

  dimension: ms_basis {
    # group_label: "Qualification"
    label: "Market Share Basis"
    type: string
    sql: ${TABLE}.MS_BASIS ;;
  }

  dimension: unit_basis {
    # group_label: "Qualification"
    type: string
    label: "Unit Basis"
    sql: ${TABLE}.UNIT_BASIS ;;
  }

  dimension: schedule_basis {
    # group_label: "Qualification"
    type: string
    label: "Schedule Basis"
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: mco_vol_basis {
    # group_label: "Qualification"
    label: "MCO Volume Basis"
    type: string
    sql: ${TABLE}.MCO_VOL_BASIS ;;
  }

  dimension: growth_type {
    # group_label: "Qualification"
    type: string
    label: "Growth Type"
    sql: ${TABLE}.GROWTH_TYPE ;;
  }

  dimension: baseline_period {
    # group_label: "Qualification"
    type: string
    label: "Baseline"
    sql: ${TABLE}.BASELINE_PERIOD ;;
  }

  dimension: base_dos {
    # group_label: "Qualification"
    type: string
    label: "Base DOS"
    sql: ${TABLE}.BASE_DOS ;;
  }

  dimension: segment {
    # group_label: "Qualification"
    type: string
    label: "Segment"
    sql: ${TABLE}.SEGMENT ;;
  }

  dimension: price_res_method {
    # group_label: "Qualification"
    label: "Price Resolution Basis"
    type: string
    sql: ${TABLE}.PRICE_RES_METHOD ;;
  }

  dimension: base_price_ref_date {
    # group_label: "Qualification"
    label: "Base Price Reference Date"
    type: date
    sql: ${TABLE}.BASE_PRICE_REF_DATE ;;
  }

  dimension: max_increase {
    # group_label: "Qualification"
    type: string
    label: "Max Increase"
    sql: ${TABLE}.MAX_INCREASE ;;
  }

  dimension: price_list_type {
    # group_label: "Qualification"
    type: string
    label: "Price List Type"
    sql: ${TABLE}.PRICE_LIST_TYPE ;;
  }

  dimension: is_round_qty_flag {
    hidden: yes
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.IS_ROUND_QTY_FLAG ;;
  }

  dimension: is_round_qty_yes_no {
    # group_label: "Qualification"
    label: "Is Round Quantity ?"
    type: string
    sql: CASE WHEN ${is_round_qty_flag} = 1 THEN 'Yes'
      WHEN ${is_round_qty_flag} = 0 THEN 'No' ELSE Null END ;;
  }

  dimension: manual_baseline_val {
    # group_label: "Qualification"
    label: "Manual Baseline Value"
    type: number
    sql: ${TABLE}.MANUAL_BASELINE_VAL ;;
  }

  dimension: number_of_weeks_span {
    # group_label: "Qualification"
    type: string
    label: "Number Of Weeks Span"
    sql: ${TABLE}.NUMBER_OF_WEEKS_SPAN ;;
  }

  dimension: ver_num {
    # group_label: "Qualification"
    type: number
    hidden: yes
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension: end_ver_num {
    # group_label: "Qualification"
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension_group: ver_start_date {
    # group_label: "Qualification"
    type: time
    hidden: yes
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension_group: ver_end_date {
    # group_label: "Qualification"
    type: time
    hidden: yes
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: contract_type {
    hidden: yes
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: tier_flag {
    # group_label: "Qualification"
    type: string
    hidden: yes
    sql: ${TABLE}.TIER_FLAG ;;
  }

  dimension: tier_flag_yes_no {
    # group_label: "Qualification"
    type: string
    label: "Tier Flag"
    sql: CASE WHEN ${tier_flag} = 'Y' THEN 'Yes'
              WHEN ${tier_flag} = 'N' THEN 'No' ELSE Null END ;;
  }

  dimension_group: eff_start_date {
    label: "Effective Start"
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
  }

  dimension_group: eff_end_date {
    label: "Effective End"
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
  }

  dimension: tier1_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER1_VALUE ;;
  }

  dimension: tier2_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER2_VALUE ;;
  }

  dimension: tier3_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER3_VALUE ;;
  }

  dimension: tier4_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER4_VALUE ;;
  }

  dimension: tier5_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER5_VALUE ;;
  }

  dimension: tier6_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER6_VALUE ;;
  }

  dimension: tier7_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER7_VALUE ;;
  }

  dimension: tier8_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER8_VALUE ;;
  }

  dimension: tier9_value {
    # group_label: "Qualification"
    type: string
    sql: ${TABLE}.TIER9_VALUE ;;
  }

}
