view: rpt_staffing_tech_services {
  sql_table_name: dbo.RPT_Staffing_Tech_Services ;;

  dimension: asset {
    type: string
    sql: ${TABLE}.Asset ;;
  }

  dimension: average_of_idle_time {
    type: number
    sql: ${TABLE}."Average of Idle Time" ;;
  }

  dimension: average_of_rework_rate {
    type: number
    sql: ${TABLE}."Average of Rework Rate" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."Data Type" ;;
  }

  dimension: day_of_operations {
    type: number
    sql: ${TABLE}."Day of Operations" ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
  }

  dimension: join_identifier__mgmt {
    type: string
    sql: ${TABLE}."Join Identifier - Mgmt" ;;
  }

  dimension: join_identifier__resources {
    type: string
    sql: ${TABLE}."Join Identifier - Resources" ;;
  }

  dimension: join_identifier_for_schd {
    type: string
    sql: ${TABLE}."Join Identifier for Schd" ;;
  }

  dimension: labour {
    type: string
    sql: ${TABLE}.Labour ;;
  }

  dimension: subfunction {
    type: string
    sql: ${TABLE}."Sub-Function" ;;
  }

  dimension: sum_of_personhours {
    type: number
    sql: ${TABLE}."Sum of Person-hours" ;;
  }

  dimension: testing_group {
    type: string
    sql: ${TABLE}."Testing Group" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
