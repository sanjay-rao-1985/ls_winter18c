view: mn_combined_rebate_program_dim {
  derived_table: {
    sql: SELECT
            RP.ACCRUAL_TYPE_WID,
            RP.PROGRAM_TYPE_WID,
            RP.PMT_TYPE_WID,
            RP.PROGRAM_WID,
            RP.PMT_METHOD_WID,
            RP.ORG_WID,
            Null as ACCRU_CUST_WID,
            Null as CUSTOMER_WID,
            RP.PAYEE_CUSTOMER_WID,
            RP.ACCRUAL_RATE,
            RP.BENEFIT_CALC_RULE,
            RP.CALC_LEVEL,
            'GMT' || TZ_OFFSET(RP.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
            RP.DOC_TZ_EFF_END_DATE,
            RP.DOC_TZ_EFF_START_DATE,
            RP.END_VER_NUM,
            RP.FLAT_PROGRAM,
            RP.GRP_NAME,
            RP.LATEST_FLAG,
            RP.LATE_DATE_LAG,
            Null as MARKET_BASKET_TYPE,
            RP.NON_STD_PROGRAM,
            RP.NUM_TIERS,
            RP.ORDER_IDX ,
            RP.PAYMENT_CUST_TYPE,
            RP.PAYMENT_FREQ,
            RP.PAYMENT_GRACE_FREQ,
            RP.PAYMENT_LEVEL,
            RP.PROCESSING_DATE_LAG,
            RP.PROGRAM_NAME,
            RP.PROGRAM_SUB_TYPE,
            RP.PROGRAM_SUB_TYPE_NAME,
            Null as QUAL_METHOD,
            Null as RX_NORM_METHOD,
            RP.SALE_LINE_FROM,
            RP.SALE_LINE_TYPE,
            RP.SCHEDULE_BASIS,
            RP.SRC_STRATEGY_NAME,
            RP.SRC_STRATEGY_NUM,
            RP.SRC_STRATEGY_TYPE,
            RP.SRC_STRATEGY_VER_NUM,
            RP.SRC_SYS_PROGRAM_ID,
            RP.STRATEGY_BASED_FLAG,
            RP.SYSTEM_ACCRUE,
            RP.TB_CALC_RULE,
            Null as TIER_MGMT_TYPE,
            Null as UTIL_TYPE,
            RP.VER_END_DATE,
            RP.VER_NUM,
            RP.VER_START_DATE,
            RP.CONTRACT_TYPE AS CONTRACT_TYPE,
            RP.SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
            RP.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
            CF.CONTRACT_WID AS CONTRACT_WID,
            ACT.ACCRUAL_TYPE_NAME
            FROM
            MN_REBATE_PROGRAM_DIM_VW RP
            INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RP.PROGRAM_WID AND CF.RECORD_TYPE = 2
            LEFT JOIN MN_ACCRUAL_TYPE_DIM_VW ACT ON ACT.ACCRUAL_TYPE_WID = RP.ACCRUAL_TYPE_WID
            WHERE RP.STRATEGY_BASED_FLAG='N'

                    UNION ALL

            SELECT
            RPSD.ACCRUAL_TYPE_WID,
            RP.PROGRAM_TYPE_WID,
            RPSD.PMT_TYPE_WID,
            RP.PROGRAM_WID,
            RPSD.PMT_MTH_TYPE_WID AS PMT_METHOD_WID,
            RP.ORG_WID,
            RPSD.ACCRU_CUST_WID,
            RPSD.CUSTOMER_WID,
            RPSD.PAYEE_CUSTOMER_WID,
            RPSD.ACCRUAL_RATE,
            RP.BENEFIT_CALC_RULE,
            RP.CALC_LEVEL,
            'GMT' || TZ_OFFSET(RP.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
            RP.DOC_TZ_EFF_END_DATE,
            RP.DOC_TZ_EFF_START_DATE,
            RP.END_VER_NUM,
            RP.FLAT_PROGRAM,
            RP.GRP_NAME,
            RP.LATEST_FLAG,
            RPSD.LATE_DATE_LAG,
            RPSD.MARKET_BASKET_TYPE,
            RPSD.NON_STD_PROGRAM,
            RP.NUM_TIERS,
            RP.ORDER_IDX ,
            RPSD.PAYMENT_CUST_TYPE,
            RP.PAYMENT_FREQ,
            RP.PAYMENT_GRACE_FREQ,
            RPSD.PAYMENT_LEVEL,
            RPSD.PROCESSING_DATE_LAG,
            RP.PROGRAM_NAME,
            RP.PROGRAM_SUB_TYPE,
            RP.PROGRAM_SUB_TYPE_NAME,
            RPSD.QUAL_METHOD,
            RPSD.RX_NORM_METHOD,
            RPSD.SALE_LINE_FROM,
            RPSD.SALE_LINE_TYPE,
            RP.SCHEDULE_BASIS,
            RP.SRC_STRATEGY_NAME,
            RP.SRC_STRATEGY_NUM,
            RP.SRC_STRATEGY_TYPE,
            RP.SRC_STRATEGY_VER_NUM,
            RP.SRC_SYS_PROGRAM_ID,
            RP.STRATEGY_BASED_FLAG,
            RPSD.SYSTEM_ACCRUE,
            RP.TB_CALC_RULE,
            RPSD.TIER_MGMT_TYPE,
            RPSD.UTIL_TYPE,
            RP.VER_END_DATE,
            RP.VER_NUM,
            RP.VER_START_DATE,
            RP.CONTRACT_TYPE AS CONTRACT_TYPE,
            RP.SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
            RP.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
            CF.CONTRACT_WID AS CONTRACT_WID,
            ACT.ACCRUAL_TYPE_NAME
            FROM
            MN_REBATE_PROGRAM_DIM_VW RP
            LEFT JOIN MN_REBATE_PROGRAM_SD_RPT_VW RPSD ON RPSD.PROGRAM_WID = RP.PROGRAM_WID
            INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RP.PROGRAM_WID AND CF.RECORD_TYPE = 2
            LEFT JOIN MN_ACCRUAL_TYPE_DIM_VW ACT ON ACT.ACCRUAL_TYPE_WID = RPSD.ACCRUAL_TYPE_WID
            WHERE RP.STRATEGY_BASED_FLAG='Y'
             ;;
  }

  measure: count {
    hidden: yes
    label: "Rebate Program Count"
    type: count
    drill_fields: [detail*]
  }

  dimension: accrual_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ACCRUAL_TYPE_WID ;;
  }

  dimension: program_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: pmt_type_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PMT_TYPE_WID ;;
  }

  dimension: program_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: pmt_method_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PMT_METHOD_WID ;;
  }

  dimension: org_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: accru_cust_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.ACCRU_CUST_WID ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: payee_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: accrual_rate {
    type: string
    label: "Accrual Rate"
    sql: CASE WHEN ${TABLE}.ACCRUAL_RATE is not NULL THEN CASE WHEN ${TABLE}.ACCRUAL_TYPE_NAME IN('Amount / unit','Fixed Amount') THEN CONCAT('$',${TABLE}.ACCRUAL_RATE)
      WHEN ${TABLE}.ACCRUAL_TYPE_NAME ='%' THEN CONCAT(${TABLE}.ACCRUAL_RATE*100,'%') ELSE NULL END ELSE NULL END;;
  }

  dimension: benefit_calc_rule {
    type: string
    label: "Benefit Calc. Rule"
    sql: ${TABLE}.BENEFIT_CALC_RULE ;;
  }

  dimension: calc_level {
    type: string
    label: "Calculation Level"
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: effective_timezone_gmt {
    type: string
    label: "Time Zone"
    sql: ${TABLE}.EFFECTIVE_TIMEZONE_GMT ;;
  }

  dimension_group: doc_tz_eff_end_date {
    type: time
    label: "End"
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
  }

  dimension_group: doc_tz_eff_start_date {
    type: time
    label: "Start"
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
  }

  dimension: end_ver_num {
    type: string
    sql: ${TABLE}.END_VER_NUM ;;
    hidden: yes
    label: "End Version Number"
  }

  dimension: flat_program {
    type: string
    hidden: yes
    sql: ${TABLE}.FLAT_PROGRAM ;;
  }

  dimension: flat_program_yes_no {
    type: string
    label: "Is Flat Program ?"
    sql: CASE WHEN ${flat_program} = 1 THEN 'Yes'
              WHEN ${flat_program} = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: grp_name {
    type: string
    label: "Group Name"
    sql: ${TABLE}.GRP_NAME ;;
  }

  dimension: latest_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: latest_yes_no {
    type: string
    label: "Is Latest ?"
    sql: CASE WHEN ${latest_flag} = 'Y' THEN 'Yes'
              WHEN ${latest_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: late_date_lag {
    type: string
    sql: ${TABLE}.LATE_DATE_LAG ;;
  }

  dimension: market_basket_type {
    type: string
    label: "Market Basket Type"
    sql: ${TABLE}.MARKET_BASKET_TYPE ;;
  }

  dimension: non_std_program {
    type: string
    hidden: yes
    sql: ${TABLE}.NON_STD_PROGRAM ;;
  }

  dimension: std_program_yes_no {
    type: string
    label: "Is Standard Program ?"
    sql: CASE WHEN ${non_std_program} = 1 THEN 'False'
              WHEN ${non_std_program} = 0 THEN 'True' ELSE NULL END ;;
  }

  dimension: num_tiers {
    type: string
    hidden: yes
    sql: ${TABLE}.NUM_TIERS ;;
    label: "# Of Tiers"
  }

  dimension: order_idx {
    type: string
    sql: ${TABLE}.ORDER_IDX ;;
    label: "Order Index"
  }

  dimension: payment_cust_type {
    type: string
    label: "Payment Customer Type"
    sql: ${TABLE}.PAYMENT_CUST_TYPE ;;
  }

  dimension: payment_freq {
    type: string
    label: "Payment Frequency"
    sql: ${TABLE}.PAYMENT_FREQ ;;
  }

  dimension: payment_grace_freq {
    type: string
    label: "Grace Period Pmt Freq"
    sql: ${TABLE}.PAYMENT_GRACE_FREQ ;;
  }

  dimension: payment_level {
    type: string
    label: "Payment Level"
    sql: ${TABLE}.PAYMENT_LEVEL ;;
  }

  dimension: processing_date_lag {
    type: string
    label: "Process Date Lag"
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }

  dimension: program_name {
    type: string
    label: "Name"
    sql: ${TABLE}.PROGRAM_NAME ;;
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }
  }

  dimension: program_sub_type {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_SUB_TYPE ;;
  }

  dimension: program_sub_type_name {
    type: string
    label: "Sub Type"
    sql: ${TABLE}.PROGRAM_SUB_TYPE_NAME ;;
  }

  dimension: qual_method {
    type: string
    label: "Qualification Method"
    sql: ${TABLE}.QUAL_METHOD ;;
  }

  dimension: rx_norm_method {
    type: string
    label: "Rx Norm Method"
    sql: ${TABLE}.RX_NORM_METHOD ;;
  }

  dimension: sale_line_from {
    type: string
    label: "Transaction Lines From"
    sql: ${TABLE}.SALE_LINE_FROM ;;
  }

  dimension: sale_line_type {
    type: string
    label: "Sales Line Types"
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: schedule_basis {
    type: string
    label: "Schedule Basis"
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: src_strategy_name {
    type: string
    label: "Strategy Name"
    sql: ${TABLE}.SRC_STRATEGY_NAME ;;
  }

  dimension: src_strategy_num {
    type: string
    label: "Strategy ID"
    sql: ${TABLE}.SRC_STRATEGY_NUM ;;
  }

  dimension: src_strategy_type {
    type: string
    label: "Strategy Type"
    sql: ${TABLE}.SRC_STRATEGY_TYPE ;;
  }

  dimension: src_strategy_ver_num {
    label: "Strategy Version"
    type: string
    sql: ${TABLE}.SRC_STRATEGY_VER_NUM ;;
  }

  dimension: src_sys_program_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: strategy_based_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: strgy_based_yes_no {
    type: string
    label: "Is Strategy Based ?"
    sql: CASE WHEN ${strategy_based_flag} = 'Y' THEN 'Yes'
              WHEN ${strategy_based_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: system_accrue {
    type: string
    hidden: yes
    label: "Accrue in ERP"
    sql: ${TABLE}.SYSTEM_ACCRUE ;;
  }

  dimension: system_accrue_yes_no {
    type: string
    label: "Accrue in ERP"
    sql: CASE WHEN ${system_accrue} = '1' THEN 'Yes'
              WHEN ${system_accrue} = '0' THEN 'No' ELSE NULL END ;;
  }

  dimension: tb_calc_rule {
    type: string
    sql: ${TABLE}.TB_CALC_RULE ;;
    label: "Tier Basis Calc Rule"
  }

  dimension: tier_mgmt_type {
    type: string
    sql: ${TABLE}.TIER_MGMT_TYPE ;;
    label: "Tier Management"
  }

  dimension: util_type {
    type: string
    sql: ${TABLE}.UTIL_TYPE ;;
    label: "Utilization Type"
  }

  dimension_group: ver_end {
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
    type: string
    label: "Version Number"
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    label: "Version Start"
    sql: ${TABLE}.VER_START_DATE ;;
  }

  dimension: contract_type {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: src_sys_pk_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_mgr_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: accrual_type_name {
    type: string
    label: "Accrual Type"
    sql: ${TABLE}.ACCRUAL_TYPE_NAME ;;
  }

  set: detail {
    fields: [
      accrual_rate,
      benefit_calc_rule,
      calc_level,
      effective_timezone_gmt,
      doc_tz_eff_end_date_time,
      doc_tz_eff_start_date_time,
      end_ver_num,
      flat_program_yes_no,
      grp_name,
      latest_yes_no,
      late_date_lag,
      market_basket_type,
      std_program_yes_no,
      num_tiers,
      order_idx,
      payment_cust_type,
      payment_freq,
      payment_grace_freq,
      payment_level,
      processing_date_lag,
      program_name,
      program_sub_type,
      program_sub_type_name,
      qual_method,
      rx_norm_method,
      sale_line_from,
      sale_line_type,
      schedule_basis,
      src_strategy_name,
      src_strategy_num,
      src_strategy_type,
      src_strategy_ver_num,
      strgy_based_yes_no,
      system_accrue,
      tb_calc_rule,
      tier_mgmt_type,
      util_type,
      ver_end_date,
      ver_num,
      ver_start_date,
      contract_type,
    ]
  }
}
