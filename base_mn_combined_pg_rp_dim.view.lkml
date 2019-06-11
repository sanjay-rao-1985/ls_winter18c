view: mn_combined_pg_rp_dim {

  derived_table: {
    sql: SELECT
           RP.PROGRAM_WID,
           NULL AS PG_WID,
           RP.PROGRAM_WID AS PROGRAM_COMB_KEY,
           'R'||RP.PROGRAM_WID AS PROGRAM_KEY,
           'Rebate Program' AS PROGRAM_TYPE,
           1 AS PROGRAM_TYPE_NUM,
           RP.ACCRUAL_TYPE_WID,
           Null as SRC_SYS_PG_ID,
           RP.PROGRAM_NAME,
           RP.PMT_TYPE_WID,
           NULL as ALLOW_TIER_CHANGING_FLAG,
           NULL as ADJ_TYPE,
           NULL AS SEPERATE_PROD_FOR_TIERS,
           NULL AS DISCOUNT_TYPE,
           RP.LATEST_FLAG,
           NULL AS CATEGORY_PRICING,
           NULL AS RESOLVE_TO_THIS_PG_FLAG,
           NULL AS COMPLIANCE_TIER_TRACKING,
           NULL AS BASE_PRICE_LIST_WID,
           NULL AS PRICE_BASIS,
           NULL AS PRC_OVERR_TOLERANCE,
           NULL AS HAS_ACCESS_PRICE,
           NULL AS INDEXATION_INCREASE,
           NULL AS NUM_DEFINED_INCREASES,
           NULL AS INDEXATION_START_DATE,
           NULL AS INDEXATION_INCR_CAP,
           RP.PROCESSING_DATE_LAG,
           NULL AS TIER_TIME_FRAME,
           NULL AS COMPLIANCE_THRESHOLD,
           RP.SCHEDULE_BASIS,
           RP.SALE_LINE_FROM,
           RP.SALE_LINE_TYPE,
           RP.NUM_TIERS,
           RP.STRATEGY_BASED_FLAG,
           RP.SRC_STRATEGY_NAME,
           RP.SRC_STRATEGY_TYPE,
           'GMT' || TZ_OFFSET(RP.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
           RP.DOC_TZ_EFF_END_DATE,
           RP.DOC_TZ_EFF_START_DATE,
           RP.SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
           RP.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
           NULL AS CALC_OFFSET,
           NULL AS QUAL_METHOD_NAME,
           NULL AS IS_FLAT,
           Null as MARKET_BASKET_TYPE,
           NULL AS ADJUST_OPERATOR,
           NULL AS BUS_SEG_WID,
           NULL AS PRICING_METHOD_WID,
           NULL AS START_DATE,
           NULL AS END_DATE,
           NULL AS PRICING_TYPE,
           NULL AS INVOICE_FREQUENCY,
           NULL AS BILLING_DAY,
           NULL AS BILLING_DAY_MODE,
           NULL AS PRODUCT_TYPE_PRICED,
           NULL AS STEP_START_DATE,
           NULL AS STEP_END_DATE,
           NULL AS VOLUME_TIMEFRAME,
           NULL AS THIRD_PARTY_WID,
           RP.PMT_METHOD_WID,
           RP.ORG_WID,
           Null as ACCRU_CUST_WID,
           Null as CUSTOMER_WID,
           RP.PAYEE_CUSTOMER_WID,
           RP.ACCRUAL_RATE,
           RP.BENEFIT_CALC_RULE,
           RP.CALC_LEVEL,
           RP.END_VER_NUM,
           RP.FLAT_PROGRAM,
           RP.GRP_NAME,
           RP.LATE_DATE_LAG,
           RP.NON_STD_PROGRAM,
           RP.ORDER_IDX ,
           RP.PAYMENT_CUST_TYPE,
           RP.PAYMENT_FREQ,
           RP.PAYMENT_GRACE_FREQ,
           RP.PAYMENT_LEVEL,
           RP.PROGRAM_SUB_TYPE,
           RP.PROGRAM_SUB_TYPE_NAME,
           Null as QUAL_METHOD,
           Null as RX_NORM_METHOD,
           RP.SRC_STRATEGY_NUM,
           RP.SRC_STRATEGY_VER_NUM,
           RP.SRC_SYS_PROGRAM_ID,
           RP.PROGRAM_TYPE_WID,
           RP.SYSTEM_ACCRUE,
           RP.TB_CALC_RULE,
           Null as TIER_MGMT_TYPE,
           Null as UTIL_TYPE,
           RP.VER_END_DATE,
           RP.VER_NUM,
           RP.VER_START_DATE,
           RP.CONTRACT_TYPE AS CONTRACT_TYPE,
           CF.CONTRACT_WID AS CONTRACT_WID,
           ACT.ACCRUAL_TYPE_NAME
    FROM
    MN_REBATE_PROGRAM_DIM_VW RP
    INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RP.PROGRAM_WID AND CF.RECORD_TYPE = 2
    LEFT JOIN MN_ACCRUAL_TYPE_DIM_VW ACT ON ACT.ACCRUAL_TYPE_WID = RP.ACCRUAL_TYPE_WID
    WHERE RP.STRATEGY_BASED_FLAG='N'

    UNION ALL

  SELECT
            RP.PROGRAM_WID,
            NULL AS PG_WID,
            RP.PROGRAM_WID AS PROGRAM_COMB_KEY,
            'R'||RP.PROGRAM_WID AS PROGRAM_KEY,
            'Rebate Program' AS PROGRAM_TYPE,
            1 AS PROGRAM_TYPE_NUM,
            RPSD.ACCRUAL_TYPE_WID,
            Null as SRC_SYS_PG_ID,
            RP.PROGRAM_NAME,
            RPSD.PMT_TYPE_WID,
            NULL as ALLOW_TIER_CHANGING_FLAG,
            NULL as ADJ_TYPE,
            NULL AS SEPERATE_PROD_FOR_TIERS,
            NULL AS DISCOUNT_TYPE,
            RP.LATEST_FLAG,
            NULL AS CATEGORY_PRICING,
            NULL AS RESOLVE_TO_THIS_PG_FLAG,
            NULL AS COMPLIANCE_TIER_TRACKING,
            NULL AS BASE_PRICE_LIST_WID,
            NULL AS PRICE_BASIS,
            NULL AS PRC_OVERR_TOLERANCE,
            NULL AS HAS_ACCESS_PRICE,
            NULL AS INDEXATION_INCREASE,
            NULL AS NUM_DEFINED_INCREASES,
            NULL AS INDEXATION_START_DATE,
            NULL AS INDEXATION_INCR_CAP,
            RPSD.PROCESSING_DATE_LAG,
            NULL AS TIER_TIME_FRAME,
            NULL AS COMPLIANCE_THRESHOLD,
            RP.SCHEDULE_BASIS,
            RPSD.SALE_LINE_FROM,
            RPSD.SALE_LINE_TYPE,
            RP.NUM_TIERS,
            RP.STRATEGY_BASED_FLAG,
            RP.SRC_STRATEGY_NAME,
            RP.SRC_STRATEGY_TYPE,
            'GMT' || TZ_OFFSET(RP.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
            RP.DOC_TZ_EFF_END_DATE,
            RP.DOC_TZ_EFF_START_DATE,
            RP.SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
            RP.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
            NULL AS CALC_OFFSET,
            NULL AS QUAL_METHOD_NAME,
            NULL AS IS_FLAT,
            RPSD.MARKET_BASKET_TYPE,
            NULL AS ADJUST_OPERATOR,
            NULL AS BUS_SEG_WID,
            NULL AS PRICING_METHOD_WID,
            NULL AS START_DATE,
            NULL AS END_DATE,
            NULL AS PRICING_TYPE,
            NULL AS INVOICE_FREQUENCY,
            NULL AS BILLING_DAY,
            NULL AS BILLING_DAY_MODE,
            NULL AS PRODUCT_TYPE_PRICED,
            NULL AS STEP_START_DATE,
            NULL AS STEP_END_DATE,
            NULL AS VOLUME_TIMEFRAME,
            NULL AS THIRD_PARTY_WID,
            RPSD.PMT_MTH_TYPE_WID AS PMT_METHOD_WID,
            RP.ORG_WID,
            RPSD.ACCRU_CUST_WID,
            RPSD.CUSTOMER_WID,
            RPSD.PAYEE_CUSTOMER_WID,
            RPSD.ACCRUAL_RATE,
            RP.BENEFIT_CALC_RULE,
            RP.CALC_LEVEL,
            RP.END_VER_NUM,
            RP.FLAT_PROGRAM,
            RP.GRP_NAME,
            RPSD.LATE_DATE_LAG,
            RPSD.NON_STD_PROGRAM,
            RP.ORDER_IDX ,
            RPSD.PAYMENT_CUST_TYPE,
            RP.PAYMENT_FREQ,
            RP.PAYMENT_GRACE_FREQ,
            RPSD.PAYMENT_LEVEL,
            RP.PROGRAM_SUB_TYPE,
            RP.PROGRAM_SUB_TYPE_NAME,
            RPSD.QUAL_METHOD,
            RPSD.RX_NORM_METHOD,
            RP.SRC_STRATEGY_NUM,
            RP.SRC_STRATEGY_VER_NUM,
            RP.SRC_SYS_PROGRAM_ID,
            RP.PROGRAM_TYPE_WID,
            RPSD.SYSTEM_ACCRUE,
            RP.TB_CALC_RULE,
            RPSD.TIER_MGMT_TYPE,
            RPSD.UTIL_TYPE,
            RP.VER_END_DATE,
            RP.VER_NUM,
            RP.VER_START_DATE,
            RP.CONTRACT_TYPE AS CONTRACT_TYPE,
            CF.CONTRACT_WID AS CONTRACT_WID,
            ACT.ACCRUAL_TYPE_NAME
            FROM
            MN_REBATE_PROGRAM_DIM_VW RP
            LEFT JOIN MN_REBATE_PROGRAM_SD_RPT_VW RPSD ON RPSD.PROGRAM_WID = RP.PROGRAM_WID
            INNER JOIN MN_CONTRACT_FACT_VW CF ON CF.PROGRAM_WID = RP.PROGRAM_WID AND CF.RECORD_TYPE = 2
            LEFT JOIN MN_ACCRUAL_TYPE_DIM_VW ACT ON ACT.ACCRUAL_TYPE_WID = RPSD.ACCRUAL_TYPE_WID
            WHERE RP.STRATEGY_BASED_FLAG='Y'

      UNION ALL

     SELECT
           Null as PROGRAM_WID,
           PG_WID,
           PG_WID AS PROGRAM_COMB_KEY,
           'P'||PG_WID AS PROGRAM_KEY,
           'Price Program' AS PROGRAM_TYPE,
           2 AS PROGRAM_TYPE_NUM,
           Null as ACCRUAL_TYPE_WID,
           SRC_SYS_PG_ID,
           PG_NAME AS PROGRAM_NAME,
           NULL as PMT_TYPE_WID,
           ALLOW_TIER_CHANGING_FLAG,
           ADJ_TYPE,
           SEPERATE_PROD_FOR_TIERS,
           DISCOUNT_TYPE,
           LATEST_FLAG AS LATEST_FLAG,
           CATEGORY_PRICING,
           RESOLVE_TO_THIS_PG_FLAG,
           COMPLIANCE_TIER_TRACKING,
           BASE_PRICE_LIST_WID AS BASE_PRICE_LIST_WID,
           PRICE_BASIS,
           PRC_OVERR_TOLERANCE,
           HAS_ACCESS_PRICE,
           INDEXATION_INCREASE,
           NUM_DEFINED_INCREASES,
           INDEXATION_START_DATE,
           INDEXATION_INCR_CAP,
           PROCESSING_DATE_LAG,
           TIER_TIME_FRAME,
           COMPLIANCE_THRESHOLD,
           SCHEDULE_BASIS,
           SALE_LINE_FROM,
           SALE_LINE_TYPE,
           NUM_TIERS,
           STRATEGY_BASED_FLAG,
           SRC_STRATEGY_NAME,
           SRC_STRATEGY_TYPE,
           'GMT' || TZ_OFFSET(EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
           DOC_TZ_EFF_END_DATE,
           DOC_TZ_EFF_START_DATE,
           SRC_SYS_PK_ID AS SRC_SYS_PK_ID,
           SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
           CALC_OFFSET,
           QUAL_METHOD_NAME,
           IS_FLAT,
           'Static' AS MARKET_BASKET_TYPE,
           NULL AS ADJUST_OPERATOR,
           BUS_SEG_WID,
           PRICING_METHOD_WID,
           NULL AS START_DATE,
           NULL AS END_DATE,
           NULL AS PRICING_TYPE,
           NULL AS INVOICE_FREQUENCY,
           NULL AS BILLING_DAY,
           NULL AS BILLING_DAY_MODE,
           PRODUCT_TYPE_PRICED,
           NULL AS STEP_START_DATE,
           NULL AS STEP_END_DATE,
           NULL AS VOLUME_TIMEFRAME,
           NULL AS THIRD_PARTY_WID,
           NULL AS PMT_METHOD_WID,
           NULL AS ORG_WID,
           Null as ACCRU_CUST_WID,
           Null as CUSTOMER_WID,
           NULL AS PAYEE_CUSTOMER_WID,
           NULL AS ACCRUAL_RATE,
           NULL AS BENEFIT_CALC_RULE,
           NULL AS CALC_LEVEL,
           NULL AS END_VER_NUM,
           NULL AS FLAT_PROGRAM,
           NULL AS GRP_NAME,
           NULL AS LATE_DATE_LAG,
           NULL AS NON_STD_PROGRAM,
           NULL AS ORDER_IDX ,
           NULL AS PAYMENT_CUST_TYPE,
           NULL AS PAYMENT_FREQ,
           NULL AS PAYMENT_GRACE_FREQ,
           NULL AS PAYMENT_LEVEL,
           NULL AS PROGRAM_SUB_TYPE,
           NULL AS PROGRAM_SUB_TYPE_NAME,
           Null as QUAL_METHOD,
           Null as RX_NORM_METHOD,
           NULL AS SRC_STRATEGY_NUM,
           NULL AS SRC_STRATEGY_VER_NUM,
           NULL AS PROGRAM_TYPE_WID,
           NULL AS SRC_SYS_PROGRAM_ID,
           NULL AS SYSTEM_ACCRUE,
           NULL AS TB_CALC_RULE,
           Null as TIER_MGMT_TYPE,
           Null as UTIL_TYPE,
           NULL AS VER_END_DATE,
           NULL AS VER_NUM,
           NULL AS VER_START_DATE,
           NULL AS CONTRACT_TYPE,
           NULL AS CONTRACT_WID,
           NULL AS ACCRUAL_TYPE_NAME
           FROM
           MN_PRODUCT_GROUP_DIM_VW
           WHERE STRATEGY_BASED_FLAG='N'

      UNION ALL

     SELECT
           Null as PROGRAM_WID,
           PG.PG_WID,
           PG.PG_WID AS PROGRAM_COMB_KEY,
           'P'||PG.PG_WID AS PROGRAM_KEY,
           'Price Program' AS PROGRAM_TYPE,
           2 AS PROGRAM_TYPE_NUM,
           Null as ACCRUAL_TYPE_WID,
           PG.SRC_SYS_PG_ID,
           PG.PG_NAME AS PROGRAM_NAME,
           NULL as PMT_TYPE_WID,
           PGSD.ALLOW_TIER_CHANGING_FLAG,
           PGSD.ADJ_TYPE,
           NULL AS SEPERATE_PROD_FOR_TIERS,
           NULL AS DISCOUNT_TYPE,
           PG.LATEST_FLAG AS LATEST_FLAG,
           PGSD.CATEGORY_PRICING,
           NULL AS RESOLVE_TO_THIS_PG_FLAG,
           PGSD.COMPLIANCE_TIER_TRACKING,
           PGSD.PRICE_LIST_WID AS BASE_PRICE_LIST_WID,
           PGSD.PRICE_BASIS,
           NULL AS PRC_OVERR_TOLERANCE,
           PGSD.HAS_ACCESS_PRICE,
           NULL AS INDEXATION_INCREASE,
           NULL AS NUM_DEFINED_INCREASES,
           NULL AS INDEXATION_START_DATE,
           NULL AS INDEXATION_INCR_CAP,
           PGSD.PROCESSING_DATE_LAG,
           PGSD.TIME_FRAME AS TIER_TIME_FRAME,
           NULL AS COMPLIANCE_THRESHOLD,
           PGSD.SCHEDULE_BASIS,
           PGSD.SALE_LINE_FROM,
           PGSD.SALE_LINE_TYPE,
           PG.NUM_TIERS,
           PG.STRATEGY_BASED_FLAG,
           PG.SRC_STRATEGY_NAME,
           PG.SRC_STRATEGY_TYPE,
           'GMT' || TZ_OFFSET(PG.EFFECTIVE_TIMEZONE) AS EFFECTIVE_TIMEZONE_GMT,
           PG.DOC_TZ_EFF_END_DATE,
           PG.DOC_TZ_EFF_START_DATE,
           PG.SRC_SYS_PK_ID,
           PG.SRC_SYS_MGR_ID SRC_SYS_MGR_ID,
           PGSD.CALC_OFFSET,
           PGSD.QUAL_METHOD_NAME,
           PG.IS_FLAT,
           PGSD.MARKET_BASKET_TYPE,
           PGSD.ADJUST_OPERATOR,
           PGSD.BUS_SEG_WID,
           PG.PRICING_METHOD_WID,
           PG.START_DATE,
           PG.END_DATE,
           PGSD.PRICING_TYPE,
           PGSD.INVOICE_FREQUENCY,
           PGSD.BILLING_DAY,
           PGSD.BILLING_DAY_MODE,
           PGSD.PRODUCT_TYPE_PRICED,
           PGSD.STEP_START_DATE,
           PGSD.STEP_END_DATE,
           PGSD.VOLUME_TIMEFRAME,
           PGSD.THIRD_PARTY_WID,
           NULL AS PMT_METHOD_WID,
           NULL AS ORG_WID,
           Null as ACCRU_CUST_WID,
           Null as CUSTOMER_WID,
           NULL AS PAYEE_CUSTOMER_WID,
           NULL AS ACCRUAL_RATE,
           NULL AS BENEFIT_CALC_RULE,
           NULL AS CALC_LEVEL,
           NULL AS END_VER_NUM,
           NULL AS FLAT_PROGRAM,
           NULL AS GRP_NAME,
           NULL AS LATE_DATE_LAG,
           NULL AS NON_STD_PROGRAM,
           NULL AS ORDER_IDX ,
           NULL AS PAYMENT_CUST_TYPE,
           NULL AS PAYMENT_FREQ,
           NULL AS PAYMENT_GRACE_FREQ,
           NULL AS PAYMENT_LEVEL,
           NULL AS PROGRAM_SUB_TYPE,
           NULL AS PROGRAM_SUB_TYPE_NAME,
           Null as QUAL_METHOD,
           Null as RX_NORM_METHOD,
           NULL AS SRC_STRATEGY_NUM,
           NULL AS SRC_STRATEGY_VER_NUM,
           NULL AS PROGRAM_TYPE_WID,
           NULL AS SRC_SYS_PROGRAM_ID,
           NULL AS SYSTEM_ACCRUE,
           NULL AS TB_CALC_RULE,
           Null as TIER_MGMT_TYPE,
           Null as UTIL_TYPE,
           NULL AS VER_END_DATE,
           NULL AS VER_NUM,
           NULL AS VER_START_DATE,
           NULL AS CONTRACT_TYPE,
           NULL AS CONTRACT_WID,
           NULL AS ACCRUAL_TYPE_NAME
           FROM
           MN_PRODUCT_GROUP_DIM_VW PG
           LEFT JOIN MN_PRODUCT_GROUP_SD_RPT_VW PGSD ON PGSD.PG_WID = PG.PG_WID
           WHERE PG.STRATEGY_BASED_FLAG='Y'
 ;;
  }

  dimension: program_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_WID ;;
  }

  dimension: pg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: program_comb_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_COMB_KEY ;;
  }

  dimension: program_key {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_KEY ;;
  }

  dimension: program_type {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_TYPE ;;
  }

  dimension: accrual_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ACCRUAL_TYPE_WID ;;
  }

  dimension: src_sys_pg_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PG_ID ;;
  }

  dimension: program_name {
    type: string
    view_label: "Pricing Program"
    label: "Name"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.PROGRAM_NAME ELSE NULL END ;;

    # Navigation link to RC
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }
  }

  dimension: pmt_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PMT_TYPE_WID ;;
  }

  dimension: allow_tier_chng_flag_yn {
    type: number
    hidden: yes
    sql: CASE WHEN ${TABLE}.ALLOW_TIER_CHANGING_FLAG = 1 THEN 'True'
      WHEN ${TABLE}.ALLOW_TIER_CHANGING_FLAG = 0 THEN 'False' ELSE NULL END ;;
  }

  dimension: pbidEnabled_flag {
    type: string
    view_label: "Pricing Program"
    label: "Is PBid Enabled ?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN ${mn_combined_pg_rp_dim.allow_tier_chng_flag_yn} ELSE NULL END ;;
  }

  dimension: adj_type {
    type: string
    view_label: "Pricing Program"
    label: "Adjust Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.ADJ_TYPE ELSE NULL END ;;
  }

  dimension: seperate_prod_for_tiers {
    type: number
    view_label: "Pricing Program"
    label: "Separate Product for Tiers"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.SEPERATE_PROD_FOR_TIERS ELSE NULL END ;;
  }

  dimension: discount_type {
    type: string
    view_label: "Pricing Program"
    label: "Discount Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.DISCOUNT_TYPE ELSE NULL END ;;
  }

  dimension: latest_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: latest_flag_yn {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.LATEST_FLAG = 'Y' THEN 'Yes'
      WHEN ${TABLE}.LATEST_FLAG = 'N' THEN 'No' ELSE NULL END;;
  }

  dimension: is_latest_flag {
    type: string
    view_label: "Pricing Program"
    label: "Is Latest Flag?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN ${mn_combined_pg_rp_dim.latest_flag_yn} ELSE NULL END ;;
  }

  dimension: category_pricing {
    type: string
    view_label: "Pricing Program"
    label: "Category Pricing"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.CATEGORY_PRICING ELSE NULL END ;;
  }

  dimension: reslve_to_this_pg_flg_yn {
    type: number
    hidden: yes
    sql: CASE WHEN ${TABLE}.RESOLVE_TO_THIS_PG_FLAG = 1 THEN 'Yes'
      WHEN ${TABLE}.RESOLVE_TO_THIS_PG_FLAG = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: resolve_to_this_pg_flag {
    type: string
    view_label: "Pricing Program"
    label: "Resolve to This Program"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN ${mn_combined_pg_rp_dim.reslve_to_this_pg_flg_yn} ELSE NULL END ;;
  }

  dimension: compliance_tier_track_yn {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.COMPLIANCE_TIER_TRACKING = 0 THEN 'False'
      WHEN ${TABLE}.COMPLIANCE_TIER_TRACKING = 1 THEN 'True' ELSE NULL END ;;
  }

  dimension: compliance_tier_tracking {
    type: string
    view_label: "Pricing Program"
    label: "Compliance Tracking"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN ${mn_combined_pg_rp_dim.compliance_tier_track_yn} ELSE NULL END ;;
  }

  dimension: base_price_list_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.BASE_PRICE_LIST_WID ;;
  }

  dimension: price_basis {
    type: string
    view_label: "Pricing Program"
    label: "Price Basis"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.PRICE_BASIS ELSE NULL END ;;
  }

  dimension: prc_overr_tolerance {
    type: number
    view_label: "Pricing Program"
    label: "Price Override Tolerance %"
    value_format_name: percent_2
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.PRC_OVERR_TOLERANCE ELSE NULL END ;;
  }

  dimension: has_access_price_yn {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.HAS_ACCESS_PRICE = 1 THEN 'Yes'
      WHEN ${TABLE}.HAS_ACCESS_PRICE = 0 THEN 'No' ELSE NULL END;;
  }

  dimension: has_access_price {
    type: string
    view_label: "Pricing Program"
    label: "Has Access Price ?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN ${mn_combined_pg_rp_dim.has_access_price_yn} ELSE NULL END ;;
  }

  dimension: indexation_increase {
    type: number
    view_label: "Pricing Program"
    label: "Indexation Increase?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.INDEXATION_INCREASE ELSE NULL END ;;
  }

  dimension: num_defined_increases {
    type: number
    view_label: "Pricing Program"
    label: "# Of Contract Defined Increases"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.NUM_DEFINED_INCREASES ELSE NULL END ;;
  }

  dimension_group: indexation_start_date {
    type: time
    view_label: "Pricing Program"
    label: "Indexation Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.INDEXATION_START_DATE ELSE NULL END ;;
  }

  dimension: indexation_incr_cap {
    type: number
    view_label: "Pricing Program"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.INDEXATION_INCR_CAP ELSE NULL END ;;
  }

  dimension: processing_date_lag {
    type: number
    view_label: "Pricing Program"
    label: "Process Date Lag"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.PROCESSING_DATE_LAG ELSE NULL END ;;
  }

  dimension: tier_time_frame {
    type: string
    view_label: "Pricing Program"
    label: "Tier Time Frame"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.TIER_TIME_FRAME ELSE NULL END ;;
  }

  dimension: compliance_threshold {
    type: number
    view_label: "Pricing Program"
    label: "Compliance Threshold"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.COMPLIANCE_THRESHOLD ELSE NULL END ;;
  }

  dimension: schedule_basis {
    type: string
    view_label: "Pricing Program"
    label: "Schedule Basis"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.SCHEDULE_BASIS ELSE NULL END ;;
  }

  dimension: sale_line_from {
    type: string
    view_label: "Pricing Program"
    label: "Sale Lines From"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.SALE_LINE_FROM ELSE NULL END ;;
  }

  dimension: sale_line_type {
    type: string
    view_label: "Pricing Program"
    label: "Sales Line Types"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.SALE_LINE_TYPE ELSE NULL END ;;
  }

  dimension: num_tiers {
    type: number
    view_label: "Pricing Program"
    label: "# of Tiers"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.NUM_TIERS ELSE NULL END ;;
  }

  dimension: strategy_based_flag_yn {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.STRATEGY_BASED_FLAG = 'Y' THEN 'Yes'
      WHEN ${TABLE}.STRATEGY_BASED_FLAG = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: strategy_based_flag {
    type: string
    view_label: "Pricing Program"
    label: "Is Strategy Based ?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${mn_combined_pg_rp_dim.strategy_based_flag_yn} ELSE NULL END ;;
  }

  dimension: src_strategy_name {
    type: string
    view_label: "Pricing Program"
    label: "Source Strategy"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.SRC_STRATEGY_NAME ELSE NULL END ;;
  }

  dimension: src_strategy_type {
    type: string
    view_label: "Pricing Program"
    label: "Source Strategy Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.SRC_STRATEGY_TYPE ELSE NULL END ;;
  }

  dimension: effective_timezone_gmt {
    type: string
    view_label: "Pricing Program"
    label: "Effective Timezone"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.EFFECTIVE_TIMEZONE_GMT ELSE NULL END ;;
  }

  dimension_group: doc_tz_eff_end_date {
    label: "End"
    view_label: "Pricing Program"
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
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.DOC_TZ_EFF_END_DATE ELSE NULL END ;;
  }

  dimension_group: doc_tz_eff_start_date {
    label: "Start"
    view_label: "Pricing Program"
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
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.DOC_TZ_EFF_START_DATE ELSE NULL END ;;
  }


  dimension: src_sys_pk_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PK_ID ;;
  }

  dimension: src_sys_mgr_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_MGR_ID ;;
  }

  dimension: calc_offset {
    type: string
    view_label: "Pricing Program"
    label: "Measurement Offset"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.CALC_OFFSET ELSE NULL END ;;
  }

  dimension: qual_method_name {
    type: string
    view_label: "Pricing Program"
    label: "Tier Rule"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.QUAL_METHOD_NAME ELSE NULL END ;;
  }

  dimension: is_flat_yn {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.IS_FLAT = 'Y' THEN 'Yes'
      WHEN ${TABLE}.IS_FLAT = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: is_flat {
    type: string
    view_label: "Pricing Program"
    label: "Is Flat Program?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${mn_combined_pg_rp_dim.is_flat_yn} ELSE NULL END ;;
  }

  dimension: market_basket_type {
    type: string
    view_label: "Pricing Program"
    label: "Market Basket Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.MARKET_BASKET_TYPE ELSE NULL END ;;
  }

  dimension: adjust_operator {
    type: string
    view_label: "Pricing Program"
    label: "Adjustment Operator"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.ADJUST_OPERATOR ELSE NULL END ;;
  }

  dimension: bus_seg_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.BUS_SEG_WID ;;
  }

  dimension: pricing_method_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICING_METHOD_WID ;;
  }

  dimension_group: start_date {
    type: time
    view_label: "Pricing Program"
    label: "Lease Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.START_DATE ELSE NULL END ;;
  }

  dimension_group: end_date {
    type: time
    view_label: "Pricing Program"
    label: "Lease End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.END_DATE ELSE NULL END ;;
  }

  dimension: pricing_type {
    type: string
    view_label: "Pricing Program"
    label: "Pricing Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.PRICING_TYPE ELSE NULL END ;;
  }

  dimension: invoice_frequency {
    type: string
    view_label: "Pricing Program"
    label: "Invoice Frequency"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.INVOICE_FREQUENCY ELSE NULL END ;;
  }

  dimension: billing_day {
    type: number
    view_label: "Pricing Program"
    label: "Billing Day"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.BILLING_DAY ELSE NULL END ;;
  }

  dimension: billing_day_mode {
    type: string
    view_label: "Pricing Program"
    label: "Billing Day Mode"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.BILLING_DAY_MODE ELSE NULL END ;;
  }

  dimension: product_type_priced {
    type: string
    view_label: "Pricing Program"
    label: "Product Type Priced"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.PRODUCT_TYPE_PRICED ELSE NULL END ;;
  }

  dimension_group: step_start {
    type: time
    view_label: "Pricing Program"
    label: "Step Start"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.STEP_START_DATE ELSE NULL END ;;
  }

  dimension_group: step_end {
    type: time
    view_label: "Pricing Program"
    label: "Step End"
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month,
      quarter,
      year
    ]
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.STEP_END_DATE ELSE NULL END ;;
  }

  dimension: volume_timeframe {
    type: string
    view_label: "Pricing Program"
    label: "Volume Time Frame"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 2 THEN  ${TABLE}.VOLUME_TIMEFRAME ELSE NULL END ;;
  }

  dimension: third_party_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.THIRD_PARTY_WID ;;
  }

  dimension: pmt_method_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PMT_METHOD_WID ;;
  }

  dimension: org_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ORG_WID ;;
  }

  dimension: accru_cust_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.ACCRU_CUST_WID ;;
  }

  dimension: customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: payee_customer_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYEE_CUSTOMER_WID ;;
  }

  dimension: end_ver_num {
    type: number
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: program_sub_type {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_SUB_TYPE ;;
  }

  dimension: src_sys_program_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SRC_SYS_PROGRAM_ID ;;
  }

  dimension: program_type_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_TYPE_WID ;;
  }

  dimension: contract_type {
    type: string
    hidden: yes
    sql: ${TABLE}.CONTRACT_TYPE ;;
  }

  dimension: contract_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.CONTRACT_WID ;;
  }


  #   Rebate Program Dimension group attributes Start

  dimension: accrual_rate_format {
    type: string
    hidden: yes
    sql: CASE WHEN ${TABLE}.ACCRUAL_RATE is not NULL THEN CASE WHEN ${TABLE}.ACCRUAL_TYPE_NAME IN('Amount / unit','Fixed Amount') THEN CONCAT('$',${TABLE}.ACCRUAL_RATE)
      WHEN ${TABLE}.ACCRUAL_TYPE_NAME ='%' THEN CONCAT(${TABLE}.ACCRUAL_RATE*100,'%') ELSE NULL END ELSE NULL END;;
  }

  dimension: accrual_rate {
    type: string
    view_label: "Rebate Program"
    label: "Accrual Rate"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${mn_combined_pg_rp_dim.accrual_rate_format} ELSE NULL END ;;
  }

  dimension: benefit_calc_rule {
    type: string
    view_label: "Rebate Program"
    label: "Benefit Calc. Rule"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.BENEFIT_CALC_RULE ELSE NULL END ;;
  }

  dimension: calc_level {
    type: string
    view_label: "Rebate Program"
    label: "Calculation Level"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.CALC_LEVEL ELSE NULL END ;;
  }

  dimension: rp_eff_timezone_gmt {
    type: string
    view_label: "Rebate Program"
    label: "Effective Timezone"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.EFFECTIVE_TIMEZONE_GMT ELSE NULL END ;;
  }

  dimension: system_accrue_yn {
    type: number
    hidden: yes
    sql: CASE WHEN ${TABLE}.SYSTEM_ACCRUE = 1 THEN 'Yes'
      WHEN ${TABLE}.SYSTEM_ACCRUE = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: system_accrue {
    type: string
    view_label: "Rebate Program"
    label: "Accrue in ERP"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${mn_combined_pg_rp_dim.system_accrue_yn} ELSE NULL END ;;
  }

  dimension: accrual_type_name {
    type: string
    view_label: "Rebate Program"
    label: "Accrual Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.ACCRUAL_TYPE_NAME ELSE NULL END ;;
  }

  dimension_group: rp_doc_tz_eff_end {
    label: "End"
    view_label: "Rebate Program"
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
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.DOC_TZ_EFF_END_DATE ELSE NULL END ;;
  }

  dimension: payment_grace_freq {
    type: string
    view_label: "Rebate Program"
    label: "Grace Period Pmt Freq"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.PAYMENT_GRACE_FREQ ELSE NULL END ;;
  }

  dimension: grp_name {
    type: string
    view_label: "Rebate Program"
    label: "Group Name"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.GRP_NAME ELSE NULL END ;;
  }

  dimension: flat_program_yn {
    type: number
    hidden: yes
    sql: CASE WHEN ${TABLE}.FLAT_PROGRAM = 1 THEN 'Yes'
      WHEN ${TABLE}.FLAT_PROGRAM = 0 THEN 'No' ELSE NULL END ;;
  }

  dimension: flat_program {
    type: string
    view_label: "Rebate Program"
    label: "Is Flat Program ?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${mn_combined_pg_rp_dim.flat_program_yn} ELSE NULL END ;;
  }

  dimension: rp_is_latest_flag {
    type: string
    view_label: "Rebate Program"
    label: "Is Latest ?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN ${mn_combined_pg_rp_dim.latest_flag_yn} ELSE NULL END ;;
  }

  dimension: non_std_program_yn {
    type: number
    hidden: yes
    sql: CASE WHEN ${TABLE}.NON_STD_PROGRAM = 1 THEN 'False'
      WHEN ${TABLE}.NON_STD_PROGRAM = 0 THEN 'True' ELSE NULL END ;;
  }

  dimension: non_std_program {
    type: string
    view_label: "Rebate Program"
    label: "Is Standard Program ?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN ${mn_combined_pg_rp_dim.non_std_program_yn} ELSE NULL END ;;
  }

  dimension: rp_strategy_based_flag {
    type: string
    view_label: "Rebate Program"
    label: "Is Strategy Based ?"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${mn_combined_pg_rp_dim.strategy_based_flag_yn} ELSE NULL END ;;
  }

  dimension: late_date_lag {
    type: number
    view_label: "Rebate Program"
    label: "Late Date Lag"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.LATE_DATE_LAG ELSE NULL END ;;
  }

  dimension: rp_market_basket_type {
    type: string
    view_label: "Rebate Program"
    label: "Market Basket Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.MARKET_BASKET_TYPE ELSE NULL END ;;
  }

  dimension: rebate_program_name {
    type: string
    view_label: "Rebate Program"
    label: "Name"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.PROGRAM_NAME ELSE NULL END ;;

    # Navigation link to RC
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }
  }

  dimension: order_idx {
    type: number
    view_label: "Rebate Program"
    label: "Order Index"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.ORDER_IDX ELSE NULL END ;;
  }

  dimension: payment_cust_type {
    type: string
    view_label: "Rebate Program"
    label: "Payment Customer Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.PAYMENT_CUST_TYPE ELSE NULL END ;;
  }

  dimension: payment_freq {
    type: string
    view_label: "Rebate Program"
    label: "Payment Frequency"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.PAYMENT_FREQ ELSE NULL END ;;
  }

  dimension: payment_level {
    type: string
    view_label: "Rebate Program"
    label: "Payment Level"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.PAYMENT_LEVEL ELSE NULL END ;;
  }

  dimension: rp_process_date_lag {
    type: number
    view_label: "Rebate Program"
    label: "Process Date Lag"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.PROCESSING_DATE_LAG ELSE NULL END ;;
  }

  dimension: qual_method {
    type: string
    view_label: "Rebate Program"
    label: "Qualification Method"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.QUAL_METHOD ELSE NULL END ;;
  }

  dimension: rx_norm_method {
    type: string
    view_label: "Rebate Program"
    label: "Rx Norm Method"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.RX_NORM_METHOD ELSE NULL END ;;
  }

  dimension: rp_sale_line_type {
    type: string
    view_label: "Rebate Program"
    label: "Sales Line Types"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.SALE_LINE_TYPE ELSE NULL END ;;
  }

  dimension: rp_sale_line_from {
    type: string
    view_label: "Rebate Program"
    label: "Sale Lines From"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.SALE_LINE_FROM ELSE NULL END ;;
  }

  dimension: rp_schedule_basis {
    type: string
    view_label: "Rebate Program"
    label: "Schedule Basis"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.SCHEDULE_BASIS ELSE NULL END ;;
  }

  dimension_group: rp_doc_tz_eff_start {
    label: "Start"
    view_label: "Rebate Program"
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
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.DOC_TZ_EFF_START_DATE ELSE NULL END ;;
  }

  dimension: src_strategy_num {
    type: string
    view_label: "Rebate Program"
    label: "Strategy ID"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.SRC_STRATEGY_NUM ELSE NULL END ;;
  }

  dimension: rp_src_strategy_name {
    type: string
    view_label: "Rebate Program"
    label: "Source Strategy"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.SRC_STRATEGY_NAME ELSE NULL END ;;
  }

  dimension: rp_src_strategy_type {
    type: string
    view_label: "Rebate Program"
    label: "Strategy Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.SRC_STRATEGY_TYPE ELSE NULL END ;;
  }

  dimension: src_strategy_ver_num {
    type: number
    view_label: "Rebate Program"
    label: "Strategy Version"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.SRC_STRATEGY_VER_NUM ELSE NULL END ;;
  }

  dimension: program_sub_type_name {
    type: string
    view_label: "Rebate Program"
    label: "Sub Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.PROGRAM_SUB_TYPE_NAME ELSE NULL END ;;
  }

  dimension: tb_calc_rule {
    type: string
    view_label: "Rebate Program"
    label: "Tier Basis Calc Rule"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.TB_CALC_RULE ELSE NULL END ;;
  }

  dimension: tier_mgmt_type {
    type: string
    view_label: "Rebate Program"
    label: "Tier Management"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.TIER_MGMT_TYPE ELSE NULL END ;;
  }

  dimension: util_type {
    type: string
    view_label: "Rebate Program"
    label: "Utilization Type"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.UTIL_TYPE ELSE NULL END ;;
  }

  dimension_group: ver_end_date {
    type: time
    view_label: "Rebate Program"
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
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.VER_END_DATE ELSE NULL END ;;
  }

  dimension_group: ver_start_date {
    type: time
    view_label: "Rebate Program"
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
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.VER_START_DATE ELSE NULL END ;;
  }

  dimension: ver_num {
    type: number
    view_label: "Rebate Program"
    label: "Version Number"
    sql: CASE WHEN ${TABLE}.PROGRAM_TYPE_NUM = 1 THEN  ${TABLE}.VER_NUM ELSE NULL END ;;
  }

#   Rebate Program Dimension group attributes End
  dimension: ctrt_elg_prog_name {
    type: string
    view_label: "Contract Eligible Customer"
    label: "Program Name"
    sql: ${TABLE}.PROGRAM_NAME ;;
  }

}
