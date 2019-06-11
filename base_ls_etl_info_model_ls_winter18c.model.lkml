include: "base_ls_database_connection_ls_winter18c.model.lkml"

include: "base_mn_dw_etl_latest_run_info.view.lkml"
include: "base_mn_dw_etl_run_info.view.lkml"
include: "base_mn_dw_etl_module_run_info.view.lkml"
include: "base_mn_dw_etl_config_options.view.lkml"

include: "base_ls_etl_info_refresh_run_status.dashboard.lookml"  # include all dashboards in this project

label: "LS DataMart and ETL Status"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: mn_dw_etl_run_info {
  label: "Run History Data"

}

explore: mn_dw_etl_last_run_info {
  from:  mn_dw_etl_run_info
  label: "Latest Run Data"
  sql_always_where: ${run_id} IN (SELECT MAX(RUN_ID) FROM MN_DW_ETL_FULL_RUN_INFO_VW) ;;

}

explore: mn_dw_etl_latest_run_info {
  label: "Latest Successfull Run Data"
}

explore: mn_dw_etl_module_run_info {
  label: "Module Run Data"

}

explore: mn_dw_etl_config_options {
  label: "Configuration Options"

}
