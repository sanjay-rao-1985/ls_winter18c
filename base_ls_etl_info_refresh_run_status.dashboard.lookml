- dashboard: ls_etl_info_refresh_run_status
  title: ETL Refresh Run Status
  layout: grid
  rows:
  - elements: [last_run_status, last_run_start, last_run_end, elapsed_time,  last_run_successful_time,rel_build]
    height: 100
  - elements: [latest_run_info, latest_module_info]
    height: 250
  - elements: [run_info, config_options]
    height: 600
  show_applied_filters: true
  auto_run:  true

  filters:

  - name: action_date
    title: "Run Start Date"
    type: date_filter


  elements:
  - name: rel_build
    title: Datamart Release (build)
    explore: mn_dw_etl_config_options
    type: single_value
    fields: [mn_dw_etl_config_options.option_name, mn_dw_etl_config_options.option_value]
    filters:
      mn_dw_etl_config_options.option_name: DATAMART^_BUILD,DATAMART^_VERSION
    sorts: [mn_dw_etl_config_options.option_name]
    limit: 500
    dynamic_fields:
    - table_calculation: release_build
      label: Release (build)
      expression: concat(${mn_dw_etl_config_options.option_value}, " (",offset(${mn_dw_etl_config_options.option_value},1),")")
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [mn_dw_etl_config_options.option_name, mn_dw_etl_config_options.option_value]
    series_types: {}


  - name: config_options
    title: Configuration Options
    explore: mn_dw_etl_config_options
    type: table
    fields: [mn_dw_etl_config_options.option_name, mn_dw_etl_config_options.option_value]
    sorts: [mn_dw_etl_config_options.option_name]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false

  - name: latest_run_info
    title: Latets Successful Run Info
    type: looker_single_record
    explore: mn_dw_etl_latest_run_info
    dimensions: [mn_dw_etl_latest_run_info.run_type, mn_dw_etl_latest_run_info.last_successful_full_run_time,
      mn_dw_etl_latest_run_info.last_successful_run_time,
      mn_dw_etl_latest_run_info.run_date_timezone, mn_dw_etl_latest_run_info.current_timestamp, mn_dw_etl_latest_run_info.user]
    sorts: [mn_dw_etl_latest_run_info.last_successful_full_run_time desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false

  - name: latest_module_info
    title: Application Latest Successful Run Info
    type: table
    explore: mn_dw_etl_module_run_info
    dimensions: [mn_dw_etl_module_run_info.module_name, mn_dw_etl_module_run_info.run_end_time,
      mn_dw_etl_module_run_info.last_successful_run_time]
    filters:
      mn_dw_etl_module_run_info.application_flag: Y
    sorts: [mn_dw_etl_module_run_info.module_name]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}


  - name: elapsed_time
    title: Days Since Last Run End
    type: single_value
    explore: mn_dw_etl_run_info
    dimensions: [mn_dw_etl_run_info.elapsed_timestamp]
    filters:
      mn_dw_etl_run_info.run_status: COMPLETE
    sorts: []
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}

  - name: last_run_successful_time
    title: Last Successfull Run (DB Time)
    type: single_value
    explore: mn_dw_etl_latest_run_info
    dimensions: [mn_dw_etl_latest_run_info.last_successful_run_time, mn_dw_etl_latest_run_info.last_successful_full_run_time,
      mn_dw_etl_latest_run_info.run_type, mn_dw_etl_latest_run_info.run_date_timezone]
    sorts: [mn_dw_etl_latest_run_info.last_successful_run_time desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}

  - name: last_run_status
    title: Last Run Status
    type: single_value
    explore: mn_dw_etl_last_run_info
    dimensions: [mn_dw_etl_last_run_info.run_status]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}

  - name: last_run_start
    title: Last Run Start (DB Time)
    type: single_value
    explore: mn_dw_etl_last_run_info
    dimensions: [mn_dw_etl_last_run_info.etl_start_time]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}

  - name: last_run_end
    title: Last Run End (DB Time)
    type: single_value
    explore: mn_dw_etl_last_run_info
    dimensions: [mn_dw_etl_last_run_info.run_end_time]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}

  - name: run_info
    title: ETL Refresh History
    type: table
    explore: mn_dw_etl_run_info
    dimensions: [mn_dw_etl_run_info.run_id, mn_dw_etl_run_info.run_type, mn_dw_etl_run_info.run_status,
      mn_dw_etl_run_info.module_name, mn_dw_etl_run_info.etl_start_time, mn_dw_etl_run_info.run_end_time]
    filters:
    listen:
      action_date: mn_dw_etl_run_info.etl_start_date
    sorts: [mn_dw_etl_run_info.run_id desc]
    limit: '50'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
