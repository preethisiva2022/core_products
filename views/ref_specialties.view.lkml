# The name of this view in Looker is "Ref Specialties"
view: ref_specialties {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: product_api.ref_specialties ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Board Specialty" in Explore.

  dimension: board_specialty {
    type: string
    sql: ${TABLE}.board_specialty ;;
  }

  dimension: board_sub_specialty {
    type: string
    sql: ${TABLE}.board_sub_specialty ;;
  }

  dimension: colloquial {
    type: string
    sql: ${TABLE}.colloquial ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: exclude {
    type: string
    sql: ${TABLE}.exclude ;;
  }

  dimension: higher_category {
    type: string
    sql: ${TABLE}.higher_category ;;
  }

  dimension: include {
    type: string
    sql: ${TABLE}.include ;;
  }

  dimension: non_md_specialty {
    type: string
    sql: ${TABLE}.non_md_specialty ;;
  }

  dimension: non_md_sub_specialty {
    type: string
    sql: ${TABLE}.non_md_sub_specialty ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.provider_name ;;
  }

  dimension: provider_type {
    type: string
    sql: ${TABLE}.provider_type ;;
  }

  dimension: taxonomy_1 {
    type: string
    sql: ${TABLE}.taxonomy_1 ;;
  }

  dimension: taxonomy_2 {
    type: string
    sql: ${TABLE}.taxonomy_2 ;;
  }

  dimension: taxonomy_3 {
    type: string
    sql: ${TABLE}.taxonomy_3 ;;
  }

  dimension: taxonomy_code {
    type: string
    sql: ${TABLE}.taxonomy_code ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, provider_name]
  }
}
