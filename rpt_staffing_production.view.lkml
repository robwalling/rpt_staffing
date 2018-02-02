view: rpt_staffing_production {
  sql_table_name: dbo.RPT_Staffing_Production ;;

  dimension: id {
    type: number
    sql: ${TABLE}."#" ;;
  }

  dimension: activity_l4 {
    type: string
    sql: ${TABLE}."Activity (L4)" ;;
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

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: cycle_time {
    type: number
    sql: ${TABLE}."Cycle Time" ;;
  }

  dimension: day_of_operations {
    type: number
    sql: ${TABLE}."Day of Operations" ;;
  }

  dimension: final_personhours {
    type: number
    sql: ${TABLE}."Final Person-hours" ;;
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

  dimension: manufacturing_activity {
    type: string
    sql: ${TABLE}."Manufacturing Activity" ;;
  }

  dimension: parameter {
    type: string
    sql: ${TABLE}.Parameter ;;
  }

  dimension: process__br {
    type: string
    sql: ${TABLE}."Process - BR" ;;
  }

  dimension: process_br_details {
    type: string
    sql: ${TABLE}."Process BR Details" ;;
  }

  dimension: process_final {
    type: string
    sql: ${TABLE}."Process Final" ;;
  }

  dimension: product {
    type: number
    sql: ${TABLE}.Product ;;
  }

  dimension: resource_function {
    type: string
    sql: ${TABLE}."Resource Function" ;;
  }

  dimension: schedule_mapping {
    type: string
    sql: ${TABLE}."Schedule Mapping" ;;
  }

  dimension: step_code {
    type: string
    sql: ${TABLE}."Step Code" ;;
  }

  dimension: sublot {
    type: string
    sql: ${TABLE}."Sub-lot" ;;
  }

  dimension: sublot_multiplier {
    type: number
    sql: ${TABLE}."Sub-lot Multiplier" ;;
  }

  dimension: suite {
    type: string
    sql: ${TABLE}.Suite ;;
  }

  dimension: sum_of_personhours {
    type: number
    sql: ${TABLE}."Sum of Person-hours" ;;
  }

  dimension: support_fx_identifier {
    type: string
    sql: ${TABLE}."Support Fx Identifier" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
