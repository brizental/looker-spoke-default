- dashboard: experiment_enrollments
  title: Experiment Enrollments
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Daily Active Population by Branch
    name: Daily Active Population by Branch
    model: experimentation
    explore: experiment_enrollment_daily_active_population
    type: looker_line
    fields: [experiment_enrollment_daily_active_population.branch, experiment_enrollment_daily_active_population.time_time,
      experiment_enrollment_daily_active_population.Total]
    pivots: [experiment_enrollment_daily_active_population.branch]
    filters: {}
    sorts: [experiment_enrollment_daily_active_population.time_time desc, experiment_enrollment_daily_active_population.branch]
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
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_enrollment_daily_active_population.Total,
            id: control - experiment_enrollment_daily_active_population.Total, name: control}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_daily_active_population.time_time
      Experiment: experiment_enrollment_daily_active_population.experiment
    row: 2
    col: 12
    width: 12
    height: 8
  - title: Daily Active Population
    name: Daily Active Population
    model: experimentation
    explore: experiment_enrollment_daily_active_population
    type: looker_line
    fields: [experiment_enrollment_daily_active_population.Total, experiment_enrollment_daily_active_population.time_time]
    filters: {}
    sorts: [experiment_enrollment_daily_active_population.time_time desc]
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
    x_axis_label: Time
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_daily_active_population.time_time
      Experiment: experiment_enrollment_daily_active_population.experiment
    row: 2
    col: 0
    width: 12
    height: 8
  - title: Cumulative Population Estimate
    name: Cumulative Population Estimate
    model: experimentation
    explore: experiment_enrollment_cumulative_population_estimate
    type: looker_line
    fields: [experiment_enrollment_cumulative_population_estimate.Total, experiment_enrollment_cumulative_population_estimate.time_time]
    filters: {}
    sorts: [experiment_enrollment_cumulative_population_estimate.time_time desc]
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
    x_axis_label: Time
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_cumulative_population_estimate.timeframe
      Experiment: experiment_enrollment_cumulative_population_estimate.experiment
    row: 10
    col: 0
    width: 12
    height: 7
  - title: Cumulative Population Estimate by Branch
    name: Cumulative Population Estimate by Branch
    model: experimentation
    explore: experiment_enrollment_cumulative_population_estimate
    type: looker_line
    fields: [experiment_enrollment_cumulative_population_estimate.Total, experiment_enrollment_cumulative_population_estimate.time_time,
      experiment_enrollment_cumulative_population_estimate.branch]
    pivots: [experiment_enrollment_cumulative_population_estimate.branch]
    filters: {}
    sorts: [experiment_enrollment_cumulative_population_estimate.time_time desc, experiment_enrollment_cumulative_population_estimate.branch]
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
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_enrollment_cumulative_population_estimate.Total,
            id: control - experiment_enrollment_cumulative_population_estimate.Total,
            name: control}, {axisId: experiment_enrollment_cumulative_population_estimate.Total,
            id: treatment-admarketplace - experiment_enrollment_cumulative_population_estimate.Total,
            name: treatment-admarketplace}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_cumulative_population_estimate.timeframe
      Experiment: experiment_enrollment_cumulative_population_estimate.experiment
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Cumulative Ad Clicks by Branch
    name: Cumulative Ad Clicks by Branch
    model: experimentation
    explore: experiment_cumulative_ad_clicks
    type: looker_line
    fields: [experiment_cumulative_ad_clicks.Total, experiment_cumulative_ad_clicks.time_time,
      experiment_cumulative_ad_clicks.branch]
    pivots: [experiment_cumulative_ad_clicks.branch]
    filters: {}
    sorts: [experiment_cumulative_ad_clicks.time_time desc, experiment_cumulative_ad_clicks.branch]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_cumulative_ad_clicks.Total,
            id: variant - experiment_cumulative_ad_clicks.Total, name: variant}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    defaults_version: 1
    listen:
      Time Range: experiment_cumulative_ad_clicks.timeframe
      Experiment: experiment_cumulative_ad_clicks.experiment
    row: 53
    col: 12
    width: 12
    height: 7
  - title: Cumulative Search Count by Branch
    name: Cumulative Search Count by Branch
    model: experimentation
    explore: experiment_cumulative_search_count
    type: looker_line
    fields: [experiment_cumulative_search_count.Total, experiment_cumulative_search_count.branch,
      experiment_cumulative_search_count.time_time]
    pivots: [experiment_cumulative_search_count.branch]
    filters: {}
    sorts: [experiment_cumulative_search_count.time_time desc, experiment_cumulative_search_count.branch]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_cumulative_search_count.Total,
            id: debugging-disabled - experiment_cumulative_search_count.Total, name: debugging-disabled},
          {axisId: experiment_cumulative_search_count.Total, id: debugging-enabled
              - experiment_cumulative_search_count.Total, name: debugging-enabled}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    series_types: {}
    defaults_version: 1
    listen:
      Time Range: experiment_cumulative_search_count.timeframe
      Experiment: experiment_cumulative_search_count.experiment
    row: 46
    col: 12
    width: 12
    height: 7
  - title: Cumulative Seach Count with Ads by Branch
    name: Cumulative Seach Count with Ads by Branch
    model: experimentation
    explore: experiment_cumulative_search_with_ads_count
    type: looker_line
    fields: [experiment_cumulative_search_with_ads_count.Total, experiment_cumulative_search_with_ads_count.branch,
      experiment_cumulative_search_with_ads_count.time_time]
    pivots: [experiment_cumulative_search_with_ads_count.branch]
    filters: {}
    sorts: [experiment_cumulative_search_with_ads_count.time_time desc, experiment_cumulative_search_with_ads_count.branch]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_cumulative_search_with_ads_count.Total,
            id: only-branch - experiment_cumulative_search_with_ads_count.Total, name: only-branch}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    defaults_version: 1
    listen:
      Time Range: experiment_cumulative_search_with_ads_count.timeframe
      Experiment: experiment_cumulative_search_with_ads_count.experiment
    row: 60
    col: 12
    width: 12
    height: 7
  - title: Unenrollment Overall
    name: Unenrollment Overall
    model: experimentation
    explore: experiment_unenrollment_overall
    type: looker_column
    fields: [experiment_unenrollment_overall.timestamp, experiment_unenrollment_overall.Total]
    filters: {}
    sorts: [experiment_unenrollment_overall.timestamp desc]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Time
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Range: experiment_unenrollment_overall.timeframe
      Experiment: experiment_unenrollment_overall.experiment
    row: 24
    col: 0
    width: 12
    height: 7
  - title: Unenrollment Overall by Branch
    name: Unenrollment Overall by Branch
    model: experimentation
    explore: experiment_unenrollment_overall
    type: looker_column
    fields: [experiment_unenrollment_overall.timestamp, experiment_unenrollment_overall.Total,
      experiment_unenrollment_overall.branch]
    pivots: [experiment_unenrollment_overall.branch]
    filters: {}
    sorts: [experiment_unenrollment_overall.timestamp desc, experiment_unenrollment_overall.branch]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total, orientation: left, series: [{axisId: control - experiment_unenrollment_overall.Total,
            id: control - experiment_unenrollment_overall.Total, name: control}, {
            axisId: treatment-admarketplace-12 - experiment_unenrollment_overall.Total,
            id: treatment-admarketplace-12 - experiment_unenrollment_overall.Total,
            name: treatment-admarketplace-12}, {axisId: treatment-admarketplace-78
              - experiment_unenrollment_overall.Total, id: treatment-admarketplace-78
              - experiment_unenrollment_overall.Total, name: treatment-admarketplace-78}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Range: experiment_unenrollment_overall.timeframe
      Experiment: experiment_unenrollment_overall.experiment
    row: 24
    col: 12
    width: 12
    height: 7
  - title: Enrollment Overall
    name: Enrollment Overall
    model: experimentation
    explore: experiment_enrollment_overall
    type: looker_column
    fields: [experiment_enrollment_overall.timestamp, experiment_enrollment_overall.Total]
    filters: {}
    sorts: [experiment_enrollment_overall.timestamp desc]
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
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_enrollment_overall.Total,
            id: experiment_enrollment_overall.Total, name: Total}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Time
    series_types: {}
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_overall.timeframe
      Experiment: experiment_enrollment_overall.experiment
    row: 17
    col: 0
    width: 12
    height: 7
  - title: Enrollment Overall by Branch
    name: Enrollment Overall by Branch
    model: experimentation
    explore: experiment_enrollment_overall
    type: looker_column
    fields: [experiment_enrollment_overall.timestamp, experiment_enrollment_overall.Total,
      experiment_enrollment_overall.branch]
    pivots: [experiment_enrollment_overall.branch]
    filters: {}
    sorts: [experiment_enrollment_overall.timestamp desc, experiment_enrollment_overall.branch]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_enrollment_overall.Total,
            id: experiment_enrollment_overall.Total, name: Total}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Time
    series_types: {}
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_overall.timeframe
      Experiment: experiment_enrollment_overall.experiment
    row: 17
    col: 12
    width: 12
    height: 7
  - title: 'Other Events Overall '
    name: 'Other Events Overall '
    model: experimentation
    explore: experiment_enrollment_other_events_overall
    type: looker_column
    fields: [experiment_enrollment_other_events_overall.Total, experiment_enrollment_other_events_overall.timestamp,
      experiment_enrollment_other_events_overall.event]
    pivots: [experiment_enrollment_other_events_overall.event]
    filters: {}
    sorts: [experiment_enrollment_other_events_overall.timestamp desc, experiment_enrollment_other_events_overall.event]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Time
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_other_events_overall.timeframe
      Experiment: experiment_enrollment_other_events_overall.experiment
    row: 31
    col: 0
    width: 12
    height: 7
  - title: Other Events Overall by Branch
    name: Other Events Overall by Branch
    model: experimentation
    explore: experiment_enrollment_other_events_overall
    type: looker_column
    fields: [experiment_enrollment_other_events_overall.Total, experiment_enrollment_other_events_overall.timestamp,
      branch_event]
    pivots: [branch_event]
    filters: {}
    sorts: [experiment_enrollment_other_events_overall.timestamp desc, branch_event]
    dynamic_fields: [{category: dimension, expression: 'concat(${experiment_enrollment_other_events_overall.branch},"
          - ", ${experiment_enrollment_other_events_overall.event})', label: Branch
          + Event, value_format: !!null '', value_format_name: !!null '', dimension: branch_event,
        _kind_hint: dimension, _type_hint: string}]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Time
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Range: experiment_enrollment_other_events_overall.timeframe
      Experiment: experiment_enrollment_other_events_overall.experiment
    row: 31
    col: 12
    width: 12
    height: 7
  - title: Unenrollment Reasons
    name: Unenrollment Reasons
    model: experimentation
    explore: unenrollment_reasons
    type: looker_grid
    fields: [events.reason, events.event_method, events.event_count]
    filters: {}
    sorts: [events.event_count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Time Range: events.submission_date
      Experiment: events.event_string_value
    row: 38
    col: 0
    width: 24
    height: 6
  - name: Search Metrics
    type: text
    title_text: Search Metrics
    subtitle_text: ''
    body_text: ''
    row: 44
    col: 0
    width: 24
    height: 2
  - title: Search Count by Branch
    name: Search Count by Branch
    model: experimentation
    explore: experiment_search_aggregates_live
    type: looker_column
    fields: [experiment_search_aggregates_live.timestamp, experiment_search_aggregates_live.total_search_count,
      experiment_search_aggregates_live.branch]
    pivots: [experiment_search_aggregates_live.branch]
    filters: {}
    sorts: [experiment_search_aggregates_live.timestamp desc]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_search_aggregates_live.total_search_count,
            id: experiment_search_aggregates_live.total_search_count, name: Total
              Search Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Range: experiment_search_aggregates_live.timeframe
      Experiment: experiment_search_aggregates_live.experiment
    row: 46
    col: 0
    width: 12
    height: 7
  - title: Ad Clicks by Branch
    name: Ad Clicks by Branch
    model: experimentation
    explore: experiment_search_aggregates_live
    type: looker_column
    fields: [experiment_search_aggregates_live.timestamp, experiment_search_aggregates_live.branch,
      experiment_search_aggregates_live.total_ad_clicks]
    pivots: [experiment_search_aggregates_live.branch]
    filters: {}
    sorts: [experiment_search_aggregates_live.timestamp desc]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_search_aggregates_live.total_search_count,
            id: experiment_search_aggregates_live.total_search_count, name: Total
              Search Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Range: experiment_search_aggregates_live.timeframe
      Experiment: experiment_search_aggregates_live.experiment
    row: 53
    col: 0
    width: 12
    height: 7
  - title: Search Count with Ads by Branch
    name: Search Count with Ads by Branch
    model: experimentation
    explore: experiment_search_aggregates_live
    type: looker_column
    fields: [experiment_search_aggregates_live.timestamp, experiment_search_aggregates_live.branch,
      experiment_search_aggregates_live.total_searches_with_ads]
    pivots: [experiment_search_aggregates_live.branch]
    filters: {}
    sorts: [experiment_search_aggregates_live.timestamp desc]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total, orientation: left, series: [{axisId: experiment_search_aggregates_live.total_search_count,
            id: experiment_search_aggregates_live.total_search_count, name: Total
              Search Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Range: experiment_search_aggregates_live.timeframe
      Experiment: experiment_search_aggregates_live.experiment
    row: 60
    col: 0
    width: 12
    height: 7
  - title: Enrollment Status
    name: Enrollment Status
    model: experimentation
    explore: enrollment_status
    type: single_value
    fields: [enrollment_status.message, enrollment_status.experiment]
    sorts: [enrollment_status.message]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [enrollment_status.experiment]
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
      Experiment: enrollment_status.experiment
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Experiment
    title: Experiment
    type: field_filter
    default_value: bug-1727596-pref-search-experiment-measuring-the-impacts-of-diffe-release-79-96
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: experimentation
    explore: experiment_enrollment_daily_active_population
    listens_to_filters: []
    field: experiment_enrollment_daily_active_population.experiment
  - name: Time Range
    title: Time Range
    type: field_filter
    default_value: 28 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: experimentation
    explore: experiment_enrollment_daily_active_population
    listens_to_filters: []
    field: experiment_enrollment_daily_active_population.time_date