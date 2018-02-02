view: rpt_staffing_production {
  sql_table_name: dbo.RPT_Staffing_Production ;;

  ######## Parameters ########
  parameter: param_coverage {
    label: "Coverage"
    type: number
    allowed_value: {label: "75%" value: "0.75"}
    allowed_value: {label: "76%" value: "0.76"}
    allowed_value: {label: "77%" value: "0.77"}
    allowed_value: {label: "78%" value: "0.78"}
    allowed_value: {label: "79%" value: "0.79"}
    allowed_value: {label: "80%" value: "0.80"}
    allowed_value: {label: "81%" value: "0.81"}
    allowed_value: {label: "82%" value: "0.82"}
    allowed_value: {label: "83%" value: "0.83"}
    allowed_value: {label: "84%" value: "0.84"}
    allowed_value: {label: "85%" value: "0.85"}
    allowed_value: {label: "86%" value: "0.86"}
    allowed_value: {label: "87%" value: "0.87"}
    allowed_value: {label: "88%" value: "0.88"}
    allowed_value: {label: "89%" value: "0.89"}
    allowed_value: {label: "90%" value: "0.90"}
    allowed_value: {label: "91%" value: "0.91"}
    allowed_value: {label: "92%" value: "0.92"}
    allowed_value: {label: "93%" value: "0.93"}
    allowed_value: {label: "94%" value: "0.94"}
    allowed_value: {label: "95%" value: "0.95"}
    allowed_value: {label: "96%" value: "0.96"}
    allowed_value: {label: "97%" value: "0.97"}
    allowed_value: {label: "98%" value: "0.98"}
    allowed_value: {label: "99%" value: "0.99"}
  }



  ######## Dimensions ########

  dimension: id {
    type: number
    sql: ${TABLE}."#" ;;
  }

  dimension_group: t_activity {
    type: time
    timeframes: [year, quarter, month, week, date]
    sql: dateadd(day, ${day_of_operations}, ${rpt_staffing_schedule.start_date}) ;;
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
    hidden: yes
    type: number
    sql: ${TABLE}."Sum of Person-hours" ;;
  }

  dimension: support_fx_identifier {
    type: string
    sql: ${TABLE}."Support Fx Identifier" ;;
  }

  ######## Measures ########

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_days_of_operations {
    type: sum
    sql: ${day_of_operations} ;;
    value_format_name: decimal_0
  }

  measure: total_person_hours {
    type: sum
    sql: ${sum_of_personhours} ;;
    value_format_name: decimal_0
  }







}
