- dashboard: ls_government_explorer_app_workbook_mapping
  title: GP Workbook Mapping
  layout: newspaper

  filters:

  - name: modeln_field_name
    title: 'Model N FIeld Name'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_pt_mapping_dim.display_name

  - name: workbook_data_type
    title: 'Workbook Result Type'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_pt_mapping_dim.workbook_data_type

  - name: pricetype_description
    title: 'Pricetype Description'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_price_type_dim.description

  - name: pricetype_name
    title: 'Pricetype Name'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_price_type_dim.price_type_type

  - name: pricetype_version
    title: 'Pricetype Version'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_price_type_dim.version_number

  - name: pricetype_start_date
    title: 'Pricetype Effective Start Date'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_price_type_dim.eff_start_date_date

  - name: pricetype_end_date
    title: 'Pricetype Effective End Date'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_price_type_dim.eff_end_date_date

  - name: workbook_name
    title: 'Workbook Name'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_workbook_dim.workbook_name

  - name: workbook_id_num
    title: 'Workbook #'
    type: field_filter
    explore: gp_pt_mapping_explore
    allow_multiple_values: true
    field: mn_gp_workbook_dim.workbook_id_num


  elements:
    - title: GP Workbook Mapping
      name: GP Workbook Mapping
      explore: gp_pt_mapping_explore
      type: table
      fields:
      - mn_gp_pt_mapping_dim.display_name
      - mn_gp_pt_mapping_dim.name
      - mn_gp_pt_mapping_dim.workbook_data_type
      - mn_gp_price_type_dim.price_type_type
      - mn_gp_price_type_dim.description
      - mn_gp_price_type_dim.version_number
      - mn_gp_price_type_dim.eff_start_date_date
      - mn_gp_price_type_dim.eff_end_date_date

      listen:
        modeln_field_name: mn_gp_pt_mapping_dim.display_name
        workbook_data_type: mn_gp_pt_mapping_dim.workbook_data_type
        pricetype_name: mn_gp_price_type_dim.price_type_type
        pricetype_description: mn_gp_price_type_dim.description
        pricetype_version: mn_gp_price_type_dim.version_number
        pricetype_start_date: mn_gp_price_type_dim.eff_start_date_date
        pricetype_end_date: mn_gp_price_type_dim.eff_end_date_date
        workbook_name: mn_gp_workbook_dim.workbook_name
        workbook_id_num: mn_gp_workbook_dim.workbook_id_num

      limit: 500
      column_limit: 50
      height: 13
      width: 23
