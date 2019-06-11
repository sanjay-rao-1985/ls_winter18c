view: mn_combined_product_group_dim {
  derived_table: {
    sql: SELECT
      PG_WID,
      SRC_SYS_PG_ID,
      PG_NAME,
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
      NULL AS THIRD_PARTY_WID
      FROM
      MN_PRODUCT_GROUP_DIM_VW
      WHERE STRATEGY_BASED_FLAG='N'

      UNION ALL

      SELECT
      PG.PG_WID,
      PG.SRC_SYS_PG_ID,
      PG.PG_NAME,
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
      PGSD.THIRD_PARTY_WID
      FROM
      MN_PRODUCT_GROUP_DIM_VW PG
      LEFT JOIN MN_PRODUCT_GROUP_SD_RPT_VW PGSD ON PGSD.PG_WID = PG.PG_WID
      WHERE PG.STRATEGY_BASED_FLAG='Y'
       ;;
  }

  measure: count {
    hidden: yes
    label: "Price Program Count"
    type: count
    drill_fields: [detail*]
  }

  dimension: pricing_method_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRICING_METHOD_WID ;;
  }

  dimension: bus_seg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BUS_SEG_WID ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: src_sys_pg_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_PG_ID ;;
  }

  dimension: pg_name {
    type: string
    label: "Name"
    sql: ${TABLE}.PG_NAME ;;

    # Navigation link to RC
    link: {
      label: "Navigate to RC"
      url: "{{_user_attributes['ls_rc_url']}}={{ _view.src_sys_mgr_id._value }},{{ _view.src_sys_pk_id._value }}"
    }

  }

  dimension: allow_tier_changing_flag {
    type: number
    hidden: yes
    label: "PBid Enabled"
    sql: ${TABLE}.ALLOW_TIER_CHANGING_FLAG ;;
  }

  dimension: pbidEnabled_yes_no {
    type: string
    sql:  CASE WHEN ${allow_tier_changing_flag} = 1 THEN 'True'
      WHEN ${allow_tier_changing_flag} = 0 THEN 'False' ELSE NULL END ;;
    label: "Is PBid Enabled ?"
  }

  dimension: adj_type {
    type: string
    label: "Adjust Type"
    sql: ${TABLE}.ADJ_TYPE ;;
  }

  dimension: seperate_prod_for_tiers {
    type: string
    label: "Separate Product for Tiers"
    sql: ${TABLE}.SEPERATE_PROD_FOR_TIERS ;;
  }

  dimension: discount_type {
    type: string
    label: "Discount Type"
    sql: ${TABLE}.DISCOUNT_TYPE ;;
  }

  dimension: latest_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.LATEST_FLAG ;;
  }

  dimension: latest_flag_yes_no {
    type: string
    label: "Is Latest Flag?"
    sql: CASE WHEN ${latest_flag} = 'Y' THEN 'Yes'
              WHEN ${latest_flag} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: category_pricing {
    type: string
    sql: ${TABLE}.CATEGORY_PRICING ;;
  }

  dimension: resolve_to_this_pg_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.RESOLVE_TO_THIS_PG_FLAG ;;
  }

  dimension: resolve_to_this_pg_yes_no {
    type: string
    label: "Resolve to This Program"
    sql: CASE WHEN ${resolve_to_this_pg_flag} = '1' THEN 'Yes'
              WHEN ${resolve_to_this_pg_flag} = '0' THEN 'No' ELSE NULL END ;;
  }

  dimension: is_flat {
    type: string
    hidden: yes
    sql: ${TABLE}.IS_FLAT ;;
  }

  dimension: is_flat_yes_no {
    type: string
    label: "Is Flat Program?"
    sql: CASE WHEN ${is_flat} = 'Y' THEN 'Yes'
      WHEN ${is_flat} = 'N' THEN 'No' ELSE NULL END ;;
  }

  dimension: compliance_tier_tracking {
    type: string
    hidden: yes
    sql: ${TABLE}.COMPLIANCE_TIER_TRACKING ;;
  }

  dimension: compliance_tracking_yes_no {
    type: string
    label: "Compliance Tracking"
    sql: CASE WHEN ${compliance_tier_tracking} = '0' THEN 'False'
              WHEN ${compliance_tier_tracking} = '1' THEN 'True' ELSE NULL END ;;
  }

  dimension: base_price_list_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BASE_PRICE_LIST_WID ;;
  }

  dimension: price_basis {
    type: string
    label: "Price Basis"
    sql: ${TABLE}.PRICE_BASIS ;;
  }

  dimension: prc_overr_tolerance {
    type: number
    label: "Price Override Tolerance %"
    value_format_name: percent_2
    sql: ${TABLE}.PRC_OVERR_TOLERANCE ;;
  }

  dimension: product_type_priced {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE_PRICED ;;
  }

  dimension: has_access_price {
    type: string
    hidden: yes
    sql: ${TABLE}.HAS_ACCESS_PRICE ;;
  }

  dimension: has_access_price_yes_no {
    type: string
    label: "Has Access Price ?"
    sql: CASE WHEN ${has_access_price} = '0' THEN 'No'
              WHEN ${has_access_price} = '1' THEN 'Yes' ELSE NULL END ;;
  }

  dimension: indexation_increase {
    type: string
    hidden: yes
    sql: ${TABLE}.INDEXATION_INCREASE ;;
  }

  dimension: indexation_increase_yes_no {
    type: string
    label: "Indexation Increase?"
    sql: CASE WHEN ${indexation_increase} = '1' THEN 'Yes' WHEN ${indexation_increase} = '0' THEN 'No' ELSE NULL END ;;
  }

  dimension: num_defined_increases {
    type: number
    label: "# Of Contract Defined Increases"
    sql: ${TABLE}.NUM_DEFINED_INCREASES ;;
  }

  dimension_group: indexation_start_date {
    label: "Indexation Start"
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
    sql: ${TABLE}.INDEXATION_START_DATE ;;
  }

  dimension: indexation_incr_cap {
    type: string
    sql: ${TABLE}.INDEXATION_INCR_CAP ;;
  }

  dimension: processing_date_lag {
    type: string
    label: "Process Date Lag"
    sql: ${TABLE}.PROCESSING_DATE_LAG ;;
  }

  dimension: tier_time_frame {
    type: string
    sql: ${TABLE}.TIER_TIME_FRAME ;;
  }

  dimension: compliance_threshold {
    type: string
    sql: ${TABLE}.COMPLIANCE_THRESHOLD ;;
  }

  dimension: schedule_basis {
    type: string
    sql: ${TABLE}.SCHEDULE_BASIS ;;
  }

  dimension: sale_line_from {
    type: string
    label: "Sale Lines From"
    sql: ${TABLE}.SALE_LINE_FROM ;;
  }

  dimension: sale_line_type {
    type: string
    label: "Sales Line Types"
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: num_tiers {
    type: number
    label: "# of Tiers"
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: strategy_based_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: strategy_based_flag_yes_no {
    type: string
    sql:  CASE WHEN ${strategy_based_flag} = 'Y' THEN 'Yes'
      WHEN ${strategy_based_flag} = 'N' THEN 'No' ELSE NULL END ;;
    label: "Is Strategy Based ?"
  }

  dimension: src_strategy_name {
    type: string
    label: "Source Strategy"
    sql: ${TABLE}.SRC_STRATEGY_NAME ;;
  }

  dimension: src_strategy_type {
    type: string
    label: "Source Strategy Type"
    sql: ${TABLE}.SRC_STRATEGY_TYPE ;;
  }

  dimension: effective_timezone_gmt {
    type: string
    label: "Effective Timezone"
    sql: ${TABLE}.EFFECTIVE_TIMEZONE_GMT ;;
  }

  dimension_group: doc_tz_eff_end_date {
    label: "End"
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
  }

  dimension_group: doc_tz_eff_start_date {
    label: "Start"
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

  dimension: calc_offset {
    type: string
    label: "Measurement Offset"
    sql: ${TABLE}.CALC_OFFSET ;;
  }

  dimension: qual_method_name {
    type: string
    label: "Tier Rule"
    sql: ${TABLE}.QUAL_METHOD_NAME ;;
  }

  dimension: market_basket_type {
    type: string
    sql: ${TABLE}.MARKET_BASKET_TYPE ;;
  }

  dimension: adjust_operator {
    type: string
    label: "Adjustment Operator"
    sql: ${TABLE}.ADJUST_OPERATOR ;;
  }

  dimension_group: start_date {
    label: "Lease Start"
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension_group: end_date {
    label: "Lease End"
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: pricing_type {
    type: string
    sql: ${TABLE}.PRICING_TYPE ;;
  }

  dimension: invoice_frequency {
    type: string
    sql: ${TABLE}.INVOICE_FREQUENCY ;;
  }

  dimension: billing_day {
    type: string
    sql: ${TABLE}.BILLING_DAY ;;
  }

  dimension: billing_day_mode {
    type: string
    sql: ${TABLE}.BILLING_DAY_MODE ;;
  }

  dimension: step_start_date {
    type: string
    sql: ${TABLE}.STEP_START_DATE ;;
  }

  dimension: step_end_date {
    type: string
    sql: ${TABLE}.STEP_END_DATE ;;
  }

  dimension: volume_timeframe {
    type: string
    sql: ${TABLE}.VOLUME_TIMEFRAME ;;
  }

  dimension: third_party_wid {
    type: number
    hidden: yes
    sql: ${TABLE}.THIRD_PARTY_WID ;;
  }

  set: detail {
    fields: [
      pg_name,
      allow_tier_changing_flag,
      adj_type,
      seperate_prod_for_tiers,
      discount_type,
      latest_flag,
      category_pricing,
      resolve_to_this_pg_flag,
      compliance_tier_tracking,
      base_price_list_wid,
      price_basis,
      prc_overr_tolerance,
      product_type_priced,
      has_access_price,
      indexation_increase,
      num_defined_increases,
      indexation_start_date_time,
      indexation_incr_cap,
      processing_date_lag,
      tier_time_frame,
      compliance_threshold,
      schedule_basis,
      sale_line_from,
      sale_line_type,
      num_tiers,
      strategy_based_flag,
      src_strategy_name,
      src_strategy_type,
      effective_timezone_gmt,
      doc_tz_eff_end_date_time,
      doc_tz_eff_start_date_time,
      calc_offset,
      qual_method_name,
      market_basket_type,
      adjust_operator,
      pricing_type,
      invoice_frequency,
      billing_day,
      billing_day_mode,
      step_start_date,
      step_end_date,
      volume_timeframe
    ]
  }

  set: short_gtn_set1  {
    fields: [pg_name]
  }

  measure: count_formatted {
    hidden: yes
    label: "Price Program Count"
    html: <p style="color: white; background-color: green; font-size:160%;">{{ rendered_value }}</p>;;
    type: count
    drill_fields: [detail*]
  }

}
