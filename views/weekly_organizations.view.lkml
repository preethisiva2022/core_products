# The name of this view in Looker is "Weekly Organizations"
view: weekly_organizations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: product_core_ribbon.weekly_organizations ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: cpli {
    type: string
    sql: ${TABLE}.cpli ;;
  }

  dimension: lkr_id {
    type: string
    sql: ${TABLE}.lkr_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: node_type {
    type: string
    sql: ${TABLE}.node_type ;;
  }

  dimension: node_uuid {
    type: string
    sql: ${TABLE}.node_uuid ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}.run_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
