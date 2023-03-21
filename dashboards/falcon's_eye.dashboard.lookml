- dashboard: falcons_eye
  title: Falcon's Eye
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: KZrcNXPabHcyLzUBqt4ib7
  elements:
  - title: Sales Footprint
    name: Sales Footprint
    model: sap
    explore: sales
    type: looker_map
    fields: [sales.countryname, sales.count]
    sorts: [sales.count desc 0]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: metric_imperial
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_value_colors: ["#f2cc8f", "#e07a5f", "#3d405b"]
    map: world
    map_projection: ''
    quantize_colors: true
    show_antarctica: false
    colors: ["#f2cc8f", "#e07a5f", "#540b0e"]
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    series_types: {}
    listen:
      Posting Date Date: sales.posting_date_date
      Region: sales.countryname
    row: 6
    col: 12
    width: 12
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
        _type_hint: number,drill_fields:[*details]}, {measure: sum_of_net_sales_amount_lc, based_on: sales.net_sales_amount_lc,
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
    listen:
      Posting Date Date: sales.posting_date_date
      Region: sales.countryname
    row: 1
    col: 0
    width: 6
    height: 5
  - title: Gross Profit Margin
    name: Gross Profit Margin
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
        _type_hint: number}, {category: table_calculation, expression: "${sum_of_gross_profit_lc}/${sum_of_net_sales_amount_lc}",
        label: Profit Margin, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: profit_margin, _type_hint: number}]
    hidden_fields: [sum_of_net_sales_amount_lc, sum_of_gross_profit_lc]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: 0
    value_label_type: value
    value_label_font: 12
    value_formatting: "#,##0.00%"
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 3
    target_value_override: '0.7'
    target_value_format: "#,##0%"
    label_font_size: 0
    spinner_type: spinner
    fill_color: "#3EB0D5"
    background_color: "#E9F3D1"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
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
    value_format: "#,##0.00%"
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
    listen:
      Posting Date Date: sales.posting_date_date
      Region: sales.countryname
    row: 1
    col: 12
    width: 6
    height: 5
  - title: Orders
    name: Orders
    model: sap
    explore: sales
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
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
    hidden_fields: [sum_of_net_sales_amount_lc, sum_of_gross_profit_lc]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: 0
    range_max: 7000
    value_label_type: value
    value_label_font: 12
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 5
    target_value_override: '6000'
    label_font_size: 0
    spinner_type: spinner
    fill_color: "#3EB0D5"
    background_color: "#E9F3D1"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.02
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
    listen:
      Posting Date Date: sales.posting_date_date
      Region: sales.countryname
    row: 1
    col: 6
    width: 6
    height: 5
  - type: button
    name: button_515
    rich_content_json: '{"text":"Falcon''s Eye","description":"","newTab":false,"alignment":"center","size":"medium","style":"OUTLINED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/37?Posting+Date+Date="}'
    row: 0
    col: 0
    width: 4
    height: 1
  - type: button
    name: button_516
    rich_content_json: '{"text":"Sales","description":"","newTab":false,"alignment":"center","size":"medium","style":"OUTLINED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/38?Posting+Date+Date="}'
    row: 0
    col: 4
    width: 4
    height: 1
  - type: button
    name: button_517
    rich_content_json: '{"text":"Inventory","description":"","newTab":false,"alignment":"center","size":"medium","style":"OUTLINED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/6?Item+Group="}'
    row: 0
    col: 8
    width: 4
    height: 1
  - type: button
    name: button_518
    rich_content_json: '{"text":"Performance","description":"","newTab":false,"alignment":"center","size":"medium","style":"OUTLINED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/11"}'
    row: 0
    col: 20
    width: 4
    height: 1
  - type: button
    name: button_519
    rich_content_json: '{"text":"Finance","description":"","newTab":false,"alignment":"center","size":"medium","style":"OUTLINED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/9?Period+Start+Month=&Period+End+Month=&Year="}'
    row: 0
    col: 12
    width: 4
    height: 1
  - type: button
    name: button_520
    rich_content_json: '{"text":"Opportunties","description":"","newTab":false,"alignment":"center","size":"medium","style":"OUTLINED","color":"#1A73E8","href":"https://abacusbi.cloud.looker.com/dashboards/10?Opportunity%20Start%20Date%20Date=&Opportunity%20Status=L,O,W"}'
    row: 0
    col: 16
    width: 4
    height: 1
  - title: Assets
    name: Assets
    model: sap
    explore: accounts
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [basic, sum_of_amount_lc]
    filters:
      accounts.period_start2_month: ''
      accounts.period_end2_month: ''
      accounts.period_start2_year: ''
    sorts: [sum_of_amount_lc desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, expression: abs(0), label: Basic, value_format: !!null '',
        value_format_name: !!null '', dimension: basic, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: "${accounts.amount_lc}>0", label: Sum of Amount
          Lc, based_on: accounts.amount_lc, filter_expression: "${accounts.amount_lc}>0",
        _kind_hint: measure, measure: sum_of_amount_lc, type: sum, _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 0.5
    arm_weight: 48
    spinner_length: 152
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: 0
    range_max: 40000000
    value_label_type: value
    value_label_font: 12
    value_formatting: $#,##0.00,," M"
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 7
    target_value_override: '35000000'
    target_value_format: $#,##0.00,," M"
    label_font_size: 0
    spinner_type: spinner
    fill_color: "#72C5D4"
    background_color: "#E9F3D1"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.03
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
    show_null_points: true
    defaults_version: 0
    series_types: {}
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
    row: 1
    col: 18
    width: 6
    height: 5
  - title: Most Profitable Products
    name: Most Profitable Products
    model: sap
    explore: sales_items_list
    type: looker_bar
    fields: [sales_items_list.itemname, sum_of_grossprofit, sum_of_quantity]
    sorts: [sum_of_grossprofit desc 0]
    limit: 500
    dynamic_fields: [{measure: sum_of_grossprofit, based_on: sales_items_list.grossprofit,
        expression: '', label: Sum of Grossprofit, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_quantity, based_on: sales_items_list.quantity,
        expression: '', label: Sum of Quantity, type: sum, _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: sum_of_grossprofit,
            id: sum_of_grossprofit, name: Sum of Grossprofit}], showLabels: true,
        showValues: true, valueFormat: '#,##0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Products
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: '#,##0.0,"K"'
    series_types: {}
    x_axis_datetime_label: ''
    defaults_version: 1
    hidden_fields: [sum_of_quantity]
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 7
  - title: Opportunities in Pipeline
    name: Opportunities in Pipeline
    model: sap
    explore: opportunities
    type: looker_funnel
    fields: [lead_grouping, opportunities.closing_percentage, opportunities.latest_stage_name,
      opportunities.count, potential_amount, gross_profit, sum_of_weighted_amount_lc]
    filters:
      opportunities.opportunity_start_date_date: ''
      opportunities.opportunity_status: L,O,W
    sorts: [opportunities.closing_percentage desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'round((${gross_profit}*(${opportunities.closing_percentage}/100))/${sum_of_weighted_amount_lc}*100,2)',
        label: Potential Profit Margin, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: potential_profit_margin, _type_hint: number},
      {category: dimension, description: '', label: Lead Grouping, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: lead_grouping,
        args: [opportunities.closing_percentage, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Cold Lead, filter: "<25"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Warm Lead, filter: "[25,50]"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Hot Lead, filter: ">50"}], !!null ''], _kind_hint: dimension,
        _type_hint: string}, {category: measure, expression: '', label: Potential
          Amount, based_on: opportunities.potential_amount_lc, _kind_hint: measure,
        measure: potential_amount, type: sum, _type_hint: number}, {category: measure,
        expression: '', label: Gross Profit, based_on: opportunities.gross_profit_lc,
        _kind_hint: measure, measure: gross_profit, type: sum, _type_hint: number},
      {measure: sum_of_weighted_amount_lc, based_on: opportunities.weighted_amount_lc,
        expression: '', label: Sum of Weighted Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}]
    leftAxisLabelVisible: true
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: Potential Profit Margin
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: true
    labelColor: "#6177A5"
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      custom:
        id: 1d3caa21-5c7d-7d77-2be2-d0d51b5244d9
        label: Custom
        type: continuous
        stops:
        - color: "#fc775c"
          offset: 0
        - color: "#fff2f5"
          offset: 50
        - color: "#52bdff"
          offset: 100
      options:
        steps: 5
    isStepped: true
    labelOverlap: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: sum_of_potential_amount_lc,
            id: sum_of_potential_amount_lc, name: Sum of Potential Amount Lc}, {axisId: sum_of_gross_profit_lc,
            id: sum_of_gross_profit_lc, name: Sum of Gross Profit Lc}], showLabels: true,
        showValues: true, valueFormat: '#,##0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    label_value_format: '#,##0,"K"'
    series_types: {}
    point_style: none
    series_labels: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size_main: ''
    style_lead_grouping: "#3A4245"
    show_title_lead_grouping: true
    title_placement_lead_grouping: above
    value_format_lead_grouping: ''
    show_comparison_opportunities.count: true
    comparison_style_opportunities.count: value
    comparison_show_label_opportunities.count: true
    style_sum_of_potential_amount_lc: "#3A4245"
    show_title_sum_of_potential_amount_lc: true
    title_placement_sum_of_potential_amount_lc: above
    value_format_sum_of_potential_amount_lc: ''
    show_comparison_sum_of_potential_amount_lc: false
    style_sum_of_gross_profit_lc: "#3A4245"
    show_title_sum_of_gross_profit_lc: true
    title_placement_sum_of_gross_profit_lc: above
    value_format_sum_of_gross_profit_lc: ''
    show_comparison_sum_of_gross_profit_lc: false
    style_gross_profit_margin: "#3A4245"
    show_title_gross_profit_margin: true
    title_placement_gross_profit_margin: above
    value_format_gross_profit_margin: ''
    show_comparison_gross_profit_margin: false
    style_opportunities.count: "#3A4245"
    show_title_opportunities.count: true
    title_placement_opportunities.count: above
    value_format_opportunities.count: ''
    defaults_version: 1
    hidden_fields: [potential_amount, gross_profit, opportunities.closing_percentage,
      opportunities.count, sum_of_weighted_amount_lc]
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 13
    col: 0
    width: 12
    height: 7
  - title: Order Fullfilment
    name: Order Fullfilment
    model: sap
    explore: on_time_delivery
    type: looker_pie
    fields: [delivery_status, on_time_delivery.count]
    sorts: [on_time_delivery.count desc 0]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: Delivery Status,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: delivery_status, args: [on_time_delivery.delayed_or_advance_days,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Early, filter: "<0"},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: On Time, filter: '0'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Delayed, filter: ">0"}],
          !!null ''], _kind_hint: dimension, _type_hint: string}]
    value_labels: legend
    label_type: labPer
    inner_radius: 50
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
    series_types: {}
    hidden_fields:
    hidden_pivots: {}
    listen: {}
    row: 13
    col: 12
    width: 12
    height: 7
  filters:
  - name: Posting Date Date
    title: Posting Date Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: sap
    explore: sales
    listens_to_filters: []
    field: sales.posting_date_date
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: sap
    explore: sales
    listens_to_filters: []
    field: sales.countryname
