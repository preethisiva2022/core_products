# The name of this view in Looker is "Weekly Location Types"
view: weekly_location_types {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: product_core_ribbon.weekly_location_types ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Location Type" in Explore.

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: node_type {
    type: string
    sql: ${TABLE}.node_type ;;
  }

  dimension: node_uuid {
    type: string
    sql: ${TABLE}.node_uuid ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}.run_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
