# The name of this view in Looker is "Ref Shoppable"
view: ref_shoppable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: product_core_ribbon.ref_shoppable ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cms" in Explore.

  dimension: cms {
    type: number
    sql: ${TABLE}.cms ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cms {
    type: sum
    sql: ${cms} ;;
  }

  measure: average_cms {
    type: average
    sql: ${cms} ;;
  }

  dimension: provider_count {
    type: number
    sql: ${TABLE}.provider_count ;;
  }

  dimension: shoppable {
    type: number
    sql: ${TABLE}.shoppable ;;
  }

  dimension: specialty {
    type: string
    sql: ${TABLE}.specialty ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
