- dashboard: performance
  title: Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 54nheRsfCols9kO62Cq85M
  elements:
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
  - title: Purchase Order Life cycle
    name: Purchase Order Life cycle
    model: sap
    explore: po_fct
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [average_of_purchase_order_fulfillment_days, min_of_purchase_order_fulfillment_days,
      max_of_purchase_order_fulfillment_days, basic]
    sorts: [average_of_purchase_order_fulfillment_days desc 0]
    limit: 500
    dynamic_fields: [{measure: average_of_purchase_order_fulfillment_days, based_on: po_fct.purchase_order_fulfillment_days,
        expression: '', label: Average of Purchase Order Fulfillment Days, type: average,
        _kind_hint: measure, _type_hint: number}, {measure: min_of_purchase_order_fulfillment_days,
        based_on: po_fct.purchase_order_fulfillment_days, expression: '', label: Min
          of Purchase Order Fulfillment Days, type: min, _kind_hint: measure, _type_hint: number},
      {measure: max_of_purchase_order_fulfillment_days, based_on: po_fct.purchase_order_fulfillment_days,
        expression: '', label: Max of Purchase Order Fulfillment Days, type: max,
        _kind_hint: measure, _type_hint: number}, {category: dimension, expression: abs(0),
        label: Basic, value_format: !!null '', value_format_name: !!null '', dimension: basic,
        _kind_hint: dimension, _type_hint: number}]
    hidden_fields: [basic]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    title_override_average_of_purchase_order_fulfillment_days: Average Days
    title_placement_average_of_purchase_order_fulfillment_days: above
    value_format_average_of_purchase_order_fulfillment_days: "#,##0.0"
    style_min_of_purchase_order_fulfillment_days: "#1864B4"
    title_override_min_of_purchase_order_fulfillment_days: Minimum Days
    title_placement_min_of_purchase_order_fulfillment_days: above
    style_max_of_purchase_order_fulfillment_days: "#ff7012"
    title_override_max_of_purchase_order_fulfillment_days: Maximum Days
    title_placement_max_of_purchase_order_fulfillment_days: above
    series_types: {}
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
    defaults_version: 0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: false
    x_axis_scale: auto
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    listen: {}
    row: 3
    col: 0
    width: 6
    height: 6
  - title: Sales Order Life cycle
    name: Sales Order Life cycle
    model: sap
    explore: so_fct
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [average_of_order_fulfillment_days, min_of_order_fulfillment_days, max_of_order_fulfillment_days]
    limit: 500
    dynamic_fields: [{measure: average_of_order_fulfillment_days, based_on: so_fct.order_fulfillment_days,
        expression: '', label: Average of Order Fulfillment Days, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: min_of_order_fulfillment_days, based_on: so_fct.order_fulfillment_days,
        expression: '', label: Min of Order Fulfillment Days, type: min, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_order_fulfillment_days, based_on: so_fct.order_fulfillment_days,
        expression: '', label: Max of Order Fulfillment Days, type: max, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: ''
    orientation: auto
    style_average_of_order_fulfillment_days: "#3A4245"
    show_title_average_of_order_fulfillment_days: true
    title_override_average_of_order_fulfillment_days: Average Days
    title_placement_average_of_order_fulfillment_days: above
    value_format_average_of_order_fulfillment_days: "#,##0.0"
    style_min_of_order_fulfillment_days: "#1864B4"
    show_title_min_of_order_fulfillment_days: true
    title_override_min_of_order_fulfillment_days: Minimum Days
    title_placement_min_of_order_fulfillment_days: above
    value_format_min_of_order_fulfillment_days: ''
    show_comparison_min_of_order_fulfillment_days: false
    style_max_of_order_fulfillment_days: "#ff6d3c"
    show_title_max_of_order_fulfillment_days: true
    title_override_max_of_order_fulfillment_days: Maximum Days
    title_placement_max_of_order_fulfillment_days: above
    value_format_max_of_order_fulfillment_days: ''
    show_comparison_max_of_order_fulfillment_days: false
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
    col: 6
    width: 6
    height: 6
  - title: Late Payables
    name: Late Payables
    model: sap
    explore: vendor_aging
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [average_of_number_of_days_outstanding, min_of_number_of_days_outstanding,
      max_of_number_of_days_outstanding]
    limit: 500
    dynamic_fields: [{measure: average_of_number_of_days_outstanding, based_on: vendor_aging.number_of_days_outstanding,
        expression: '', label: Average of Number of Days Outstanding, type: average,
        _kind_hint: measure, _type_hint: number}, {measure: min_of_number_of_days_outstanding,
        based_on: vendor_aging.number_of_days_outstanding, expression: '', label: Min
          of Number of Days Outstanding, type: min, _kind_hint: measure, _type_hint: number},
      {measure: max_of_number_of_days_outstanding, based_on: vendor_aging.number_of_days_outstanding,
        expression: '', label: Max of Number of Days Outstanding, type: max, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_average_of_number_of_days_outstanding: "#000000"
    show_title_average_of_number_of_days_outstanding: true
    title_override_average_of_number_of_days_outstanding: Average Days
    title_placement_average_of_number_of_days_outstanding: above
    value_format_average_of_number_of_days_outstanding: "#,##0.0"
    style_min_of_number_of_days_outstanding: "#1864B4"
    show_title_min_of_number_of_days_outstanding: true
    title_override_min_of_number_of_days_outstanding: Minimum Days
    title_placement_min_of_number_of_days_outstanding: above
    value_format_min_of_number_of_days_outstanding: ''
    show_comparison_min_of_number_of_days_outstanding: false
    style_max_of_number_of_days_outstanding: "#ff7f0d"
    show_title_max_of_number_of_days_outstanding: true
    title_override_max_of_number_of_days_outstanding: Maximum Days
    title_placement_max_of_number_of_days_outstanding: above
    value_format_max_of_number_of_days_outstanding: ''
    show_comparison_max_of_number_of_days_outstanding: false
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 3
    col: 12
    width: 6
    height: 6
  - title: Late Receivables
    name: Late Receivables
    model: sap
    explore: rec_ageing
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [average_of_number_of_days_outstanding, min_of_number_of_days_outstanding,
      max_of_number_of_days_outstanding]
    limit: 500
    dynamic_fields: [{measure: average_of_number_of_days_outstanding, based_on: rec_ageing.number_of_days_outstanding,
        expression: '', label: Average of Number of Days Outstanding, type: average,
        _kind_hint: measure, _type_hint: number}, {measure: min_of_number_of_days_outstanding,
        based_on: rec_ageing.number_of_days_outstanding, expression: '', label: Min
          of Number of Days Outstanding, type: min, _kind_hint: measure, _type_hint: number},
      {measure: max_of_number_of_days_outstanding, based_on: rec_ageing.number_of_days_outstanding,
        expression: '', label: Max of Number of Days Outstanding, type: max, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_average_of_number_of_days_outstanding: "#3A4245"
    show_title_average_of_number_of_days_outstanding: true
    title_override_average_of_number_of_days_outstanding: Average Days
    title_placement_average_of_number_of_days_outstanding: above
    value_format_average_of_number_of_days_outstanding: '0.0'
    style_min_of_number_of_days_outstanding: "#1864B4"
    show_title_min_of_number_of_days_outstanding: true
    title_override_min_of_number_of_days_outstanding: Minimum Days
    title_placement_min_of_number_of_days_outstanding: above
    value_format_min_of_number_of_days_outstanding: ''
    show_comparison_min_of_number_of_days_outstanding: false
    style_max_of_number_of_days_outstanding: "#ffb10b"
    show_title_max_of_number_of_days_outstanding: true
    title_override_max_of_number_of_days_outstanding: Maximum Days
    title_placement_max_of_number_of_days_outstanding: above
    value_format_max_of_number_of_days_outstanding: ''
    show_comparison_max_of_number_of_days_outstanding: false
    comparison_show_label_min_of_number_of_days_outstanding: false
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 3
    col: 18
    width: 6
    height: 6
  - title: Top 05 Products by GP
    name: Top 05 Products by GP
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
    row: 9
    col: 0
    width: 12
    height: 9
  - title: Top 05 Products by Quantity
    name: Top 05 Products by Quantity
    model: sap
    explore: sales_items_list
    type: looker_bar
    fields: [sales_items_list.itemname, sum_of_quantity]
    sorts: [sum_of_quantity desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_quantity, based_on: sales_items_list.quantity,
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
    y_axes: [{label: Quantity, orientation: bottom, series: [{axisId: sum_of_quantity,
            id: sum_of_quantity, name: Sum of Quantity}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Product
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 9
    col: 12
    width: 12
    height: 9
  - title: Top 05 Late Payables
    name: Top 05 Late Payables
    model: sap
    explore: vendor_aging
    type: looker_bar
    fields: [sum_of_aging_balance_due_lc, ageing, vendor_aging.business_partner_name]
    pivots: [ageing]
    sorts: [ageing, sum_of_aging_balance_due_lc desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Sum of Aging Balance
          Due Lc, value_format: 0.##;-0.##, value_format_name: __custom, based_on: vendor_aging.aging_balance_due_lc,
        _kind_hint: measure, measure: sum_of_aging_balance_due_lc, type: sum, _type_hint: number},
      {category: dimension, description: '', label: Ageing, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: ageing,
        args: [vendor_aging.number_of_days_outstanding, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: '30', filter: "<30"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: '60', filter: "(30,60]"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: '90', filter: "(60,90]"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: ">90", filter: ">90"}], !!null ''], _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, expression: "-${sum_of_aging_balance_due_lc}",
        label: Amount to Pay, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: amount_to_pay, _type_hint: number}]
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: b88b6581-484a-4f48-b65b-6631648f867e
      options:
        steps: 5
    y_axes: [{label: Ageing Balance, orientation: bottom, series: [{axisId: sum_of_aging_balance_due_lc,
            id: sum_of_aging_balance_due_lc, name: Sum of Aging Balance Due Lc}],
        showLabels: true, showValues: true, valueFormat: '#,##0.0,"K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Vendor
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: '#,##0.0,"K"'
    series_types: {}
    series_colors: {}
    defaults_version: 1
    hidden_fields: []
    hidden_pivots:
      ">90":
        measure_names:
        - sum_of_aging_balance_due_lc
    listen: {}
    row: 18
    col: 0
    width: 12
    height: 8
  - title: Top 05 Late Receiveables
    name: Top 05 Late Receiveables
    model: sap
    explore: rec_ageing
    type: looker_bar
    fields: [sum_of_aging_balance_due_lc, rec_ageing.business_partner_name]
    sorts: [sum_of_aging_balance_due_lc desc 0]
    limit: 500
    dynamic_fields: [{measure: sum_of_aging_balance_due_lc, based_on: rec_ageing.aging_balance_due_lc,
        expression: '', label: Sum of Aging Balance Due Lc, type: sum, _kind_hint: measure,
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
    y_axes: [{label: Ageing Balance, orientation: bottom, series: [{axisId: sum_of_aging_balance_due_lc,
            id: sum_of_aging_balance_due_lc, name: Sum of Aging Balance Due Lc}],
        showLabels: true, showValues: true, valueFormat: '#,##0,"K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Customer
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: '#,##0.0,"K"'
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 8
  - title: Order Status
    name: Order Status
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
    row: 26
    col: 12
    width: 12
    height: 10
  - title: Budget Status
    name: Budget Status
    model: sap
    explore: budget_analysis
    type: looker_pie
    fields: [budget_analysis.parent_account_name, sum_of_monthly_actual_amount_lc,
      sum_of_monthly_budget_amount_lc]
    sorts: [sum_of_monthly_actual_amount_lc desc]
    limit: 500
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
    hidden_fields: [sum_of_monthly_actual_amount_lc]
    listen: {}
    row: 26
    col: 0
    width: 12
    height: 10
