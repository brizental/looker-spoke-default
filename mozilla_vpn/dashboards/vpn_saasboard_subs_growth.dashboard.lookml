- dashboard: vpn_saasboard__subscriptions_growth
  title: VPN SaaSboard - Subscriptions Growth
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: 3P9vNV1kIjXSFhlkcBPJ3j
  elements:
  - name: ''
    type: text
    title_text: ''
    body_text: |2


      <img src="https://www.mozilla.org/media/img/logos/vpn/logo-with-wordmark.c1659f9e6dd6.svg" width="160" height="50" align="center"/>
    row: 2
    col: 0
    width: 3
    height: 3
  - name: " (2)"
    type: text
    title_text: ''
    body_text: "<div style='background-color: #ffffdd; padding: 5px 10px; border:\
      \ solid 3px #ededed; border-radius: 5px; height:150px'>\n\nThis dashboard captures\
      \ the current state and monthly trend of <strong>new subscriptions</strong>.\n\
      <ul>\n<li>\nNew subscriptions are subscriptions that started at a particular\
      \ date.\n</li>\n<li>\nNew subscriptions do not include trial subscriptions unless\
      \ specified.\n</li>\n</ul>\n<br>\n\nPlease submit any questions in  <b><a href=\"\
      https://mozilla.slack.com/messages/mozilla-vpn-data/\">mozilla-vpn-data</a></b>\
      \ channel on Slack. \n\n</div>"
    row: 2
    col: 3
    width: 16
    height: 4
  - title: Current Active Date
    name: Current Active Date
    model: mozilla_vpn
    explore: subscription_events
    type: single_value
    fields: [metadata.last_modified_date]
    fill_fields: [metadata.last_modified_date]
    sorts: [metadata.last_modified_date desc]
    limit: 1
    dynamic_fields: [{category: table_calculation, expression: 'add_days(-1, ${metadata.last_modified_date})',
        label: New Calculation, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: new_calculation, _type_hint: date}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Data Last Updated
    conditional_formatting: [{type: not equal to, value: 0, background_color: "#cdbfff",
        font_color: !!null '', color_application: {collection_id: mozilla, palette_id: mozilla-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
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
    defaults_version: 1
    note_state: collapsed
    note_display: below
    hidden_fields: [metadata.last_modified_date]
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
    row: 2
    col: 19
    width: 5
    height: 4
  - title: New Subscriptions (By Country)
    name: New Subscriptions (By Country)
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_month, subscription_events.country_name, subscription_events.delta]
    pivots: [subscription_events.country_name]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New
    sorts: [subscription_events.event_month desc, subscription_events.country_name
        desc]
    limit: 500
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
    y_axes: [{label: Subscriptions, orientation: left, series: [{axisId: USA - subscription_events.delta,
            id: USA - subscription_events.delta, name: USA}, {axisId: United Kingdom
              - subscription_events.delta, id: United Kingdom - subscription_events.delta,
            name: United Kingdom}, {axisId: Switzerland - subscription_events.delta,
            id: Switzerland - subscription_events.delta, name: Switzerland}, {axisId: Spain
              - subscription_events.delta, id: Spain - subscription_events.delta,
            name: Spain}, {axisId: Singapore - subscription_events.delta, id: Singapore
              - subscription_events.delta, name: Singapore}, {axisId: Puerto Rico
              - subscription_events.delta, id: Puerto Rico - subscription_events.delta,
            name: Puerto Rico}, {axisId: New Zealand - subscription_events.delta,
            id: New Zealand - subscription_events.delta, name: New Zealand}, {axisId: Malaysia
              - subscription_events.delta, id: Malaysia - subscription_events.delta,
            name: Malaysia}, {axisId: Italy - subscription_events.delta, id: Italy
              - subscription_events.delta, name: Italy}, {axisId: Guam - subscription_events.delta,
            id: Guam - subscription_events.delta, name: Guam}, {axisId: Germany -
              subscription_events.delta, id: Germany - subscription_events.delta,
            name: Germany}, {axisId: France - subscription_events.delta, id: France
              - subscription_events.delta, name: France}, {axisId: Canada - subscription_events.delta,
            id: Canada - subscription_events.delta, name: Canada}, {axisId: Belgium
              - subscription_events.delta, id: Belgium - subscription_events.delta,
            name: Belgium}, {axisId: Austria - subscription_events.delta, id: Austria
              - subscription_events.delta, name: Austria}, {axisId: American Samoa
              - subscription_events.delta, id: American Samoa - subscription_events.delta,
            name: American Samoa}, {axisId: subscription_events.country_name___null
              - subscription_events.delta, id: subscription_events.country_name___null
              - subscription_events.delta, name: "∅"}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: ''
    series_types: {}
    series_colors:
      USA - subscription_events.delta: "#347be3"
    x_axis_datetime_label: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      subscription_events.delta:
        is_active: true
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    note_text: Country is based on customer billing address.
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 8
    col: 0
    width: 12
    height: 10
  - title: Net New Subscriptions
    name: Net New Subscriptions
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_type, subscription_events.delta, subscription_events.event_month]
    pivots: [subscription_events.event_type]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New,Cancelled
    sorts: [subscription_events.event_month desc, subscription_events.event_type]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(pivot_row(${subscription_events.delta}))',
        label: Net Subscriptions, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: supermeasure, table_calculation: net_subscriptions, _type_hint: number}]
    x_axis_gridlines: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#3D52B9"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: Subscriptions, orientation: left, series: [{axisId: Cancelled
              - subscription_events.delta, id: Cancelled - subscription_events.delta,
            name: Cancelled}, {axisId: New - subscription_events.delta, id: New -
              subscription_events.delta, name: New}, {axisId: net_subscriptions, id: net_subscriptions,
            name: Net Subscriptions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 4, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types:
      Row Total - subscription_events.delta: line
      net_subscriptions: line
    series_colors:
      Row Total - subscription_events.delta: "#3D52B9"
      New - subscription_events.delta: "#08B248"
      Cancelled - subscription_events.delta: "#FC2E31"
      net_subscriptions: "#3D52B9"
    series_labels:
      Row Total - subscription_events.delta: Net Paid Subscriptions
      Cancelled - subscription_events.delta: Churned
      New - subscription_events.delta: New
    label_color: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 39
    col: 0
    width: 12
    height: 9
  - title: New Subscriptions (By Provider)
    name: New Subscriptions (By Provider)
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_month, subscription_events.delta, subscription_events.provider]
    pivots: [subscription_events.provider]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New
    sorts: [subscription_events.event_month desc, subscription_events.provider desc]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: 1-month-apple - subscription_events.delta,
            id: 1-month-apple - subscription_events.delta, name: 1-month-apple}, {
            axisId: 1-month-chf-10.99 - subscription_events.delta, id: 1-month-chf-10.99
              - subscription_events.delta, name: 1-month-chf-10.99}, {axisId: 1-month-eur-9.99
              - subscription_events.delta, id: 1-month-eur-9.99 - subscription_events.delta,
            name: 1-month-eur-9.99}, {axisId: 1-month-usd-4.99 - subscription_events.delta,
            id: 1-month-usd-4.99 - subscription_events.delta, name: 1-month-usd-4.99},
          {axisId: 1-month-usd-9.99 - subscription_events.delta, id: 1-month-usd-9.99
              - subscription_events.delta, name: 1-month-usd-9.99}, {axisId: 1-year-apple
              - subscription_events.delta, id: 1-year-apple - subscription_events.delta,
            name: 1-year-apple}, {axisId: 1-year-chf-71.88 - subscription_events.delta,
            id: 1-year-chf-71.88 - subscription_events.delta, name: 1-year-chf-71.88},
          {axisId: 1-year-eur-59.88 - subscription_events.delta, id: 1-year-eur-59.88
              - subscription_events.delta, name: 1-year-eur-59.88}, {axisId: 1-year-usd-59.88
              - subscription_events.delta, id: 1-year-usd-59.88 - subscription_events.delta,
            name: 1-year-usd-59.88}, {axisId: 6-month-apple - subscription_events.delta,
            id: 6-month-apple - subscription_events.delta, name: 6-month-apple}, {
            axisId: 6-month-chf-47.94 - subscription_events.delta, id: 6-month-chf-47.94
              - subscription_events.delta, name: 6-month-chf-47.94}, {axisId: 6-month-eur-41.94
              - subscription_events.delta, id: 6-month-eur-41.94 - subscription_events.delta,
            name: 6-month-eur-41.94}, {axisId: 6-month-usd-47.94 - subscription_events.delta,
            id: 6-month-usd-47.94 - subscription_events.delta, name: 6-month-usd-47.94}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: ''
    series_types: {}
    series_colors: {}
    x_axis_datetime_label: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      subscription_events.delta:
        is_active: true
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 18
    col: 0
    width: 12
    height: 10
  - name: " (3)"
    type: text
    title_text: ''
    body_text: |
      <div style="border-radius: 5px; padding: 5px 10px; background: #412399; height: 60px; color: red;">

      <nav style="font-size: 20px;">

        <img style="color: #efefef; padding: 5px 25px; float: left; height: 40px;" src="https://wwwstatic.lookercdn.com/logos/looker_all_white.svg"/>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://mozilla.cloud.looker.com/dashboards/412">

       Active Subs</a>

        <a style="color: #efefef; border: 1px solid white; padding: 5px 25px; float: left; line-height: 40px; font-weight: bold; text-decoration: underline" href="https://mozilla.cloud.looker.com/dashboards/416">

       Subs Growth</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://mozilla.cloud.looker.com/dashboards/414">Retention</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://mozilla.cloud.looker.com/dashboards/413">Churn</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://mozilla.cloud.looker.com/dashboards/433">Revenue</a>

        <a style="color: #efefef; padding: 5px 25px; float: left; line-height: 40px;" href="https://docs.google.com/document/d/1VtrTwm8Eqt9cPLZLaH1kjnM413gKtdaZArS29xcxXpA/edit?usp=sharing">Docs</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    body_text: |2-


      <div style="border-top: solid 2px #e0e0e0;">

      <h3><b>Net New Subscriptions</b></h3>
    row: 37
    col: 0
    width: 24
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    body_text: |2-


      <div style="border-top: solid 2px #e0e0e0;">

      <h3><b>New Subscriptions</b></h3>
    row: 6
    col: 0
    width: 24
    height: 2
  - title: New Subscriptions (By Type)
    name: New Subscriptions (By Type)
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_month, subscription_events.granular_event_type,
      subscription_events.delta]
    pivots: [subscription_events.granular_event_type]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New
    sorts: [subscription_events.event_month desc, subscription_events.granular_event_type]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: mozilla
      palette_id: mozilla-categorical-0
      options:
        steps: 5
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types:
      Row Total - subscription_events.delta: line
    series_colors:
      Resurrected - subscription_events.delta: "#47f5bf"
      New - subscription_events.delta: "#80ab62"
      Converted Trial - subscription_events.delta: "#005E5D"
    series_labels:
      Resurrected - subscription_events.delta: Returning
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Returning subscriptions are new subscriptions from customers that previously
      held a subscription.
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 18
    col: 12
    width: 12
    height: 10
  - title: 'New Subscriptions (By Plan) '
    name: 'New Subscriptions (By Plan) '
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_month, subscription_events.pricing_plan, subscription_events.delta]
    pivots: [subscription_events.pricing_plan]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New
    sorts: [subscription_events.event_month desc, subscription_events.pricing_plan]
    limit: 500
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
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: 1-month-apple - subscription_events.delta,
            id: 1-month-apple - subscription_events.delta, name: 1-month-apple}, {
            axisId: 1-month-chf-10.99 - subscription_events.delta, id: 1-month-chf-10.99
              - subscription_events.delta, name: 1-month-chf-10.99}, {axisId: 1-month-eur-9.99
              - subscription_events.delta, id: 1-month-eur-9.99 - subscription_events.delta,
            name: 1-month-eur-9.99}, {axisId: 1-month-usd-4.99 - subscription_events.delta,
            id: 1-month-usd-4.99 - subscription_events.delta, name: 1-month-usd-4.99},
          {axisId: 1-month-usd-9.99 - subscription_events.delta, id: 1-month-usd-9.99
              - subscription_events.delta, name: 1-month-usd-9.99}, {axisId: 1-year-apple
              - subscription_events.delta, id: 1-year-apple - subscription_events.delta,
            name: 1-year-apple}, {axisId: 1-year-chf-71.88 - subscription_events.delta,
            id: 1-year-chf-71.88 - subscription_events.delta, name: 1-year-chf-71.88},
          {axisId: 1-year-eur-59.88 - subscription_events.delta, id: 1-year-eur-59.88
              - subscription_events.delta, name: 1-year-eur-59.88}, {axisId: 1-year-usd-59.88
              - subscription_events.delta, id: 1-year-usd-59.88 - subscription_events.delta,
            name: 1-year-usd-59.88}, {axisId: 6-month-apple - subscription_events.delta,
            id: 6-month-apple - subscription_events.delta, name: 6-month-apple}, {
            axisId: 6-month-chf-47.94 - subscription_events.delta, id: 6-month-chf-47.94
              - subscription_events.delta, name: 6-month-chf-47.94}, {axisId: 6-month-eur-41.94
              - subscription_events.delta, id: 6-month-eur-41.94 - subscription_events.delta,
            name: 6-month-eur-41.94}, {axisId: 6-month-usd-47.94 - subscription_events.delta,
            id: 6-month-usd-47.94 - subscription_events.delta, name: 6-month-usd-47.94}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: ''
    series_types: {}
    series_colors:
      1-month-usd-4.99 - subscription_events.delta: "#7363A9"
      6-month-chf-47.94 - subscription_events.delta: "#82a6a8"
    x_axis_datetime_label: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      subscription_events.delta:
        is_active: true
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 28
    col: 12
    width: 12
    height: 9
  - title: Net New Trial Subscriptions Only
    name: Net New Trial Subscriptions Only
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_type, subscription_events.delta, subscription_events.event_month]
    pivots: [subscription_events.event_type]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New Trial,Cancelled Trial
    sorts: [subscription_events.event_month desc, subscription_events.event_type]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(pivot_row(${subscription_events.delta}))',
        label: Net Subscriptions, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: supermeasure, table_calculation: net_subscriptions, _type_hint: number}]
    x_axis_gridlines: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#3D52B9"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: Cancelled Trial - subscription_events.delta,
            id: Cancelled Trial - subscription_events.delta, name: Cancelled Trial
              - Subscription Events Delta}, {axisId: New Trial - subscription_events.delta,
            id: New Trial - subscription_events.delta, name: New Trial - Subscription
              Events Delta}, {axisId: net_subscriptions, id: net_subscriptions, name: Net
              Subscriptions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types:
      Row Total - subscription_events.delta: line
      net_subscriptions: line
    series_colors:
      Row Total - subscription_events.delta: "#3D52B9"
      New - subscription_events.delta: "#08B248"
      Cancelled - subscription_events.delta: "#FC2E31"
      net_subscriptions: "#3D52B9"
      Cancelled Trial - subscription_events.delta: "#FC2E31"
    series_labels:
      Row Total - subscription_events.delta: Net Paid Subscriptions
      Cancelled - subscription_events.delta: Churned
      New - subscription_events.delta: New
      New Trial - subscription_events.delta: New Trial
      Cancelled Trial - subscription_events.delta: Cancelled Trial
      net_subscriptions: Net Trial Subscriptions
    label_color: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: Currently we cannot determine the plan interval for Apple trials until/unless
      they convert to paid.  Therefore, plan_interval_type will be null for Apple
      trials that are active or didn't convert.
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 39
    col: 12
    width: 12
    height: 9
  - title: New Subscriptions from Coupons only
    name: New Subscriptions from Coupons only
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_month, subscription_events.delta, subscription_events.coupon_code]
    pivots: [subscription_events.coupon_code]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New
      subscription_events.coupon_code: "-NULL"
    sorts: [subscription_events.event_month desc, subscription_events.coupon_code]
    limit: 500
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
      palette_id: mixed_pastels
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Subscriptions, orientation: left, series: [{axisId: USA - subscription_events.delta,
            id: USA - subscription_events.delta, name: USA}, {axisId: United Kingdom
              - subscription_events.delta, id: United Kingdom - subscription_events.delta,
            name: United Kingdom}, {axisId: Switzerland - subscription_events.delta,
            id: Switzerland - subscription_events.delta, name: Switzerland}, {axisId: Spain
              - subscription_events.delta, id: Spain - subscription_events.delta,
            name: Spain}, {axisId: Singapore - subscription_events.delta, id: Singapore
              - subscription_events.delta, name: Singapore}, {axisId: Puerto Rico
              - subscription_events.delta, id: Puerto Rico - subscription_events.delta,
            name: Puerto Rico}, {axisId: New Zealand - subscription_events.delta,
            id: New Zealand - subscription_events.delta, name: New Zealand}, {axisId: Malaysia
              - subscription_events.delta, id: Malaysia - subscription_events.delta,
            name: Malaysia}, {axisId: Italy - subscription_events.delta, id: Italy
              - subscription_events.delta, name: Italy}, {axisId: Guam - subscription_events.delta,
            id: Guam - subscription_events.delta, name: Guam}, {axisId: Germany -
              subscription_events.delta, id: Germany - subscription_events.delta,
            name: Germany}, {axisId: France - subscription_events.delta, id: France
              - subscription_events.delta, name: France}, {axisId: Canada - subscription_events.delta,
            id: Canada - subscription_events.delta, name: Canada}, {axisId: Belgium
              - subscription_events.delta, id: Belgium - subscription_events.delta,
            name: Belgium}, {axisId: Austria - subscription_events.delta, id: Austria
              - subscription_events.delta, name: Austria}, {axisId: American Samoa
              - subscription_events.delta, id: American Samoa - subscription_events.delta,
            name: American Samoa}, {axisId: subscription_events.country_name___null
              - subscription_events.delta, id: subscription_events.country_name___null
              - subscription_events.delta, name: "∅"}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: ''
    series_types: {}
    series_colors: {}
    x_axis_datetime_label: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      subscription_events.delta:
        is_active: true
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: above
    note_text: This view only includes new subscriptions that used a coupon code.
    show_null_points: true
    interpolation: linear
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 28
    col: 0
    width: 12
    height: 9
  - title: New Subscriptions (By Plan Interval Type %)
    name: New Subscriptions (By Plan Interval Type %)
    model: mozilla_vpn
    explore: subscription_events
    type: looker_area
    fields: [subscription_events.event_month, subscription_events.delta, subscription_events.plan_interval_type]
    pivots: [subscription_events.plan_interval_type]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New
    sorts: [subscription_events.event_month desc, subscription_events.plan_interval_type]
    limit: 500
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 8b146fdb-43c2-42c2-a572-277b13e9ae5c
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: 1_month - subscription_events.delta,
            id: 1_month - subscription_events.delta, name: 1_month}, {axisId: 1_year
              - subscription_events.delta, id: 1_year - subscription_events.delta,
            name: 1_year}, {axisId: 6_month - subscription_events.delta, id: 6_month
              - subscription_events.delta, name: 6_month}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: ''
    series_types: {}
    series_colors:
      1-month-usd-4.99 - subscription_events.delta: "#7363A9"
      6-month-chf-47.94 - subscription_events.delta: "#82a6a8"
    x_axis_datetime_label: ''
    ordering: desc
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      subscription_events.delta:
        is_active: true
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 8
    col: 18
    width: 6
    height: 10
  - title: New Subscriptions (By Plan Interval Type)
    name: New Subscriptions (By Plan Interval Type)
    model: mozilla_vpn
    explore: subscription_events
    type: looker_column
    fields: [subscription_events.event_month, subscription_events.delta, subscription_events.plan_interval_type]
    pivots: [subscription_events.plan_interval_type]
    fill_fields: [subscription_events.event_month]
    filters:
      subscription_events.event_type: New
    sorts: [subscription_events.event_month desc, subscription_events.plan_interval_type]
    limit: 500
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
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: 1_month - subscription_events.delta,
            id: 1_month - subscription_events.delta, name: 1_month}, {axisId: 1_year
              - subscription_events.delta, id: 1_year - subscription_events.delta,
            name: 1_year}, {axisId: 6_month - subscription_events.delta, id: 6_month
              - subscription_events.delta, name: 6_month}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: ''
    series_types: {}
    series_colors:
      1-month-usd-4.99 - subscription_events.delta: "#7363A9"
      6-month-chf-47.94 - subscription_events.delta: "#82a6a8"
    x_axis_datetime_label: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      subscription_events.delta:
        is_active: true
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    listen:
      Provider: subscription_events.provider
      Pricing Plan: subscription_events.pricing_plan
      Country: subscription_events.country_name
      Event Date: subscription_events.event_date
      Plan Interval Type: subscription_events.plan_interval_type
      Granular Event Type: subscription_events.granular_event_type
    row: 8
    col: 12
    width: 6
    height: 10
  - name: Subscription Cancellations
    type: text
    title_text: Subscription Cancellations
    subtitle_text: This view is currently unavailable.
    body_text: ''
    row: 48
    col: 0
    width: 12
    height: 9
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
    explore: subscription_events
    listens_to_filters: [Plan Interval Type, Pricing Plan, Country, Event Date]
    field: subscription_events.provider
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
    explore: subscription_events
    listens_to_filters: [Plan Interval Type, Provider, Country, Event Date]
    field: subscription_events.pricing_plan
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: mozilla_vpn
    explore: subscription_events
    listens_to_filters: [Plan Interval Type, Provider, Pricing Plan, Event Date]
    field: subscription_events.country_name
  - name: Event Date
    title: Event Date
    type: field_filter
    default_value: 6 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: mozilla_vpn
    explore: subscription_events
    listens_to_filters: []
    field: subscription_events.event_date
  - name: Plan Interval Type
    title: Plan Interval Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: mozilla_vpn
    explore: subscription_events
    listens_to_filters: [Provider, Pricing Plan, Country, Event Date]
    field: subscription_events.plan_interval_type
  - name: Granular Event Type
    title: Granular Event Type
    type: field_filter
    default_value: "-Plan Change"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: mozilla_vpn
    explore: subscription_events
    listens_to_filters: []
    field: subscription_events.granular_event_type
