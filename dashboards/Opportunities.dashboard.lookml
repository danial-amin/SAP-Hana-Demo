- dashboard: opportunities
  title: Opportunities
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: PlyHEcMyEDvVBaxDnINXV2
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
  - title: Potential Value
    name: Potential Value
    model: sap
    explore: opportunities
    type: looker_funnel
    fields: [lead_grouping, opportunities.latest_stage_name, max_of_closing_percentage,
      opportunities.sum_value]
    filters: {}
    sorts: [max_of_closing_percentage desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: max_of_closing_percentage, based_on: opportunities.closing_percentage,
        expression: '', label: Max of Closing Percentage, type: max, _kind_hint: measure,
        _type_hint: number}, {category: dimension, description: '', label: Lead Grouping,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: lead_grouping, args: [opportunities.closing_percentage, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Cold Lead, filter: "<=25"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Warm Lead, filter: "(25,50]"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Hot Lead, filter: ">50"}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: Potential Value
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
    hidden_fields: [max_of_closing_percentage]
    listen:
      Opportunity Start Date Date: opportunities.opportunity_start_date_date
      Opportunity Status: opportunities.opportunity_status
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Potential Profit Margin
    name: Potential Profit Margin
    model: sap
    explore: opportunities
    type: looker_funnel
    fields: [lead_grouping, opportunities.latest_stage_name, opportunities.max_closing,
      opportunities.potential_gross_profit]
    filters: {}
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
    listen:
      Opportunity Start Date Date: opportunities.opportunity_start_date_date
      Opportunity Status: opportunities.opportunity_status
    row: 3
    col: 8
    width: 8
    height: 6
  - title: Lead Count
    name: Lead Count
    model: sap
    explore: opportunities
    type: looker_funnel
    fields: [lead_grouping, opportunities.latest_stage_name, opportunities.max_closing,
      opportunities.potential_gross_profit, opportunities.count]
    filters: {}
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
    rightAxisLabel: Leads
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
    hidden_fields: [opportunities.max_closing, opportunities.potential_gross_profit]
    listen:
      Opportunity Start Date Date: opportunities.opportunity_start_date_date
      Opportunity Status: opportunities.opportunity_status
    row: 3
    col: 16
    width: 8
    height: 6
  - title: Top 05 Salesman
    name: Top 05 Salesman
    model: sap
    explore: opportunities
    type: looker_bar
    fields: [opportunities.sales_employee_or_buyer_name, opportunities.potential_gross_profit]
    filters: {}
    sorts: [opportunities.potential_gross_profit desc 0]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: opportunities.potential_gross_profit,
            id: opportunities.potential_gross_profit, name: Potential Gross Profit}],
        showLabels: false, showValues: false, valueFormat: '##.00 "%"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Sales Person
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '##.00 "%"'
    series_types: {}
    x_axis_datetime_label: ''
    defaults_version: 1
    hidden_fields: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Opportunity Start Date Date: opportunities.opportunity_start_date_date
      Opportunity Status: opportunities.opportunity_status
    row: 9
    col: 0
    width: 13
    height: 7
  - title: Top 05 Business Partners
    name: Top 05 Business Partners
    model: sap
    explore: opportunities
    type: looker_bar
    fields: [sum_of_potential_amount_lc, sum_of_gross_profit_lc, opportunities.business_partner_name]
    filters: {}
    sorts: [gross_profit_margin desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_potential_amount_lc, based_on: opportunities.potential_amount_lc,
        expression: '', label: Sum of Potential Amount Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_gross_profit_lc, based_on: opportunities.gross_profit_lc,
        expression: '', label: Sum of Gross Profit Lc, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, expression: "${sum_of_gross_profit_lc}/${sum_of_potential_amount_lc}",
        label: Gross Profit Margin, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: gross_profit_margin, _type_hint: number}]
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
    color_application: undefined
    y_axes: [{label: '', orientation: bottom, series: [{axisId: gross_profit_margin,
            id: gross_profit_margin, name: Gross Profit Margin}], showLabels: true,
        showValues: false, valueFormat: "#,##0%", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Business Partners
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    font_size: '12'
    label_value_format: "#,##0%"
    series_types: {}
    series_colors:
      gross_profit_margin: "#2693D1"
    x_axis_datetime_label: ''
    defaults_version: 1
    hidden_fields: [sum_of_potential_amount_lc, sum_of_gross_profit_lc]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    value_labels: legend
    label_type: labPer
    listen:
      Opportunity Start Date Date: opportunities.opportunity_start_date_date
      Opportunity Status: opportunities.opportunity_status
    row: 9
    col: 13
    width: 11
    height: 7
  - title: Historical Potential Value
    name: Historical Potential Value
    model: sap
    explore: opportunities
    type: looker_area
    fields: [lead_grouping, opportunities.sum_value, opportunities.opportunity_start_date_quarter]
    pivots: [lead_grouping]
    fill_fields: [opportunities.opportunity_start_date_quarter]
    filters: {}
    sorts: [lead_grouping, opportunities.opportunity_start_date_quarter desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Lead Grouping,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: lead_grouping, args: [opportunities.closing_percentage, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Cold Lead, filter: "<=25"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Warm Lead, filter: "(25,50]"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Hot Lead, filter: ">50"}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: opportunities.sum_value,
            id: Cold Lead - opportunities.sum_value, name: Cold Lead}, {axisId: opportunities.sum_value,
            id: Hot Lead - opportunities.sum_value, name: Hot Lead}, {axisId: opportunities.sum_value,
            id: Warm Lead - opportunities.sum_value, name: Warm Lead}], showLabels: true,
        showValues: true, valueFormat: '$#,##0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: $#,##0,"K"
    series_types: {}
    series_colors:
      Hot Lead - opportunities.sum_value: "#ffb2b8"
      Cold Lead - opportunities.sum_value: "#62d2fc"
      Warm Lead - opportunities.sum_value: "#ff4c12"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: Potential Value
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    isStepped: true
    labelOverlap: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      Opportunity Start Date Date: opportunities.opportunity_start_date_date
      Opportunity Status: opportunities.opportunity_status
    row: 16
    col: 0
    width: 24
    height: 6
  filters:
  - name: Opportunity Status
    title: Opportunity Status
    type: field_filter
    default_value: L,O,W
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: sap
    explore: opportunities
    listens_to_filters: []
    field: opportunities.opportunity_status
  - name: Opportunity Start Date Date
    title: Opportunity Start Date Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: sap
    explore: opportunities
    listens_to_filters: []
    field: opportunities.opportunity_start_date_date
