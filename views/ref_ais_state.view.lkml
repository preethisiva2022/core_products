# The name of this view in Looker is "Ref Ais State"
view: ref_ais_state {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: product_core_ribbon.ref_ais_state ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Aso Enrollment" in Explore.

  dimension: aso_enrollment {
    type: number
    sql: ${TABLE}.aso_enrollment ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_aso_enrollment {
    type: sum
    sql: ${aso_enrollment} ;;
  }

  measure: average_aso_enrollment {
    type: average
    sql: ${aso_enrollment} ;;
  }

  dimension: dual_eligibles_enrollment {
    type: number
    sql: ${TABLE}.dual_eligibles_enrollment ;;
  }

  dimension: fehbp_enrollment {
    type: number
    sql: ${TABLE}.fehbp_enrollment ;;
  }

  dimension: individual_risk_ {
    type: number
    sql: ${TABLE}.individual_risk_ ;;
  }

  dimension: insurer {
    type: string
    sql: ${TABLE}.insurer ;;
  }

  dimension: large_group_risk_ {
    type: number
    sql: ${TABLE}.large_group_risk_ ;;
  }

  dimension: mco_id {
    type: string
    sql: ${TABLE}.mco_id ;;
  }

  dimension: medicaid_ffs_enrollment {
    type: number
    sql: ${TABLE}.medicaid_ffs_enrollment ;;
  }

  dimension: medicaid_hmo_ {
    type: number
    sql: ${TABLE}.medicaid_hmo_ ;;
  }

  dimension: medicare_advantage_ {
    type: number
    sql: ${TABLE}.medicare_advantage_ ;;
  }

  dimension: medicare_ffs_enrollment {
    type: number
    sql: ${TABLE}.medicare_ffs_enrollment ;;
  }

  dimension: medicare_supplement_enrollment {
    type: number
    sql: ${TABLE}.medicare_supplement_enrollment ;;
  }

  dimension: pdp_enrollment {
    type: number
    sql: ${TABLE}.pdp_enrollment ;;
  }

  dimension: public_exchange_enrollment {
    type: number
    sql: ${TABLE}.public_exchange_enrollment ;;
  }

  dimension: ribbon {
    type: string
    sql: ${TABLE}.ribbon ;;
  }

  dimension: schip_enrollment {
    type: number
    sql: ${TABLE}.schip_enrollment ;;
  }

  dimension: small_group_risk_ {
    type: number
    sql: ${TABLE}.small_group_risk_ ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_commercial_risk {
    type: number
    sql: ${TABLE}.total_commercial_risk ;;
  }

  dimension: total_enrollment {
    type: number
    sql: ${TABLE}.total_enrollment ;;
  }

  dimension: total_fully_funded {
    type: number
    sql: ${TABLE}.total_fully_funded ;;
  }

  dimension: total_group_risk {
    type: number
    sql: ${TABLE}.total_group_risk ;;
  }

  dimension: total_public_sector_ {
    type: number
    sql: ${TABLE}.total_public_sector_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
