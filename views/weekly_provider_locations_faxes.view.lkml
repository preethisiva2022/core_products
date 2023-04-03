# The name of this view in Looker is "Weekly Provider Locations Faxes"
view: weekly_provider_locations_faxes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: product_core_ribbon.weekly_provider_locations_faxes ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Confidence" in Explore.

  dimension: confidence {
    type: string
    sql: ${TABLE}.confidence ;;
  }

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.fax_number ;;
  }

  dimension: node_1_type {
    type: string
    sql: ${TABLE}.node_1_type ;;
  }

  dimension: node_1_uuid {
    type: string
    sql: ${TABLE}.node_1_uuid ;;
  }

  dimension: node_2_type {
    type: string
    sql: ${TABLE}.node_2_type ;;
  }

  dimension: node_2_uuid {
    type: string
    sql: ${TABLE}.node_2_uuid ;;
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
