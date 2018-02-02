view: rpt_staffing_npd_ppl {
  sql_table_name: dbo.RPT_Staffing_NPD_PPL ;;

  dimension: activity {
    type: string
    sql: ${TABLE}.Activity ;;
  }

  dimension: activity_details {
    type: string
    sql: ${TABLE}."Activity Details" ;;
  }

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

  dimension: f17 {
    type: string
    sql: ${TABLE}.F17 ;;
  }

  dimension: f18 {
    type: string
    sql: ${TABLE}.F18 ;;
  }

  dimension: f19 {
    type: string
    sql: ${TABLE}.F19 ;;
  }

  dimension: f20 {
    type: string
    sql: ${TABLE}.F20 ;;
  }

  dimension: f21 {
    type: string
    sql: ${TABLE}.F21 ;;
  }

  dimension: f22 {
    type: string
    sql: ${TABLE}.F22 ;;
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

  dimension: parameter {
    type: string
    sql: ${TABLE}.Parameter ;;
  }

  dimension: parameter_multiplier {
    type: number
    sql: ${TABLE}."Parameter Multiplier" ;;
  }

  dimension: subfunction {
    type: string
    sql: ${TABLE}."Sub-Function" ;;
  }

  dimension: sum_of_personhours {
    type: number
    sql: ${TABLE}."Sum of Person-hours" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
