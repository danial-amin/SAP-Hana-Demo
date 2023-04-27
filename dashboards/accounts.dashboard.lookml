- dashboard: accounts
  title: Accounts
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: gYcq0en1owLHmnGBxFiEoF
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
  - title: Over the Year Performance
    name: Over the Year Performance
    model: sap
    explore: gl_accounts
    type: looker_line
    fields: [gl_accounts.fiscal_year, groups, gl_accounts.sum_trans]
    pivots: [groups]
    filters:
      gl_accounts.sum_trans: not 0
    sorts: [groups, gl_accounts.fiscal_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}]
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Amount, orientation: left, series: [{axisId: gl_accounts.sum_trans,
            id: Assets - gl_accounts.sum_trans, name: Assets}, {axisId: gl_accounts.sum_trans,
            id: Capital - gl_accounts.sum_trans, name: Capital}, {axisId: gl_accounts.sum_trans,
            id: Diff Reserves - gl_accounts.sum_trans, name: Diff Reserves}, {axisId: gl_accounts.sum_trans,
            id: Expenses - gl_accounts.sum_trans, name: Expenses}, {axisId: gl_accounts.sum_trans,
            id: Liabilities - gl_accounts.sum_trans, name: Liabilities}, {axisId: gl_accounts.sum_trans,
            id: Revenue - gl_accounts.sum_trans, name: Revenue}], showLabels: true,
        showValues: true, valueFormat: '$ #,##0.0," K"', unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 38, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '$ #,##0.0," K"'
    x_axis_datetime_label: ''
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 15
    col: 0
    width: 24
    height: 7
  - title: Assets
    name: Assets
    model: sap
    explore: gl_accounts
    type: single_value
    fields: [groups, current_year]
    filters:
      groups: Assets
      gl_accounts.closing_balance_lc: not 0
    sorts: [groups desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Previous Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: previous_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_period_code: 2021-12}}, {category: measure, label: Current
          Year, based_on: gl_accounts.sum_closing, _kind_hint: measure, measure: current_year,
        type: count_distinct, _type_hint: number, filters: {gl_accounts.financial_month: '12'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0.0,," M";$#,##0.0,," M"
    comparison_label: '2021'
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#1864B4", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#3EB0D5", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    circleThickness: 0.5
    circleFillGap: 0.5
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
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 3
    col: 0
    width: 4
    height: 5
  - title: Capital
    name: Capital
    model: sap
    explore: gl_accounts
    type: single_value
    fields: [current_year, previous_year, groups]
    filters:
      gl_accounts.closing_balance_lc: not 0
      groups: Capital
    sorts: [current_year desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Previous Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: previous_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_period_code: 2021-12}}, {category: measure, label: Current
          Year, based_on: gl_accounts.sum_closing, _kind_hint: measure, measure: current_year,
        type: count_distinct, _type_hint: number, filters: {gl_accounts.financial_month: '12'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0.0,," M";-$#,##0.0,," M"
    comparison_label: '2021'
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#1864B4", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#3EB0D5", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    circleThickness: 0.5
    circleFillGap: 0.5
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
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 3
    col: 8
    width: 4
    height: 5
  - title: Revenue
    name: Revenue
    model: sap
    explore: gl_accounts
    type: single_value
    fields: [current_year, previous_year, groups]
    filters:
      gl_accounts.closing_balance_lc: not 0
      groups: Revenue
    sorts: [current_year desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Previous Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: previous_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_period_code: 2021-12}}, {category: measure, label: Current
          Year, based_on: gl_accounts.sum_closing, _kind_hint: measure, measure: current_year,
        type: count_distinct, _type_hint: number, filters: {gl_accounts.financial_month: '12'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0.0,," M";-$#,##0.0,," M"
    comparison_label: '2021'
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#1864B4", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#3EB0D5", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    circleThickness: 0.5
    circleFillGap: 0.5
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
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 3
    col: 12
    width: 4
    height: 5
  - title: Reserves
    name: Reserves
    model: sap
    explore: gl_accounts
    type: single_value
    fields: [current_year, previous_year, groups]
    filters:
      gl_accounts.closing_balance_lc: not 0
      groups: Diff Reserves
    sorts: [current_year desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Previous Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: previous_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_period_code: 2021-12}}, {category: measure, label: Current
          Year, based_on: gl_accounts.sum_closing, _kind_hint: measure, measure: current_year,
        type: count_distinct, _type_hint: number, filters: {gl_accounts.financial_month: '12'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0.0,," M";-$#,##0.0,," M"
    comparison_label: '2021'
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#1864B4", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#3EB0D5", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    circleThickness: 0.5
    circleFillGap: 0.5
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
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 3
    col: 16
    width: 4
    height: 5
  - title: Liabilities
    name: Liabilities
    model: sap
    explore: gl_accounts
    type: single_value
    fields: [current_year, previous_year, groups]
    filters:
      groups: Liabilities
      gl_accounts.closing_balance_lc: not 0
    sorts: [current_year desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Previous Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: previous_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_period_code: 2021-12}}, {category: measure, label: Current
          Year, based_on: gl_accounts.sum_closing, _kind_hint: measure, measure: current_year,
        type: count_distinct, _type_hint: number, filters: {gl_accounts.financial_month: '12'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0.0,," M";-$#,##0.0,," M"
    comparison_label: '2021'
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#1864B4", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#3EB0D5", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    circleThickness: 0.5
    circleFillGap: 0.5
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
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 3
    col: 4
    width: 4
    height: 5
  - title: Expenses
    name: Expenses
    model: sap
    explore: gl_accounts
    type: single_value
    fields: [current_year, previous_year, groups]
    filters:
      gl_accounts.closing_balance_lc: not 0
      groups: Expenses
    sorts: [current_year desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Previous Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: previous_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_period_code: 2021-12}}, {category: measure, label: Current
          Year, based_on: gl_accounts.sum_closing, _kind_hint: measure, measure: current_year,
        type: count_distinct, _type_hint: number, filters: {gl_accounts.financial_month: '12'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0.0,,"M";-$#,##0.0,,"M"
    comparison_label: '2021'
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#1864B4", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#3EB0D5", color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    circleThickness: 0.5
    circleFillGap: 0.5
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
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 3
    col: 20
    width: 4
    height: 5
  - title: Top 05 Assets
    name: Top 05 Assets
    model: sap
    explore: gl_accounts
    type: looker_bar
    fields: [gl_accounts.account_name, current_year]
    filters:
      gl_accounts.sum_trans: not 0
      groups: "%Assets%"
    sorts: [current_year desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Current Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: current_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_month: '12'}}]
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Amount, orientation: bottom, series: [{axisId: current_year,
            id: current_year, name: Current Year}], showLabels: false, showValues: false,
        valueFormat: '$ #,##0.0," K"', unpinAxis: false, tickDensity: custom, tickDensityCustom: 38,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: '$ #,##0.0," K"'
    series_types: {}
    x_axis_datetime_label: ''
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 8
    col: 0
    width: 12
    height: 7
  - title: Top 05 Liabilities
    name: Top 05 Liabilities
    model: sap
    explore: gl_accounts
    type: looker_bar
    fields: [gl_accounts.account_name, current_year]
    filters:
      gl_accounts.sum_trans: not 0
      groups: "%Liabilities%"
    sorts: [current_year desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Groups, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: groups,
        args: [gl_accounts.parent_account_code, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Liabilities, filter: '200004,202051,203061,207111,209002,227022,241031,240001,221041'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Assets, filter: '153001,110521,143041,130111,111501,160001,102521,101501,121011,131001,103502,120011,112531,140211,731000,145001,133012'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Capital, filter: '90003,250001,300001,100001,114502,201021'},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Diff Reserves,
              filter: '310001,320001'}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Revenue, filter: '350003,800060,400041,410031,721000,700050,670001'}],
          Expenses], _kind_hint: dimension, _type_hint: string}, {category: measure,
        label: Current Year, based_on: gl_accounts.sum_closing, _kind_hint: measure,
        measure: current_year, type: count_distinct, _type_hint: number, filters: {
          gl_accounts.financial_month: '12'}}]
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Amount, orientation: bottom, series: [{axisId: current_year,
            id: current_year, name: Current Year}], showLabels: false, showValues: false,
        valueFormat: '$ #,##0.0," K"', unpinAxis: false, tickDensity: custom, tickDensityCustom: 38,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: '$ #,##0.0," K"'
    series_types: {}
    series_colors:
      current_year: "#72C5D4"
    x_axis_datetime_label: ''
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Fiscal Year: gl_accounts.fiscal_year
    row: 8
    col: 12
    width: 12
    height: 7
  filters:
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
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
    explore: gl_accounts
    listens_to_filters: []
    field: gl_accounts.fiscal_year
