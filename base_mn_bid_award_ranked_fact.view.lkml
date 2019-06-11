view: mn_bid_award_ranked_fact {
    derived_table: {
      sql:
        SELECT pr.BID_AWARD_WID,
        pr.BID_AWARD_CUST_WID,
        pr.BID_AWARD_PROD_WID,
        pr.PRODUCT_WID,
        pr.CUSTOMER_WID,
        pr.CONTRACT_CUSTOMER_WID,
        pr.CONTRACT_WID,
        pr.PG_WID,
        pr.REF_NUM,
        pr.START_DATE,
        pr.END_DATE,
        pr.PRICE,
        pr.PRICE_CUR,
        pr.PRICE_BASE,
        pr.EXCHANGE_RATE,
        pr.PRICE_TYPE,
        pr.RUN_DATE,
        pr.GEN_NAME,
        pr.MCC_STATUS,
        pr.TERM_DATE,
        pr.TIER_INDEX
      FROM (
      SELECT BID_AWARD_WID,
        BID_AWARD_CUST_WID,
        BID_AWARD_PROD_WID,
        rank() over (partition by CUSTOMER_WID, PRODUCT_WID order by CUSTOMER_WID, PRODUCT_WID ,price, price_type) as price_rank,
        PRODUCT_WID,
        CUSTOMER_WID,
        CONTRACT_CUSTOMER_WID,
        CONTRACT_WID,
        PG_WID,
        REF_NUM,
        START_DATE,
        END_DATE,
        PRICE,
        PRICE_CUR,
        PRICE_BASE,
        EXCHANGE_RATE,
        DECODE(PRICE_TYPE,'IND','Indirect','DIRIND','Direct/Indirect','DIR','Direct',PRICE_TYPE) AS PRICE_TYPE,
        RUN_DATE,
        GEN_NAME,
        MCC_STATUS,
        TERM_DATE,
        TIER_INDEX
    FROM MN_BID_AWARD_PRICE_FACT_VW
    ) pr
    INNER JOIN MN_CUSTOMER_DIM_VW cust ON cust.customer_wid = pr.CUSTOMER_WID
    WHERE ( {% condition customer_name_filter %} cust.customer_name {% endcondition %}
    AND {% condition customer_org_filter %} cust.org_id {% endcondition %}
    AND  {% condition customer_num_filter %} cust.customer_num {% endcondition %})
    AND price_rank = 1
       ;;
    }

  filter: customer_name_filter {
    type: string
    label: "Customer Name"
    suggest_explore: mn_customer_dim
    suggest_dimension: mn_customer_dim.customer_name
  }

  filter: customer_num_filter {
    type: string
    label: "Customer Number"
    suggest_explore: mn_customer_dim
    suggest_dimension: mn_customer_dim.customer_num
  }

  filter: customer_org_filter {
    type: string
    label: "Customer ID"
    suggest_explore: mn_customer_dim
    suggest_dimension: mn_customer_dim.org_id
  }

  dimension: bid_award_wid {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.BID_AWARD_WID ;;
  }

  dimension: bid_award_cust_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BID_AWARD_CUST_WID ;;
  }

  dimension: bid_award_prod_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.BID_AWARD_PROD_WID ;;
  }

  dimension: contract_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_WID ;;
  }

  dimension: contract_customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_CUSTOMER_WID, ;;
  }

  dimension: customer_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_WID ;;
  }

  dimension: product_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PRODUCT_WID ;;
  }

  dimension_group: end {
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

  dimension: gen_name {
    type: string
    sql: ${TABLE}.GEN_NAME ;;
  }

  dimension: mcc_status {
    type: string
    sql: ${TABLE}.MCC_STATUS ;;
  }

  dimension: pg_wid {
    hidden: yes
    type: number
    sql: ${TABLE}.PG_WID ;;
  }

  dimension: price_type {
    type: string
    sql: ${TABLE}.PRICE_TYPE ;;
  }

  dimension: ref_num {
    type: string
    sql: ${TABLE}.REF_NUM ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.RUN_DATE ;;
  }

  dimension_group: start {
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

  dimension_group: term {
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
    sql: ${TABLE}.TERM_DATE ;;
  }

  dimension: tier_index {
    type: string
    sql: ${TABLE}.TIER_INDEX ;;
  }

  dimension: price {
    type: number
    sql: CASE
      WHEN {% condition base_local_curr_selection %} 'Local' {% endcondition %} THEN ${price_local}
      ELSE ${price_base}
    END ;;

  }

  dimension: price_local {
    type: number
    sql: ${TABLE}.PRICE ;;
  }

  dimension: price_base {
    type: number
    sql: ${TABLE}.PRICE_BASE ;;
  }

  dimension: price_cur {
    type: string
    sql: ${TABLE}.PRICE_CUR ;;
  }

  filter: base_local_curr_selection {
    label: "Currency Mode"
    default_value: "Local"
    suggestions: ["Local", "Base"]
  }

  measure: bid_award_count {
    type: count
    drill_fields: [gen_name]
  }

  measure: minimum_price {
    type:  min
    value_format_name: decimal_2
    sql: ${price} ;;
  }
}
