- dashboard: sales
  title: Sales
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 06KGlOFaWSOI2RkzvRlbqV
  elements:
  - title: Sales
    name: Sales
    model: sap
    explore: salesorderdetails
    type: single_value
    fields: [salesorderdetails.sum_sales]
    limit: 500
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
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 3
    col: 0
    width: 6
    height: 5
  - title: Profit
    name: Profit
    model: sap
    explore: salesorderdetails
    type: single_value
    fields: [salesorderdetails.sum_profits, salesorderdetails.sum_sales]
    limit: 500
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
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 3
    col: 6
    width: 6
    height: 5
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
  - title: Sales and Profit by Region
    name: Sales and Profit by Region
    model: sap
    explore: salesorderdetails
    type: looker_column
    fields: [salesorderdetails.sum_profits, salesorderdetails.sum_sales, salesorderdetails.country_name]
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: salesorderdetails.sum_profits,
            id: salesorderdetails.sum_profits, name: Sum Profits}, {axisId: salesorderdetails.sum_sales,
            id: salesorderdetails.sum_sales, name: Sum Sales}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0.0,," M"'
    series_types: {}
    series_colors:
      salesorderdetails.sum_profits: "#B4DED2"
      salesorderdetails.sum_sales: "#1A81CE"
    series_labels: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 8
    col: 0
    width: 12
    height: 6
  - title: Orders
    name: Orders
    model: sap
    explore: salesorderdetails
    type: single_value
    fields: [salesorderdetails.count]
    limit: 500
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
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
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
    sorts: [salesorderdetails.count desc 0]
    limit: 500
    map: world
    map_projection: ''
    show_view_names: true
    quantize_colors: true
    colors: ["#f2cc8f", "#e07a5f", "#540b0e"]
    series_types: {}
    defaults_version: 1
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 8
    col: 12
    width: 12
    height: 6
  - title: Sales History
    name: Sales History
    model: sap
    explore: salesorderdetails
    type: looker_area
    fields: [salesorderdetails.country_name, salesorderdetails.sum_sales, sum_of_gross_profit_lc,
      salesorderdetails.posting_date_quarter]
    pivots: [salesorderdetails.country_name]
    fill_fields: [salesorderdetails.posting_date_quarter]
    sorts: [salesorderdetails.country_name, salesorderdetails.posting_date_quarter
        desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_gross_profit_lc, based_on: salesorderdetails.gross_profit_lc,
        expression: '', label: Sum of Gross Profit Lc, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [sum_of_gross_profit_lc]
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 21
    col: 0
    width: 24
    height: 5
  - title: Gross Profit Margin
    name: Gross Profit Margin
    model: sap
    explore: salesorderdetails
    type: single_value
    fields: [salesorderdetails.gross_profit_margin, salesorderdetails.sum_sales]
    limit: 500
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
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 3
    col: 18
    width: 6
    height: 5
  - title: Monthly Orders Trend
    name: Monthly Orders Trend
    model: sap
    explore: salesorderdetails
    type: looker_line
    fields: [salesorderdetails.count, month_of_the_year, salesorderdetails.posting_date_year]
    pivots: [salesorderdetails.posting_date_year]
    fill_fields: [salesorderdetails.posting_date_year]
    filters:
      salesorderdetails.posting_date_year: 2016/01/01 to 2021/12/31
    sorts: [salesorderdetails.posting_date_year, salesorderdetails.count desc 0]
    limit: 500
    dynamic_fields: [{category: dimension, expression: 'extract_months(${salesorderdetails.posting_date_date})',
        label: Month of the Year, value_format: !!null '', value_format_name: !!null '',
        dimension: month_of_the_year, _kind_hint: dimension, _type_hint: number}]
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
    y_axes: [{label: Orders, orientation: left, series: [{axisId: salesorderdetails.count,
            id: 2016 - salesorderdetails.count, name: '2016'}, {axisId: salesorderdetails.count,
            id: 2017 - salesorderdetails.count, name: '2017'}, {axisId: salesorderdetails.count,
            id: 2018 - salesorderdetails.count, name: '2018'}, {axisId: salesorderdetails.count,
            id: 2019 - salesorderdetails.count, name: '2019'}, {axisId: salesorderdetails.count,
            id: 2020 - salesorderdetails.count, name: '2020'}, {axisId: salesorderdetails.count,
            id: 2021 - salesorderdetails.count, name: '2021'}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 26
    col: 0
    width: 24
    height: 6
  - title: Most Profitable Products
    name: Most Profitable Products
    model: sap
    explore: salesorderdetails
    type: looker_bar
    fields: [salesorderdetails.item_description, salesorderdetails.sum_profits]
    filters:
      salesorderdetails.sum_sales: not 0
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
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 14
    col: 0
    width: 12
    height: 7
  - title: Least Profitable Products
    name: Least Profitable Products
    model: sap
    explore: salesorderdetails
    type: looker_bar
    fields: [salesorderdetails.sum_profits, sum_of_quantity, salesorderdetails.item_description]
    filters:
      salesorderdetails.item_description: "-%MRP%"
    sorts: [salesorderdetails.sum_profits desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_quantity, based_on: salesorderdetails.quantity,
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
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: salesorderdetails.sum_profits,
            id: salesorderdetails.sum_profits, name: Sum Profits}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '5'
    label_value_format: ''
    series_types: {}
    series_colors:
      salesorderdetails.sum_profits: "#72C5D4"
    defaults_version: 1
    hidden_fields: [sum_of_quantity]
    listen:
      Posting Date Date: salesorderdetails.posting_date_date
    row: 14
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
    explore: salesorderdetails
    listens_to_filters: []
    field: salesorderdetails.posting_date_date
