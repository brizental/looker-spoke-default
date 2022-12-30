include: "../views/relay_subscription_events_table.view"
include: "../views/table_metadata.view"

explore: relay_subscription_events {
  from: relay_subscription_events_table


  join: metadata {
    from: table_metadata
    view_label: "Metadata"
    sql_on: ${metadata.table_name} = "subscription_events_v1";;
    # Using a one_to_one relationship here, instead of the technically correct many_to_one, makes
    # Looker understand that this join does not impact aggregation, which only works because this
    # view does not contain any aggregates.
    relationship: one_to_one
  }
}

# Add aggregate tables lookML from VPN SaaSboard - Subscriptions Growth

explore: +relay_subscription_events {
  aggregate_table: rollup__country_name__event_date__metadata_last_modified_date__plan_interval_type__pricing_plan__provider__0 {
    query: {
      dimensions: [
        country_name,
        event_date,
        metadata.last_modified_date,
        plan_interval_type,
        pricing_plan,
        provider
      ]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__plan_interval_type__pricing_plan__provider__1 {
    query: {
      dimensions: [country_name, event_date, plan_interval_type, pricing_plan, provider]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__granular_event_type__plan_interval_type__pricing_plan__provider__2 {
    query: {
      dimensions: [
        country_name,
        event_date,
        granular_event_type,
        plan_interval_type,
        pricing_plan,
        provider
      ]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__event_type__plan_interval_type__pricing_plan__provider__3 {
    query: {
      dimensions: [
        country_name,
        event_date,
        event_type,
        plan_interval_type,
        pricing_plan,
        provider
      ]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New,Cancelled"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__plan_interval_type__pricing_plan__provider__4 {
    query: {
      dimensions: [country_name, event_date, plan_interval_type, pricing_plan, provider]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__plan_interval_type__pricing_plan__provider__5 {
    query: {
      dimensions: [country_name, event_date, plan_interval_type, pricing_plan, provider]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__event_type__plan_interval_type__pricing_plan__provider__6 {
    query: {
      dimensions: [
        country_name,
        event_date,
        event_type,
        plan_interval_type,
        pricing_plan,
        provider
      ]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New Trial,Cancelled Trial"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__coupon_code__event_date__plan_interval_type__pricing_plan__provider__7 {
    query: {
      dimensions: [
        country_name,
        coupon_code,
        event_date,
        plan_interval_type,
        pricing_plan,
        provider
      ]
      measures: [delta]
      filters: [
        relay_subscription_events.coupon_code: "-NULL",
        relay_subscription_events.event_type: "New"
      ]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__plan_interval_type__pricing_plan__provider__8 {
    query: {
      dimensions: [country_name, event_date, plan_interval_type, pricing_plan, provider]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }

  aggregate_table: rollup__country_name__event_date__plan_interval_type__pricing_plan__provider__9 {
    query: {
      dimensions: [country_name, event_date, plan_interval_type, pricing_plan, provider]
      measures: [delta]
      filters: [relay_subscription_events.event_type: "New"]
    }

    materialization: {
      sql_trigger_value: SELECT
        MAX(last_modified_time)
      FROM
        moz-fx-data-shared-prod.mozilla_vpn_derived.INFORMATION_SCHEMA.PARTITIONS
      WHERE
        table_name = "all_subscriptions_v1";;
    }
  }
}
