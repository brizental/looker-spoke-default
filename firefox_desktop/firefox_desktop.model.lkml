connection: "telemetry"

include: "//looker-hub/firefox_desktop/views/*.view.lkml"
include: "/mr_2022/views/*.view.lkml"
include: "//looker-hub/firefox_desktop/explores/*.explore.lkml"
include: "explores/*.explore.lkml"
include: "views/*.view.lkml"
# include: "dashboards/*.dashboard"

explore: firefox_desktop_last_seen {
  label: "Firefox Dekstop Clients Last Seen"
  from: clients_last_seen_table
  hidden: yes
}

explore: +client_counts {
  label: "Client Counts (Legacy Telemetry)"
  always_filter: {
    filters: [
      client_counts.submission_date: "7 days",
      client_counts.sample_id: "0"
    ]
  }
  join: felt_privacy_pinned_retention_2_week {
    type: left_outer
    relationship: one_to_one
    sql_on: ${client_counts.client_id} = ${felt_privacy_pinned_retention_2_week.client_id} AND ${client_counts.submission_date} = ${felt_privacy_pinned_retention_2_week.submission_date};;

  }
}

explore: +event_counts {
  label: "Event Counts (Legacy Telemetry)"
  always_filter: {
    filters: [
      events.submission_date: "7 days",
      events.sample_id: "0"
    ]
  }
}

explore: +funnel_analysis {
  label: "Funnel Analysis (Legacy Telemetry)"
  always_filter: {
    filters: [
      funnel_analysis.submission_date: "7 days",
      funnel_analysis.sample_id: "0"
    ]
  }
}

explore: +growth_accounting {
  label: "Growth Accounting (Legacy Telemetry)"
  always_filter: {
    filters: [
      growth_accounting.submission_date: "7 days",
      growth_accounting.sample_id: "0"
    ]
  }
}

explore: +baseline {
  label: "Baseline (Glean)"
  always_filter: {
    filters: [
      baseline.submission_date: "7 days",
      baseline.sample_id: "0"
    ]
  }
}

explore: feature_usage {
  view_name: feature_usage_table
  label: "Feature Usage (Legacy Telemetry)"
  description: "A daily aggregation of specific browser feature usages by 1% of Firefox desktop client."

  always_filter: {
    filters: [
      feature_usage_table.submission_date: "7 days"
    ]
  }
}

explore: +metrics {
  label: "Metrics (Glean)"
  always_filter: {
    filters: [
      metrics.submission_date: "7 days",
      metrics.sample_id: "0"
    ]
  }
}

view: +metrics {
  dimension: client_info__build_date_datetime {
    label: "Build Date (Datetime)"
    description: "The date & time the application was built as a timestamp"
    group_label: "Client Info"
    group_item_label: "Build Date (Datetime)"
    sql: PARSE_TIMESTAMP("%Y%m%d%H%M%S", ${TABLE}.client_info.app_build) ;;
    type: date_time
  }
}


view: +clients_daily_table__contextual_services_quicksuggest_click_sum {
  dimension: value {
    hidden: yes
  }

  measure: count {
    sql:  SUM(${TABLE}.value) ;;
    type: number
  }
}

view: +clients_daily_table__contextual_services_quicksuggest_help_sum {
  dimension: value {
    hidden: yes
  }

  measure: count {
    sql:  SUM(${TABLE}.value) ;;
    type: number
  }
}

view: +clients_daily_table__contextual_services_quicksuggest_impression_sum {
  dimension: value {
    hidden: yes
  }

  measure: count {
    sql:  SUM(${TABLE}.value) ;;
    type: number
  }
}
