# The name of this view in Looker is "Weekly Providers"
view: weekly_providers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: product_core_ribbon.weekly_providers ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cultural Competency" in Explore.

  dimension: cultural_competency {
    type: string
    sql: ${TABLE}.cultural_competency ;;
  }

  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.entity_type ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: is_pcp {
    type: string
    sql: ${TABLE}.is_pcp ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: node_type {
    type: string
    sql: ${TABLE}.node_type ;;
  }

  dimension: node_uuid {
    type: string
    sql: ${TABLE}.node_uuid ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: races_and_ethnicities {
    type: string
    sql: ${TABLE}.races_and_ethnicities ;;
  }

  dimension: ratings_avg {
    type: string
    sql: ${TABLE}.ratings_avg ;;
  }

  dimension: ratings_avg_new {
    type: string
    sql: ${TABLE}.ratings_avg_new ;;
  }

  dimension: ratings_count {
    type: string
    sql: ${TABLE}.ratings_count ;;
  }

  dimension: ratings_count_new {
    type: string
    sql: ${TABLE}.ratings_count_new ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}.run_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [middle_name, last_name, first_name]
  }
}
