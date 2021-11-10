- dashboard: vpn_saasboard__revenue_restricted_access
  title: VPN SaaSboard - Revenue (Restricted Access)
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Month Over Month Growth Rate
    name: Month Over Month Growth Rate
    model: mozilla_vpn
    explore: subscriptions
    type: looker_line
    fields: [subscriptions__active.active_month, subscriptions.count, sum_of_annual_recurring_revenue]
    fill_fields: [subscriptions__active.active_month]
    filters:
      subscriptions__active.is_end_of_month: 'Yes'
    sorts: [subscriptions__active.active_month]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${subscriptions.count}\
          \ / offset(${subscriptions.count}, -1) -1", label: Active Subscriptions,
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        table_calculation: active_subscriptions, _type_hint: number}, {category: table_calculation,
        expression: "${sum_of_annual_recurring_revenue} / offset(${sum_of_annual_recurring_revenue},\
          \ -1) -1", label: Annual Recurring Revenue, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: annual_recurring_revenue_1, _type_hint: number},
      {category: dimension, expression: "case(\n  when(\n    ${subscriptions.plan_interval}\
          \ = \"year\",\n    1/${subscriptions.plan_interval_count}\n  ),\n  when(\n\
          \    ${subscriptions.plan_interval} = \"month\",\n    12/${subscriptions.plan_interval_count}\n\
          \  ),\n  null\n)\n*${subscriptions.plan_amount}/100", label: Annual Recurring
          Revenue, value_format: !!null '', value_format_name: !!null '', dimension: annual_recurring_revenue,
        _kind_hint: dimension, _type_hint: number}, {category: measure, expression: !!null '',
        label: Sum of Annual Recurring Revenue, value_format: !!null '', value_format_name: !!null '',
        based_on: annual_recurring_revenue, _kind_hint: measure, measure: sum_of_annual_recurring_revenue,
        type: sum, _type_hint: number}]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: active_subscribers,
            id: active_subscribers, name: Active Subscribers}, {axisId: arr, id: arr,
            name: ARR}], showLabels: true, showValues: true, maxValue: 0.45, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    font_size: ''
    label_value_format: 0.0%
    series_types: {}
    series_colors:
      new_calculation: "#0060E0"
      active_subscribers: "#0060E0"
      arr: "#FF505F"
      active_subscriptions: "#0060E0"
      annual_recurring_revenue_1: "#ff3825"
    x_axis_datetime_label: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [subscriptions.count, subscriptions.sum_revenue, sum_of_annual_recurring_revenue]
    listen:
      Active Date: subscriptions__active.active_date
    row: 15
    col: 0
    width: 12
    height: 9
  - name: ''
    type: text
    title_text: ''
    body_text: <img src="https://www.mozilla.org/media/img/logos/vpn/logo-with-wordmark.c1659f9e6dd6.svg"
      style="width:160px;height:50px;">
    row: 2
    col: 0
    width: 3
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<p style='background-color: #ffffdd; padding: 5px 10px; border: solid\
      \ 3px #ededed; border-radius: 5px; height:150px'>\n\nThis dashboard captures\
      \ <strong>revenue</strong>.\n\n<br>\n<br>\nPlease submit any questions in  <b><a href=\"https://mozilla.slack.com/messages/mozilla-vpn-data/\"\
      >mozilla-vpn-data</a></b> channel on Slack for @wichan or @relud. \n\n</p>"
    row: 2
    col: 3
    width: 15
    height: 4
  - title: Annual Recurring Revenue (By Country)
    name: Annual Recurring Revenue (By Country)
    model: mozilla_vpn
    explore: subscriptions
    type: looker_column
    fields: [subscriptions__active.active_month, subscriptions.country_name, sum_of_annual_recurring_revenue]
    pivots: [subscriptions.country_name]
    fill_fields: [subscriptions__active.active_month]
    filters:
      subscriptions__active.is_end_of_month: 'Yes'
    sorts: [subscriptions__active.active_month desc, subscriptions.country_name desc]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "case(\n  when(\n    ${subscriptions.plan_interval}\
          \ = \"year\",\n    1/${subscriptions.plan_interval_count}\n  ),\n  when(\n\
          \    ${subscriptions.plan_interval} = \"month\",\n    12/${subscriptions.plan_interval_count}\n\
          \  ),\n  null\n)\n*${subscriptions.plan_amount}/100", label: Annual Recurring
          Revenue, value_format: !!null '', value_format_name: usd, dimension: annual_recurring_revenue,
        _kind_hint: dimension, _type_hint: number}, {category: measure, expression: !!null '',
        label: Sum of Annual Recurring Revenue, value_format: !!null '', value_format_name: !!null '',
        based_on: annual_recurring_revenue, _kind_hint: measure, measure: sum_of_annual_recurring_revenue,
        type: sum, _type_hint: number}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
        reverse: false
    y_axes: [{label: "$ in millions", orientation: left, series: [{axisId: sum_of_revenue,
            id: sum_of_revenue, name: Sum of Revenue}], showLabels: true, showValues: true,
        valueFormat: "$0.00,,", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    font_size: 13px
    label_value_format: "$0.00,,"
    series_types: {}
    series_colors:
      USA - sum_of_revenue: "#347be3"
      USA - sum_of_annual_recurring_revenue: "#347be3"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Country is based on customer billing address.
    listen:
      Provider: subscriptions.provider
      Country Name: subscriptions.country_name
      Pricing Plan: subscriptions.pricing_plan
      Active Date: subscriptions__active.active_date
    row: 6
    col: 0
    width: 12
    height: 9
  - title: Annual Recurring Revenue (By Plan)
    name: Annual Recurring Revenue (By Plan)
    model: mozilla_vpn
    explore: subscriptions
    type: looker_column
    fields: [subscriptions__active.active_month, sum_of_annual_recurring_revenue,
      subscriptions.pricing_plan]
    pivots: [subscriptions.pricing_plan]
    fill_fields: [subscriptions__active.active_month]
    filters:
      subscriptions__active.is_end_of_month: 'Yes'
    sorts: [subscriptions__active.active_month desc, subscriptions.pricing_plan]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Sum of Annual Recurring
          Revenue, based_on: annual_recurring_revenue, _kind_hint: measure, measure: sum_of_annual_recurring_revenue,
        type: sum, _type_hint: number}, {category: dimension, expression: "case(\n\
          \  when(\n    ${subscriptions.plan_interval} = \"year\",\n    1/${subscriptions.plan_interval_count}\n\
          \  ),\n  when(\n    ${subscriptions.plan_interval} = \"month\",\n    12/${subscriptions.plan_interval_count}\n\
          \  ),\n  null\n)\n*${subscriptions.plan_amount}/100", label: Annual Recurring
          Revenue, value_format: !!null '', value_format_name: !!null '', dimension: annual_recurring_revenue,
        _kind_hint: dimension, _type_hint: number}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 8b146fdb-43c2-42c2-a572-277b13e9ae5c
      options:
        steps: 5
    y_axes: [{label: "$ in millions", orientation: left, series: [{axisId: sum_of_revenue,
            id: sum_of_revenue, name: Sum of Revenue}], showLabels: true, showValues: true,
        valueFormat: "$0.00,,", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Month
    font_size: 13px
    label_value_format: "$0.00,,"
    series_types: {}
    series_colors:
      1-month-usd-4.99 - sum_of_annual_recurring_revenue: "#7363A9"
      6-month-chf-47.94 - sum_of_annual_recurring_revenue: "#82a6a8"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Provider: subscriptions.provider
      Country Name: subscriptions.country_name
      Pricing Plan: subscriptions.pricing_plan
      Active Date: subscriptions__active.active_date
    row: 6
    col: 12
    width: 12
    height: 9
  - name: ARR by Month Graph - bar chart
    type: text
    title_text: ARR by Month Graph - bar chart
    subtitle_text: Under Development - pending finance/accounting support
    body_text: ''
    row: 15
    col: 12
    width: 12
    height: 9
  - title: Untitled
    name: Untitled
    model: mozilla_vpn
    explore: subscriptions
    type: single_value
    fields: [subscriptions__active.active_date]
    fill_fields: [subscriptions__active.active_date]
    sorts: [subscriptions__active.active_date desc]
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
    single_value_title: Most Recent Data Included
    series_types: {}
    defaults_version: 1
    listen:
      Active Date: subscriptions__active.active_date
    row: 2
    col: 18
    width: 6
    height: 4
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      <div style="border-radius: 5px; padding: 5px 10px; background: #412399; height: 60px; color: red;">

      <nav style="font-size: 20px;">

        <img style="color: #efefef; padding: 5px 25px; float: left; height: 40px;" src="https://wwwstatic.lookercdn.com/logos/looker_all_white.svg"/>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="#home">

       Active Subs</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://mozilla.cloud.looker.com/dashboards-next/mozilla_vpn::vpn_saasboard__subs_growth?Provider=&Pricing+Plan=&Country=&Event+Date=2020%2F07%2F20+to+today">

       Subs Growth</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://mozilla.cloud.looker.com/dashboards-next/mozilla_vpn::vpn_saasboard__retention?Provider=&Pricing+Plan=&Country=&Subscription+Start+Date=2020%2F07%2F20+to+today">Retention</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://mozilla.cloud.looker.com/dashboards-next/mozilla_vpn::vpn_saasboard__churn?Provider=&Pricing+Plan=&Country=&Subscription+Start+Date=2020%2F07%2F20+to+today">Churn</a>

        <a style="color: #efefef; border: 1px solid white; padding: 5px 25px; float: left; line-height: 40px; font-weight: bold; text-decoration: underline" href="https://mozilla.cloud.looker.com/dashboards-next/mozilla_vpn::vpn_saasboard__revenue_restricted_access?Provider=&Pricing+Plan=&Country+Name=&Active+Date=2020%2F07%2F01+to+today">Revenue</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://docs.google.com/document/d/1VtrTwm8Eqt9cPLZLaH1kjnM413gKtdaZArS29xcxXpA/edit?usp=sharing">Docs</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Provider
    title: Provider
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: mozilla_vpn
    explore: subscriptions
    listens_to_filters: [Pricing Plan, Country Name]
    field: subscriptions.provider
  - name: Pricing Plan
    title: Pricing Plan
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: mozilla_vpn
    explore: subscriptions
    listens_to_filters: [Provider, Country Name]
    field: subscriptions.pricing_plan
  - name: Country Name
    title: Country Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: mozilla_vpn
    explore: subscriptions
    listens_to_filters: [Provider, Pricing Plan]
    field: subscriptions.country_name
  - name: Active Date
    title: Active Date
    type: field_filter
    default_value: 2020/07/01 to today
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: mozilla_vpn
    explore: subscriptions
    listens_to_filters: []
    field: subscriptions__active.active_date