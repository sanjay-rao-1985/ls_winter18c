view: mn_pg_qual_ben_flat {
  derived_table: {
    sql:
    SELECT PGQB.PG_TB_WID,
          PGQB.SOURCE_SYSTEM_ID,
          PGQB.DATE_CREATED,
          PGQB.DATE_UPDATED,
          PGQB.NAME,
          PGQB.COMPONENT_TYPE,
          PGQB.COMPONENT_NAME,
          PGQB.STRATEGY_BASED_FLAG,
          NVL(lvls.EFF_START_DATE,PGQB.EFF_START_DATE) AS EFF_START_DATE,
          NVL(lvls.EFF_END_DATE,PGQB.EFF_END_DATE) AS EFF_END_DATE,
          PGQB.SRC_SYS_COMPONENT_ID,
          PGQB.IS_QUAL_COMP_FLAG,
          PGQB.IS_MB_COMPONENT,
          PGQB.SRC_SYS_DATE_UPDATED,
          PGQB.CALC_OBJ_TYPE,
          PGQB.MODULE_TYPE,
          PGQB.CALC_LEVEL,
          PGQB.USE_STRAT_FILTER_FLAG,
          PGQB.SALE_LINE_TYPE,
          PGQB.PG_WID,
          NVL(PGQB.BASIS_TYPE, PGQSD.BASIS_TYPE) AS BASIS_TYPE,
          PGQSD.UNITS AS UNITS,
          PGQSD.UOM AS UOM,
          PGQB.BASIS_DESC,
          PGQB.SEPARATE_TB_PROD_FLAG,
          NVL(PGQB.BASIS_UNIT, PGQSD.BASIS_UNIT) AS BASIS_UNIT,
          PGQB.SRC_SYS_TB_ID,
          PGQB.ORDER_INDEX,
          PGQB.NUM_TIERS,
          NVL(lvls.TIER1_VALUE,PGQB.TIER1_VALUE) AS TIER1_VALUE,
          NVL(lvls.TIER2_VALUE,PGQB.TIER2_VALUE) AS TIER2_VALUE,
          NVL(lvls.TIER3_VALUE,PGQB.TIER3_VALUE) AS TIER3_VALUE,
          NVL(lvls.TIER4_VALUE,PGQB.TIER4_VALUE) AS TIER4_VALUE,
          NVL(lvls.TIER5_VALUE,PGQB.TIER5_VALUE) AS TIER5_VALUE,
          NVL(lvls.TIER6_VALUE,PGQB.TIER6_VALUE) AS TIER6_VALUE,
          NVL(lvls.TIER7_VALUE,PGQB.TIER7_VALUE) AS TIER7_VALUE,
          NVL(lvls.TIER8_VALUE,PGQB.TIER8_VALUE) AS TIER8_VALUE,
          NVL(lvls.TIER9_VALUE,PGQB.TIER9_VALUE) AS TIER9_VALUE,
          PGQB.VER_NUM,
          PGQB.END_VER_NUM,
          PGQB.VER_START_DATE,
          PGQB.VER_END_DATE,
          PGQB.RUN_ID,
          CASE WHEN NVL(PGQB.BASIS_TYPE, PGQSD.BASIS_TYPE) in
                (
                      'Free Good Revenue Across Order',
                      'Revenue by Price Program',
                      'Free Goods Revenue Capitation' ,
                      'Step Revenue'
                ) THEN 'Revenue'
              ELSE
                (
                  CASE WHEN NVL(PGQB.BASIS_TYPE, PGQSD.BASIS_TYPE) in
                    (
                      'Volume by Price Program',
                      'Quantity In Tier Basis',
                      'Quantity By Line Item',
                      'Free Goods Volume Across Order',
                      'Recurring Volume',
                      'Free Goods volume Capitation',
                      'Step Volume',
                      'Volume by line item'
                    ) THEN 'Volume' ELSE null end
                  ) END AS COMPONENT_TYPE_FLAG

          FROM  MN_PG_QUAL_BEN_DIM_VW PGQB
          LEFT JOIN MN_PG_QUAL_BEN_SD_RPT_VW PGQSD ON PGQSD.PG_TB_WID=PGQB.PG_TB_WID AND PGQB.IS_QUAL_COMP_FLAG='Y' AND PGQSD.SPREADSHEET_TYPE<>'GENERIC' AND PGQSD.TIER_FLAG ='N' AND PGQSD.SPREADSHEET_NAME IS NULL
          LEFT JOIN (
               SELECT PG_TB_WID,
                  NULLIF(EFF_START_DATE, To_Date('07/03/1776','mm/dd/yyyy')) AS EFF_START_DATE,
                  NULLIF(EFF_END_DATE, To_Date('12/31/4700','mm/dd/yyyy')) AS EFF_END_DATE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=1 THEN TIER_VALUE ELSE NULL END) AS TIER1_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=2 THEN TIER_VALUE ELSE NULL END) AS TIER2_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=3 THEN TIER_VALUE ELSE NULL END) AS TIER3_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=4 THEN TIER_VALUE ELSE NULL END) AS TIER4_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=5 THEN TIER_VALUE ELSE NULL END) AS TIER5_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=6 THEN TIER_VALUE ELSE NULL END) AS TIER6_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=7 THEN TIER_VALUE ELSE NULL END) AS TIER7_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=8 THEN TIER_VALUE ELSE NULL END) AS TIER8_VALUE,
                  MAX(CASE WHEN  NVL(TIER_IDX,1)=9 THEN TIER_VALUE ELSE NULL END) AS TIER9_VALUE
              FROM MN_PG_QUAL_BEN_SD_RPT_VW WHERE TIER_FLAG ='Y'
              GROUP BY PG_TB_WID,
                  NULLIF(EFF_START_DATE, To_Date('07/03/1776','mm/dd/yyyy')),
                  NULLIF(EFF_END_DATE, To_Date('12/31/4700','mm/dd/yyyy'))
                  )
          lvls ON lvls.PG_TB_WID = PGQSD.PG_TB_WID
    ;;
  }

  dimension: units {
    type: string
    label: "Units"
    sql: ${TABLE}.UNITS ;;
  }

  dimension: uom {
    type: string
    label: "Unit of Measure"
    sql: ${TABLE}.UOM ;;
  }

  dimension: basis_desc {
    type: string
    label: "Component Description"
    sql: ${TABLE}.BASIS_DESC ;;
  }

  dimension: basis_type {
    type: string
    label: "Type"
    sql: ${TABLE}.BASIS_TYPE ;;
  }

  dimension: basis_unit {
    type: string
    label: "Unit"
    sql: ${TABLE}.BASIS_UNIT ;;
  }

  dimension: calc_level {
    type: string
    label: "Dimension"
    sql: ${TABLE}.CALC_LEVEL ;;
  }

  dimension: calc_obj_type {
    type: string
    hidden: yes
    label: "Component Object Type"
    sql: ${TABLE}.CALC_OBJ_TYPE ;;
  }

  dimension: component_name {
    type: string
    label: "Component Name"
    sql: ${TABLE}.COMPONENT_NAME ;;
  }

  dimension: component_type {
    type: string
    label: "Component Type"
    sql: ${TABLE}.COMPONENT_TYPE ;;
  }

  dimension_group: date_created {
    hidden: yes
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
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension_group: eff_end {
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

  dimension_group: eff_start {
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

  dimension: end_ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.END_VER_NUM ;;
  }

  dimension: is_mb_component {
    type: string
    hidden: yes
    sql: ${TABLE}.IS_MB_COMPONENT ;;
  }

  dimension: is_mb_component_yes_no {
    type: string
    label: "Is MB Component ?"
    sql: CASE WHEN ${is_mb_component} = 'Y' THEN 'Yes'
      WHEN ${is_mb_component} = 'N' THEN 'No' ELSE NULL END  ;;
  }

  dimension: is_qual_comp_flag {
    type: string
    hidden: yes
    sql: ${TABLE}.IS_QUAL_COMP_FLAG ;;
  }

  dimension: is_qual_comp_flag_yes_no {
    type: string
    label: "Is Qualification Component?"
    sql: CASE WHEN ${is_qual_comp_flag} = 'Y' THEN 'Yes'
      WHEN ${is_qual_comp_flag} = 'N' THEN 'No' ELSE NULL END  ;;
  }

  dimension: module_type {
    type: string
    label: "Module Type"
    sql: ${TABLE}.MODULE_TYPE ;;
  }

  dimension: name {
    type: string
    label: "Name"
    sql: ${TABLE}.NAME ;;
  }

  dimension: num_tiers {
    type: string
    label: "# of Tiers"
    sql: ${TABLE}.NUM_TIERS ;;
  }

  dimension: order_index {
    type: string
    label: "Order Index"
    sql: ${TABLE}.ORDER_INDEX ;;
  }

  dimension: pg_tb_wid {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PG_TB_WID ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: run_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: sale_line_type {
    type: string
    label: "Sales Line Types"
    sql: ${TABLE}.SALE_LINE_TYPE ;;
  }

  dimension: separate_tb_prod_flag {
    type: string
    label: "Define Seperate Product Set?"
    sql: ${TABLE}.SEPARATE_TB_PROD_FLAG ;;
  }

  dimension: source_system_id {
    type: string
    hidden: yes
    sql: ${TABLE}.SOURCE_SYSTEM_ID ;;
  }

  dimension: src_sys_component_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_COMPONENT_ID ;;
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

  dimension: src_sys_tb_id {
    hidden: yes
    type: number
    sql: ${TABLE}.SRC_SYS_TB_ID ;;
  }

  dimension: strategy_based_flag {
    type: string
    label: "Strategy Based"
    sql: ${TABLE}.STRATEGY_BASED_FLAG ;;
  }

  dimension: tier1_value {
    type: string
    sql: ${TABLE}.TIER1_VALUE ;;
  }

  dimension: tier2_value {
    type: string
    sql: ${TABLE}.TIER2_VALUE ;;
  }

  dimension: tier3_value {
    type: string
    sql: ${TABLE}.TIER3_VALUE ;;
  }

  dimension: tier4_value {
    type: string
    sql: ${TABLE}.TIER4_VALUE ;;
  }

  dimension: tier5_value {
    type: string
    sql: ${TABLE}.TIER5_VALUE ;;
  }

  dimension: tier6_value {
    type: string
    sql: ${TABLE}.TIER6_VALUE ;;
  }

  dimension: tier7_value {
    type: string
    sql: ${TABLE}.TIER7_VALUE ;;
  }

  dimension: tier8_value {
    type: string
    sql: ${TABLE}.TIER8_VALUE ;;
  }

  dimension: tier9_value {
    type: string
    sql: ${TABLE}.TIER9_VALUE ;;
  }

  dimension: use_strat_filter_flag {
    type: string
    label: "Use Strategy Filters"
    sql: ${TABLE}.USE_STRAT_FILTER_FLAG ;;
  }

  dimension_group: ver_end {
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
    sql: ${TABLE}.VER_END_DATE ;;
  }

  dimension: ver_num {
    type: string
    hidden: yes
    sql: ${TABLE}.VER_NUM ;;
  }

  dimension_group: ver_start {
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
    sql: ${TABLE}.VER_START_DATE ;;
  }

# **** Derived dimensions

  dimension: component_type_flag {
    type: string
    sql: ${TABLE}.COMPONENT_TYPE_FLAG ;;
  }

  measure: count {
    type: count
    drill_fields: [name, component_name]
  }
}
