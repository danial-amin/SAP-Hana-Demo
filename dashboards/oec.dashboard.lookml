- dashboard: oec_computers_australia
  title: OEC Computers Australia/New York
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: BQjgDduIsjd7GuP8OwSGDw
  embed_style:
    background_color: "FEFAEO"
    show_title: true
    show_filters_bar: true
  elements:
  - title: Top 5 Most Selling Products
    name: Top 5 Most Selling Products
    model: sap
    explore: sql_runner_query
    type: looker_bar
    fields: [sql_runner_query.item_description, total_committed_items, total_stock_items,
      sql_runner_query.item_is_active]
    filters:
      sql_runner_query.item_is_active: Y
    sorts: [total_committed_items desc]
    limit: 10
    dynamic_fields: [{category: measure, expression: !!null '', label: Total Committed
          Items, value_format: !!null '', value_format_name: !!null '', based_on: sql_runner_query.committed_quantity,
        _kind_hint: measure, measure: total_committed_items, type: sum, _type_hint: number},
      {category: measure, expression: !!null '', label: Total Stock Items, value_format: !!null '',
        value_format_name: !!null '', based_on: sql_runner_query.in_stock_quantity,
        _kind_hint: measure, measure: total_stock_items, type: sum, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: total_committed_items,
            id: total_committed_items, name: Total Committed Items}, {axisId: total_stock_items,
            id: total_stock_items, name: Total Stock Items}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Items
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    font_size: '12'
    series_types: {}
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: [sql_runner_query.item_is_active]
    listen:
      Item Group: sql_runner_query.item_group
    row: 4
    col: 0
    width: 15
    height: 7
  - title: Units in Stock
    name: Units in Stock
    model: sap
    explore: sql_runner_query
    type: single_value
    fields: [sum_of_in_stock_quantity, sum_of_committed_quantity]
    limit: 1
    dynamic_fields: [{measure: sum_of_in_stock_quantity, based_on: sql_runner_query.in_stock_quantity,
        expression: '', label: Sum of In Stock Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_committed_quantity, based_on: sql_runner_query.committed_quantity,
        expression: '', label: Sum of Committed Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
    single_value_title: ''
    value_format: 0.0, "K"
    defaults_version: 1
    series_types: {}
    listen:
      Item Group: sql_runner_query.item_group
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Committed Items
    name: Committed Items
    model: sap
    explore: sql_runner_query
    type: single_value
    fields: [sum_of_in_stock_quantity, sum_of_committed_quantity]
    limit: 1
    dynamic_fields: [{measure: sum_of_in_stock_quantity, based_on: sql_runner_query.in_stock_quantity,
        expression: '', label: Sum of In Stock Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_committed_quantity, based_on: sql_runner_query.committed_quantity,
        expression: '', label: Sum of Committed Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
    single_value_title: ''
    value_format: 0.0, "K"
    defaults_version: 1
    series_types: {}
    hidden_fields: [sum_of_in_stock_quantity]
    listen:
      Item Group: sql_runner_query.item_group
    row: 0
    col: 6
    width: 6
    height: 4
  - title: Stock Distribution
    name: Stock Distribution
    model: sap
    explore: sql_runner_query
    type: looker_pie
    fields: [sql_runner_query.warehouse_location, sum_of_in_stock_quantity]
    sorts: [sql_runner_query.warehouse_location]
    limit: 500
    dynamic_fields: [{measure: sum_of_in_stock_quantity, based_on: sql_runner_query.in_stock_quantity,
        expression: '', label: Sum of In Stock Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}]
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    start_angle: 0
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    series_colors: {}
    series_labels: {}
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
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_pivots: {}
    show_value_labels: true
    font_size: 12
    listen:
      Item Group: sql_runner_query.item_group
    row: 4
    col: 15
    width: 9
    height: 7
  - title: Inventory Value
    name: Inventory Value
    model: sap
    explore: sql_runner_query
    type: single_value
    fields: [sum_of_in_stock_quantity, sum_of_committed_quantity, sum_of_in_stock_inventory_value_lc]
    limit: 1
    dynamic_fields: [{measure: sum_of_in_stock_quantity, based_on: sql_runner_query.in_stock_quantity,
        expression: '', label: Sum of In Stock Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_committed_quantity, based_on: sql_runner_query.committed_quantity,
        expression: '', label: Sum of Committed Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_in_stock_inventory_value_lc, based_on: sql_runner_query.in_stock_inventory_value_lc,
        expression: '', label: Sum of In Stock Inventory Value Lc, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
    single_value_title: ''
    value_format: $#,##0.00,," M"
    defaults_version: 1
    series_types: {}
    hidden_fields: [sum_of_in_stock_quantity, sum_of_committed_quantity]
    listen:
      Item Group: sql_runner_query.item_group
    row: 0
    col: 12
    width: 6
    height: 4
  - title: Manufacturers
    name: Manufacturers
    model: sap
    explore: sql_runner_query
    type: single_value
    fields: [sum_of_in_stock_quantity, sum_of_committed_quantity, sum_of_in_stock_inventory_value_lc,
      count_of_item_manufacturer]
    limit: 1
    dynamic_fields: [{measure: sum_of_in_stock_quantity, based_on: sql_runner_query.in_stock_quantity,
        expression: '', label: Sum of In Stock Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_committed_quantity, based_on: sql_runner_query.committed_quantity,
        expression: '', label: Sum of Committed Quantity, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_in_stock_inventory_value_lc, based_on: sql_runner_query.in_stock_inventory_value_lc,
        expression: '', label: Sum of In Stock Inventory Value Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_item_manufacturer, based_on: sql_runner_query.item_manufacturer,
        expression: '', label: Count of Item Manufacturer, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
    single_value_title: ''
    value_format: ''
    defaults_version: 1
    series_types: {}
    hidden_fields: [sum_of_in_stock_quantity, sum_of_committed_quantity, sum_of_in_stock_inventory_value_lc]
    listen:
      Item Group: sql_runner_query.item_group
    row: 0
    col: 18
    width: 6
    height: 4
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
