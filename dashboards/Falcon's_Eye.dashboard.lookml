- dashboard: falcons_eye
  title: Falcon's Eye
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5wLUCrgGarCc4i13expkBI
  elements:
  - title: Sales
    name: Sales
    model: sap
    explore: salesorderdetails
    type: single_value
    fields: [salesorderdetails.sum_sales]
    filters:
      salesorderdetails.posting_date_date: ''
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
    value_format: $#,##0.00,," M"
    defaults_version: 1
    listen: {}
    row: 3
    col: 0
    width: 6
    height: 5
  - title: Profits
    name: Profits
    model: sap
    explore: salesorderdetails
    type: single_value
    fields: [salesorderdetails.sum_profits, salesorderdetails.sum_sales]
    filters:
      salesorderdetails.posting_date_date: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0.00,," M"
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
    hidden_fields: []
    series_types: {}
    listen: {}
    row: 3
    col: 6
    width: 6
    height: 5
  - title: Profit Margin
    name: Profit Margin
    model: sap
    explore: salesorderdetails
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [salesorderdetails.gross_profit_margin, salesorderdetails.sum_sales]
    filters:
      salesorderdetails.posting_date_date: ''
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 1
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Grass Profit Margin
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
    listen: {}
    row: 3
    col: 18
    width: 6
    height: 5
  - title: Orders
    name: Orders
    model: sap
    explore: salesorderdetails
    type: single_value
    fields: [salesorderdetails.count]
    filters:
      salesorderdetails.posting_date_date: ''
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
    defaults_version: 1
    listen: {}
    row: 3
    col: 12
    width: 6
    height: 5
  - title: Sales Footprint
    name: Sales Footprint
    model: sap
    explore: salesorderdetails
    type: looker_geo_choropleth
    fields: [salesorderdetails.country_name, salesorderdetails.count]
    filters:
      salesorderdetails.posting_date_date: ''
    sorts: [salesorderdetails.count desc 0]
    limit: 500
    column_limit: 50
    map: world
    map_projection: ''
    show_view_names: true
    quantize_colors: true
    colors: ["#f2cc8f", "#e07a5f", "#540b0e"]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 8
    col: 12
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 5px; padding: 20px 10px; background: #412399;\
      \ height: 100px; color: #efefef; position: relative;\">\n\n  <nav style=\"font-size:\
      \ 18px;\">\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\"\
      >\n    \n  \n\n    <img style=\"padding: 0px 15px; float: left; height: 65px;\
      \ width: 100px\" src=\"https://storage.googleapis.com/oec-logo/OEC%20(1).png\"\
      />\n<div style=\"position: absolute; bottom:1; right: 1; font-size: 22px;\"\
      >\n    OEC Computers Australia\n  </div>\n\n\n    <a style=\"color: #efefef;\
      \ padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/45\"\
      ><i class=\"fa fa-fw fa-bullseye\"></i>Performance</a>\n\n    <a style=\"color:\
      \ #efefef; padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/42?Opportunity+Start+Date+Date=&Opportunity+Status=L%2CO%2CW\"\
      ><i class=\"fa fa-fw fa-bullhorn\"></i>Opportunity</a>\n\n    <a style=\"color:\
      \ #efefef; padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/43?Fiscal+Year=\"\
      ><i class=\"fa fa-fw fa-align-left\"></i>Accounts</a>\n\n    <a style=\"color:\
      \ #efefef; padding: 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/44?Item+Group=&Fiscal+Year=\"\
      ><i class=\"fa fa-fw fa-shopping-cart\"></i>Inventory</a>\n\n    <a style=\"\
      color: #efefef; padding: 5px 15px; float: right; line-height: 40px;\" href=\"\
      https://abacusbi.cloud.looker.com/dashboards/40?Posting+Date+Date=\"><i class=\"\
      fa fa-fw fa-money\"></i>Sales</a>\n\n    <a style=\"color: #efefef; padding:\
      \ 5px 15px; float: right; line-height: 40px;\" href=\"https://abacusbi.cloud.looker.com/dashboards/46#\"\
      ><i class=\"fa fa-fw fa-eye\"></i>Falcon's Eye</a>\n  </nav>\n  <div style=\"\
      position: absolute; bottom:1; right: 1; font-size: 12px;\">\n    Powered by\
      \ Abacus Cambridge Partners\n  </div>\n\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Top 05 Selling Products
    name: Top 05 Selling Products
    model: sap
    explore: salesorderdetails
    type: looker_bar
    fields: [salesorderdetails.item_description, salesorderdetails.sum_profits]
    filters:
      salesorderdetails.sum_sales: not 0
      salesorderdetails.posting_date_date: ''
    sorts: [salesorderdetails.sum_profits desc 0]
    limit: 500
    column_limit: 50
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: salesorderdetails.sum_profits,
            id: salesorderdetails.sum_profits, name: Sum Profits}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: '#,##0.0,"K"'
    series_types: {}
    series_colors:
      salesorderdetails.sum_profits: "#1A81CE"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 8
    col: 0
    width: 12
    height: 8
  - title: Potential Opportunties
    name: Potential Opportunties
    model: sap
    explore: opportunities
    type: looker_funnel
    fields: [lead_grouping, opportunities.latest_stage_name, opportunities.max_closing,
      opportunities.potential_gross_profit]
    filters:
      opportunities.opportunity_start_date_date: ''
      opportunities.opportunity_status: L,O,W
    sorts: [opportunities.max_closing desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Lead Grouping,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: lead_grouping, args: [opportunities.closing_percentage, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Cold Lead, filter: "<=25"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Warm Lead, filter: "(25,50]"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Hot Lead, filter: ">50"}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: Potential Profit Margin
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      custom:
        id: 95bbb00d-da1b-a941-fc25-e9675cb2b6f5
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
        reverse: false
    isStepped: true
    labelOverlap: false
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
    hidden_pivots: {}
    series_types: {}
    hidden_fields: [opportunities.max_closing]
    listen: {}
    row: 16
    col: 7
    width: 10
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
    row: 16
    col: 17
    width: 7
    height: 7
  - title: Budget
    name: Budget
    model: sap
    explore: budget_analysis
    type: looker_pie
    fields: [budget_analysis.parent_account_name, budget_analysis.sum_amount_lc]
    sorts: [budget_analysis.sum_amount_lc desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_monthly_actual_amount_lc, based_on: budget_analysis.monthly_actual_amount_lc,
        expression: '', label: Sum of Monthly Actual Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_monthly_budget_amount_lc, based_on: budget_analysis.monthly_budget_amount_lc,
        expression: '', label: Sum of Monthly Budget Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}]
    filter_expression: "${budget_analysis.monthly_budget_amount_lc}>0"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 16
    col: 0
    width: 7
    height: 7
