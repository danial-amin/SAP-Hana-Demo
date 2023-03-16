- dashboard: modified_master
  title: Modified Master
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 1 hour
  preferred_slug: PuckFMUX1d64RWXfDuBF2i
  elements:
  - title: Sales Footprint
    name: Sales Footprint
    model: sap
    explore: sales
    type: looker_geo_choropleth
    fields: [sales.countryname, sales.count]
    sorts: [sales.count desc 0]
    limit: 500
    map: world
    map_projection: ''
    show_view_names: true
    quantize_colors: true
    show_antarctica: false
    colors: ["#f2cc8f", "#e07a5f", "#540b0e"]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    map_value_colors: ["#f2cc8f", "#e07a5f", "#3d405b"]
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    series_types: {}
    map_scale_indicator: 'off'
    listen: {}
    row: 6
    col: 11
    width: 13
    height: 7
  - title: Sales and Profit by Region
    name: Sales and Profit by Region
    model: sap
    explore: sales
    type: looker_column
    fields: [sales.countryname, gross_profit_lc, sales_lc]
    filters:
      sales.fiscal_year: ''
    sorts: [gross_profit_lc desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Gross Profit (LC),
        based_on: sales.gross_profit_lc, _kind_hint: measure, measure: gross_profit_lc,
        type: sum, _type_hint: number}, {category: measure, expression: '', label: Sales
          (LC), based_on: sales.net_sales_amount_lc, _kind_hint: measure, measure: sales_lc,
        type: sum, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    y_axes: [{label: Amount, orientation: left, series: [{axisId: sum_of_gross_profit_lc,
            id: sum_of_gross_profit_lc, name: Sum of Gross Profit Lc}, {axisId: sum_of_net_sales_amount_lc,
            id: sum_of_net_sales_amount_lc, name: Sum of Net Sales Amount Lc}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Countries
    x_axis_zoom: true
    y_axis_zoom: true
    colors: ["#f2cc8f", "#e07a5f", "#540b0e"]
    label_value_format: '#,##0.0,," M"'
    series_types: {}
    series_labels: {}
    reference_lines: []
    trend_lines: []
    map: world
    map_projection: ''
    show_antarctica: false
    quantize_colors: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    map_value_colors: ["#f2cc8f", "#e07a5f", "#3d405b"]
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    map_scale_indicator: 'off'
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 6
    col: 0
    width: 11
    height: 7
  - title: Sales
    name: Sales
    model: sap
    explore: sales
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [sum_of_gross_profit_lc, sum_of_net_sales_amount_lc]
    limit: 500
    dynamic_fields: [{measure: sum_of_gross_profit_lc, based_on: sales.gross_profit_lc,
        expression: '', label: Sum of Gross Profit Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_net_sales_amount_lc, based_on: sales.net_sales_amount_lc,
        expression: '', label: Sum of Net Sales Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: [sum_of_gross_profit_lc]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 6
    arm_weight: 22
    spinner_length: 149
    spinner_weight: 25
    target_length: 15
    target_gap: 10
    target_weight: 25
    range_min: 0
    range_max: 30000000
    value_label_type: value
    value_label_font: 12
    value_formatting: $#,##0.00,," M"
    value_label_override: Sales
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 6
    target_label_override: ''
    target_value_override: '25000000'
    target_value_format: '#,##0.00,," M"'
    label_font_size: 0
    range_formatting: '#,##0.00,," M"'
    spinner_type: spinner
    fill_color: "#3EB0D5"
    background_color: "#E9F3D1"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#173589", "#3EB0D5", "#1E0030", "#B4DED2", "#1864B4", "#E9F3D1",
      "#2693D1", "#12165C", "#72C5D4", "#184EA0", "#D2EAD1", "#1A81CE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '$ #,##0.00,," M"'
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    listen: {}
    row: 1
    col: 0
    width: 6
    height: 5
  - title: Gross Profit Margin
    name: Gross Profit Margin
    model: sap
    explore: sales
    type: single_value
    fields: [sum_of_gross_profit_lc, sum_of_net_sales_amount_lc]
    sorts: [sum_of_gross_profit_lc]
    limit: 500
    dynamic_fields: [{measure: sum_of_gross_profit_lc, based_on: sales.gross_profit_lc,
        expression: '', label: Sum of Gross Profit Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_net_sales_amount_lc, based_on: sales.net_sales_amount_lc,
        expression: '', label: Sum of Net Sales Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, expression: "${sum_of_gross_profit_lc}/${sum_of_net_sales_amount_lc}",
        label: Profit Margin, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: profit_margin, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#,##0.00%"
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sum_of_net_sales_amount_lc, sum_of_gross_profit_lc]
    series_types: {}
    listen: {}
    row: 1
    col: 18
    width: 6
    height: 5
  - title: Orders
    name: Orders
    model: sap
    explore: sales
    type: single_value
    fields: [sum_of_gross_profit_lc, sum_of_net_sales_amount_lc, orders]
    sorts: [sum_of_gross_profit_lc]
    limit: 500
    dynamic_fields: [{measure: sum_of_gross_profit_lc, based_on: sales.gross_profit_lc,
        expression: '', label: Sum of Gross Profit Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_net_sales_amount_lc, based_on: sales.net_sales_amount_lc,
        expression: '', label: Sum of Net Sales Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, expression: "${sum_of_gross_profit_lc}/${sum_of_net_sales_amount_lc}",
        label: Profit Margin, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: profit_margin, _type_hint: number},
      {category: measure, expression: !!null '', label: Orders, value_format: !!null '',
        value_format_name: !!null '', based_on: sales.count, _kind_hint: measure,
        measure: orders, type: count, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sum_of_net_sales_amount_lc, sum_of_gross_profit_lc]
    series_types: {}
    listen: {}
    row: 1
    col: 12
    width: 6
    height: 5
  - type: button
    name: button_31
    rich_content_json: '{"text":"Falcon''s Eye","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/1?Item%20Group="}'
    row: 0
    col: 0
    width: 4
    height: 1
  - type: button
    name: button_32
    rich_content_json: '{"text":"Sales","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/1?Item%20Group="}'
    row: 0
    col: 4
    width: 4
    height: 1
  - type: button
    name: button_33
    rich_content_json: '{"text":"Inventory","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/1?Item%20Group="}'
    row: 0
    col: 8
    width: 4
    height: 1
  - type: button
    name: button_34
    rich_content_json: '{"text":"Performance","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/1?Item%20Group="}'
    row: 0
    col: 20
    width: 4
    height: 1
  - type: button
    name: button_35
    rich_content_json: '{"text":"Finance","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/1?Item%20Group="}'
    row: 0
    col: 12
    width: 4
    height: 1
  - type: button
    name: button_36
    rich_content_json: '{"text":"Opportunties","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/1?Item%20Group="}'
    row: 0
    col: 16
    width: 4
    height: 1
  - title: Sales History
    name: Sales History
    model: sap
    explore: sales
    type: looker_area
    fields: [sales.posting_date_date, net_sales, sum_of_gross_profit_lc, sales.countryname]
    pivots: [sales.countryname]
    fill_fields: [sales.posting_date_date]
    sorts: [sales.countryname, sales.posting_date_date desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Net Sales, based_on: sales.net_sales_amount_lc,
        _kind_hint: measure, measure: net_sales, type: sum, _type_hint: number}, {
        measure: sum_of_gross_profit_lc, based_on: sales.gross_profit_lc, expression: '',
        label: Sum of Gross Profit Lc, type: sum, _kind_hint: measure, _type_hint: number}]
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [sum_of_gross_profit_lc]
    hidden_pivots: {}
    listen: {}
    row: 13
    col: 0
    width: 24
    height: 6
  - title: Profit
    name: Profit
    model: sap
    explore: sales
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [sum_of_gross_profit_lc, sum_of_net_sales_amount_lc]
    sorts: [sum_of_gross_profit_lc]
    limit: 500
    dynamic_fields: [{measure: sum_of_gross_profit_lc, based_on: sales.gross_profit_lc,
        expression: '', label: Sum of Gross Profit Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_net_sales_amount_lc, based_on: sales.net_sales_amount_lc,
        expression: '', label: Sum of Net Sales Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 6
    arm_weight: 22
    spinner_length: 149
    spinner_weight: 25
    target_length: 14
    target_gap: 10
    target_weight: 25
    range_min: 0
    range_max: 12000000
    value_label_type: value
    value_label_font: 12
    value_formatting: $#,##0.00,," M"
    value_label_override: Gross Profit
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 5
    target_label_override: ''
    target_value_override: '11000000'
    target_value_format: '#,##0.00,," M"'
    label_font_size: 0
    range_formatting: '#,##0.00,," M"'
    spinner_type: spinner
    fill_color: "#3EB0D5"
    background_color: "#E9F3D1"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#173589", "#3EB0D5", "#1E0030", "#B4DED2", "#1864B4", "#E9F3D1",
      "#2693D1", "#12165C", "#72C5D4", "#184EA0", "#D2EAD1", "#1A81CE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.05
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '$ #,##0.00,," M"'
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    row: 1
    col: 6
    width: 6
    height: 5
