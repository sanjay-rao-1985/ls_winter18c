view: mn_dw_etl_config_options {
  sql_table_name: MN_DW_ETL_CONFIG_OPTIONS_VW ;;
#   label: "ETL Config Options"
#   derived_table: {
#     sql: select option_name, option_value
#          from mn_dw_etl_config_options_vw
#          where option_name = 'SFDC_INSTANCE'
#         ;;
#   }

#   dimension: config_option_wid {
#     type: number
#     hidden: yes
#     sql: 10 ;;
#   }

  dimension: option_name {
    type: string
    sql: ${TABLE}.OPTION_NAME ;;
  }

  dimension: option_value {
    type: string
    sql: ${TABLE}.OPTION_VALUE ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [option_name]
  }
}
