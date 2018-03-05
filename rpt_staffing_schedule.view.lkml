view: rpt_staffing_schedule {
  sql_table_name: dbo.RPT_Staffing_Schedule ;;

  dimension: id {
    type: number
    primary_key: yes            # Added by Rebecca
    sql: ${TABLE}."#" ;;
    hidden: yes
  }

  dimension: asset {
    hidden: yes
    type: string
    sql: ${TABLE}.Asset ;;
  }

  dimension: join_identifier_for_schd {
    type: string
    sql: ${TABLE}."Join Identifier for Schd" ;;
    hidden: yes
  }

  dimension: manufacturing_activity {
    type: string
    sql: ${TABLE}."Manufacturing Activity" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}."Product Code" ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}."Run ID" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."Start Date" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
