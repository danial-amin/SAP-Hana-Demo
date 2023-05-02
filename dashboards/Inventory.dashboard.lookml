- dashboard: inventory
  title: Inventory
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: YGxWNhhB16BpJqwkkNO7AJ
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 5px; padding: 20px 10px; background: #412399;\
      \ height: 100px; color: #efefef; position: relative;\">\n<nav style=\"font-size:\
      \ 18px;\">\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\"\
      >\n    \n<img style=\"padding: 0px 15px; float: left; height: 65px; width: 100px\"\
      \ src=\"https://storage.googleapis.com/oec-logo/OEC%20(1).png\"/>\n<div style=\"\
      position: absolute; bottom:1; right: 1; font-size: 22px;\">\n    OEC Computers\
      \ Australia\n  </div>\n<a style=\"color: #efefef; padding: 5px 15px; float:\
      \ right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/45\"\
      ><i class=\"fa fa-fw fa-bullseye\"></i>Performance</a>\n\n<a style=\"color:\
      \ #efefef; padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/42?Opportunity+Start+Date+Date=&Opportunity+Status=L%2CO%2CW\"\
      ><i class=\"fa fa-fw fa-bullhorn\"></i>Opportunity</a>\n\n<a style=\"color:\
      \ #efefef; padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/43?Fiscal+Year=\"\
      ><i class=\"fa fa-fw fa-align-left\"></i>Accounts</a>\n\n<a style=\"color: #efefef;\
      \ padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/44?Item+Group=&Fiscal+Year=\"\
      ><i class=\"fa fa-fw fa-shopping-cart\"></i>Inventory</a>\n\n<a style=\"color:\
      \ #efefef; padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/40?Posting+Date+Date=\"\
      ><i class=\"fa fa-fw fa-money\"></i>Sales</a>\n\n<a style=\"color: #efefef;\
      \ padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/46#\"\
      ><i class=\"fa fa-fw fa-eye\"></i>Falcon's Eye</a>\n  </nav>\n  <div style=\"\
      position: absolute; bottom:1; right: 1; font-size: 12px;\">\n    Powered by\
      \ Abacus Cambridge Partners\n  </div>\n\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Outbound Items
    name: Outbound Items
    model: sap
    explore: inventory
    type: single_value
    fields: [inventory.sum_outbound]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1864B4"
    value_format: "#,##0;#,##0;0"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fiscal Year: inventory.fiscal_year
    row: 3
    col: 12
    width: 6
    height: 5
  - title: In Stock Value
    name: In Stock Value
    model: sap
    explore: inventory
    type: single_value
    fields: [inventory.sum_inbound_val, inventory.sum_outbound_val]
    sorts: [inventory.sum_inbound_val desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "-${inventory.sum_outbound_val}+${inventory.sum_inbound_val}",
        label: In Stock Value, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: in_stock_value, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1864B4"
    value_format: $#,##0.00,," M"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [inventory.sum_inbound_val, inventory.sum_outbound_val]
    listen:
      Fiscal Year: inventory.fiscal_year
    row: 3
    col: 18
    width: 6
    height: 5
  - title: In bound Item
    name: In bound Item
    model: sap
    explore: inventory
    type: single_value
    fields: [inventory.sum_inbound]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1864B4"
    value_format: "#,##0;#,##0;0"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Fiscal Year: inventory.fiscal_year
    row: 3
    col: 6
    width: 6
    height: 5
  - title: In Stock Items
    name: In Stock Items
    model: sap
    explore: inventory
    type: single_value
    fields: [inventory.in_stock]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1864B4"
    value_format: "+#,##0;#,##0;0"
    defaults_version: 1
    listen:
      Fiscal Year: inventory.fiscal_year
    row: 3
    col: 0
    width: 6
    height: 5
  - title: Fast Moving Products
    name: Fast Moving Products
    model: sap
    explore: inventory
    type: looker_bar
    fields: [inventory.item_description, inventory.sum_outbound, inventory.sum_outbound_val]
    sorts: [avg_outbound_value desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${inventory.sum_outbound_val}/${inventory.sum_outbound}",
        label: Avg Outbound Value, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_outbound_value, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: avg_outbound_value,
            id: avg_outbound_value, name: Avg Outbound Value}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: $#,##0.00," K"
    series_types: {}
    defaults_version: 1
    hidden_fields: [inventory.sum_outbound, inventory.sum_outbound_val]
    listen:
      Fiscal Year: inventory.fiscal_year
    row: 8
    col: 0
    width: 12
    height: 7
  - title: Slow Moving Products
    name: Slow Moving Products
    model: sap
    explore: inventory
    type: looker_bar
    fields: [inventory.item_description, inventory.sum_outbound, inventory.sum_outbound_val]
    filters:
      inventory.sum_outbound_val: not 0
    sorts: [avg_outbound_value desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${inventory.sum_outbound_val}/${inventory.sum_outbound}",
        label: Avg Outbound Value, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_outbound_value, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: avg_outbound_value,
            id: avg_outbound_value, name: Avg Outbound Value}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '5'
    label_value_format: "$#,##0;#,##0;0"
    series_types: {}
    series_colors:
      avg_outbound_value: "#3EB0D5"
    defaults_version: 1
    hidden_fields: [inventory.sum_outbound, inventory.sum_outbound_val]
    listen:
      Fiscal Year: inventory.fiscal_year
    row: 8
    col: 12
    width: 12
    height: 7
  - title: Historical Overview of Inventory
    name: Historical Overview of Inventory
    model: sap
    explore: inventory
    type: looker_line
    fields: [inventory.posting_date_quarter, inventory.sum_inbound, inventory.sum_outbound]
    fill_fields: [inventory.posting_date_quarter]
    sorts: [inventory.posting_date_quarter desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - field_name: inventory.sum_inbound
        forecast_n: 3
        forecast_interval: month
      - field_name: inventory.sum_outbound
        forecast_n: 3
        forecast_interval: month
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen: {}
    row: 15
    col: 0
    width: 24
    height: 6
  filters:
  - name: Item Group
    title: Item Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: sap
    explore: sql_runner_query
    listens_to_filters: []
    field: sql_runner_query.item_group
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '2007'
      - '2008'
      - '2009'
      - '2010'
      - '2011'
      - '2012'
      - '2013'
      - '2014'
      - '2015'
      - '2016'
      - '2017'
      - '2018'
      - '2019'
      - '2020'
      - '2021'
      - '2022'
    model: sap
    explore: inventory
    listens_to_filters: []
    field: inventory.fiscal_year
