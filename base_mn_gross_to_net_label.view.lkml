view: mn_gross_to_net_label {

  derived_table: {
    sql: SELECT 1 as kpi_num, 'Gross Revenue' as label, 'List Price' as price_label FROM DUAL UNION ALL
    SELECT  2 as kpi_num, 'On-Invoice Discount'  as label,'' as price_label FROM DUAL UNION ALL
    SELECT  3 as kpi_num, 'Invoice Revenue' as label, 'Invoice Price' as price_label FROM DUAL UNION ALL
    SELECT  4 as kpi_num, 'Incentive Rebates'  as label, '' as price_label FROM DUAL UNION ALL
    SELECT  5 as kpi_num, 'Fee for Service'  as label, '' as price_label FROM DUAL UNION ALL
    SELECT  6 as kpi_num, 'Distributor Service Fee'  as label, '' as price_label FROM DUAL UNION ALL
    SELECT  7 as kpi_num, 'Basic Rebates'  as label, '' as price_label FROM DUAL UNION ALL
    SELECT  8 as kpi_num, 'Admin Fees'  as label, '' as price_label FROM DUAL UNION ALL
    SELECT  9 as kpi_num,  'Other Rebates'  as label, '' as price_label FROM DUAL UNION ALL
    SELECT  10 as kpi_num, 'Net Revenue' as label, 'Net Price' as price_label FROM DUAL UNION ALL
    SELECT  11 as kpi_num, 'Cost Of Goods'  as label, 'Cost Of Goods' as price_label FROM DUAL UNION ALL
    SELECT  12 as kpi_num, 'Net Profit' as label, 'Net Price after COGS' as price_label  FROM DUAL
 ;;
  }

  dimension: dummy_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: 1 ;;
  }

  dimension: kpi_name {
    type: string
    sql: ${TABLE}.LABEL ;;
  }

  dimension: price_kpi_name {
    type: string
    sql: NVL(${TABLE}.PRICE_LABEL,${TABLE}.LABEL) ;;
  }

  dimension: kpi_num {
    type: number
    sql: ${TABLE}.KPI_NUM ;;
  }

}
