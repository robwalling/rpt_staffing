view: rpt_staffing_resource_hrs {
  sql_table_name: dbo.RPT_Staffing_Resource_HRS ;;

###### Parameters ######
  parameter: param_gowning {
    label: "Gowning Hours"
    type: number
    allowed_value: {label: "-50%" value: "-0.50"}
    allowed_value: {label: "-45%" value: "-0.45"}
    allowed_value: {label: "-40%" value: "-0.40"}
    allowed_value: {label: "-35%" value: "-0.35"}
    allowed_value: {label: "-30%" value: "-0.30"}
    allowed_value: {label: "-25%" value: "-0.25"}
    allowed_value: {label: "-20%" value: "-0.20"}
    allowed_value: {label: "-15%" value: "-0.15"}
    allowed_value: {label: "-10%" value: "-0.10"}
    allowed_value: {label: "-5%" value: "-0.05"}
    allowed_value: {label: "0%" value: "0.00"}
    allowed_value: {label: "5%" value: "0.05"}
    allowed_value: {label: "10%" value: "0.10"}
    allowed_value: {label: "15%" value: "0.15"}
    allowed_value: {label: "20%" value: "0.20"}
    allowed_value: {label: "25%" value: "0.25"}
    allowed_value: {label: "30%" value: "0.30"}
    allowed_value: {label: "35%" value: "0.35"}
    allowed_value: {label: "40%" value: "0.40"}
    allowed_value: {label: "45%" value: "0.45"}
    allowed_value: {label: "50%" value: "0.50"}
  }

  parameter: param_break {
    label: "Break Hours"
    type: number
    allowed_value: {label: "-50%" value: "-0.50"}
    allowed_value: {label: "-40%" value: "-0.40"}
    allowed_value: {label: "-30%" value: "-0.30"}
    allowed_value: {label: "-20%" value: "-0.20"}
    allowed_value: {label: "-10%" value: "-0.10"}
    allowed_value: {label: "0%" value: "0.00"}
    allowed_value: {label: "10%" value: "0.10"}
    allowed_value: {label: "20%" value: "0.20"}
    allowed_value: {label: "30%" value: "0.30"}
    allowed_value: {label: "40%" value: "0.40"}
    allowed_value: {label: "50%" value: "0.50"}
  }

  parameter: param_meeting {
    label: "Meeting Hours"
    type: number
    allowed_value: {label: "-50%" value: "-0.50"}
    allowed_value: {label: "-40%" value: "-0.40"}
    allowed_value: {label: "-30%" value: "-0.30"}
    allowed_value: {label: "-20%" value: "-0.20"}
    allowed_value: {label: "-10%" value: "-0.10"}
    allowed_value: {label: "0%" value: "0.00"}
    allowed_value: {label: "10%" value: "0.10"}
    allowed_value: {label: "20%" value: "0.20"}
    allowed_value: {label: "30%" value: "0.30"}
    allowed_value: {label: "40%" value: "0.40"}
    allowed_value: {label: "50%" value: "0.50"}
  }

  parameter: param_training {
    label: "Training Hours"
    type: number
    allowed_value: {label: "-50%" value: "-0.50"}
    allowed_value: {label: "-45%" value: "-0.45"}
    allowed_value: {label: "-40%" value: "-0.40"}
    allowed_value: {label: "-35%" value: "-0.35"}
    allowed_value: {label: "-30%" value: "-0.30"}
    allowed_value: {label: "-25%" value: "-0.25"}
    allowed_value: {label: "-20%" value: "-0.20"}
    allowed_value: {label: "-15%" value: "-0.15"}
    allowed_value: {label: "-10%" value: "-0.10"}
    allowed_value: {label: "-5%" value: "-0.05"}
    allowed_value: {label: "0%" value: "0.00"}
    allowed_value: {label: "5%" value: "0.05"}
    allowed_value: {label: "10%" value: "0.10"}
    allowed_value: {label: "15%" value: "0.15"}
    allowed_value: {label: "20%" value: "0.20"}
    allowed_value: {label: "25%" value: "0.25"}
    allowed_value: {label: "30%" value: "0.30"}
    allowed_value: {label: "35%" value: "0.35"}
    allowed_value: {label: "40%" value: "0.40"}
    allowed_value: {label: "45%" value: "0.45"}
    allowed_value: {label: "50%" value: "0.50"}
  }

  parameter: param_vacations {
    label: "Vacations"
    type: number
    allowed_value: {label: "-50%" value: "-0.50"}
    allowed_value: {label: "-45%" value: "-0.45"}
    allowed_value: {label: "-40%" value: "-0.40"}
    allowed_value: {label: "-35%" value: "-0.35"}
    allowed_value: {label: "-30%" value: "-0.30"}
    allowed_value: {label: "-25%" value: "-0.25"}
    allowed_value: {label: "-20%" value: "-0.20"}
    allowed_value: {label: "-15%" value: "-0.15"}
    allowed_value: {label: "-10%" value: "-0.10"}
    allowed_value: {label: "-5%" value: "-0.05"}
    allowed_value: {label: "0%" value: "0.00"}
    allowed_value: {label: "5%" value: "0.05"}
    allowed_value: {label: "10%" value: "0.10"}
    allowed_value: {label: "15%" value: "0.15"}
    allowed_value: {label: "20%" value: "0.20"}
    allowed_value: {label: "25%" value: "0.25"}
    allowed_value: {label: "30%" value: "0.30"}
    allowed_value: {label: "35%" value: "0.35"}
    allowed_value: {label: "40%" value: "0.40"}
    allowed_value: {label: "45%" value: "0.45"}
    allowed_value: {label: "50%" value: "0.50"}
  }

###### Dimensions ######
  dimension: number_of_shifts {
    type: number
    sql: ${TABLE}."# of Shifts" ;;
  }

  dimension: assets {
    type: string
    sql: ${TABLE}.Assets ;;
  }

  dimension: break_time {
    type: number
    sql: ${TABLE}."Break Time" ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
  }

  dimension: gowning_time {
    type: number
    sql: ${TABLE}."Gowning Time" ;;
  }

  dimension: hc_opers_only {
    type: number
    sql: ${TABLE}."HC (Opers# Only)" ;;
  }

  dimension: join_identifier__resources {
    type: string
    sql: ${TABLE}."Join Identifier - Resources" ;;
  }

  dimension: meeting_time {
    type: number
    sql: ${TABLE}."Meeting Time" ;;
  }

  dimension: net_hours__month {
    type: number
    sql: ${TABLE}."Net Hours / Month" ;;
  }

  dimension: net_hours__year {
    type: number
    sql: ${TABLE}."Net hours / Year" ;;
  }

  dimension: net_working_weeksyear {
    type: number
    sql: ${TABLE}."Net Working Weeks/Year" ;;
  }

  dimension: shift_duration_ {
    type: number
    sql: ${TABLE}."Shift Duration " ;;
  }

  dimension: subfunction {
    type: string
    sql: ${TABLE}."Sub-function" ;;
  }

  dimension: sup_soc {
    type: number
    sql: ${TABLE}."Sup# SOC" ;;
  }

  dimension: sups_per_shift {
    type: number
    sql: ${TABLE}."Sups# Per Shift" ;;
  }

  dimension: testing_group {
    type: string
    sql: ${TABLE}."Testing Group" ;;
  }

  dimension: training {
    type: number
    sql: ${TABLE}.Training ;;
  }

  dimension: vacation__holidays {
    type: number
    sql: ${TABLE}."Vacation + holidays" ;;
  }

  dimension: working_days__month {
    type: number
    sql: ${TABLE}."Working days / Month" ;;
  }

  dimension: working_days__year {
    type: number
    sql: ${TABLE}."Working days / Year" ;;
  }

  dimension: working_daysweek {
    type: number
    sql: ${TABLE}."Working Days/Week" ;;
  }

###### Measures ######
  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_working_days_month {
    label: "Working Days / Month"
    type: sum
    sql: ${working_days__month} ;;
  }

  measure: v_productive_shift_hours {
    type: sum
    sql: ((${shift_duration_} -
            (${v_gowning_hours} + ${v_break_hours} + ${v_meeting_hours} + ${v_training_hours})) *
          (${working_days__year} - ${v_vacations}) / ${working_days__year}) ;;
    value_format_name: decimal_0
  }

  measure: total_shift_duration {
    type: sum
    sql: ${shift_duration_} ;;
    value_format_name: decimal_0
  }

  measure: v_gowning_hours {
    type: sum
    sql: ${gowning_time} * (1+${param_gowning}) ;;
    value_format_name: decimal_0
  }

  measure: v_break_hours {
    type: sum
    sql: ${break_time} * (1+${param_break}) ;;
    value_format_name: decimal_0
  }

  measure: v_meeting_hours {
    type: sum
    sql: ${meeting_time} * (1+${param_meeting}) ;;
    value_format_name: decimal_0
  }

  measure: v_training_hours {
    type: sum
    sql: ${training} * (1+${param_training}) ;;
    value_format_name: decimal_0
  }

  measure: total_working_days_year {
    type: sum
    sql: ${working_days__year} ;;
  }

  measure: v_vacations {
    type: sum
    sql: ${vacation__holidays} * (1+${param_vacations}) ;;
    value_format_name: decimal_0
  }

  measure: total_gowning_time {
    type: sum
    sql: ${gowning_time} ;;
    value_format_name: decimal_0
  }

  measure: total_break_time {
    type: sum
    sql: ${break_time} ;;
    value_format_name: decimal_0
  }

  measure: total_meeting_time {
    type: sum
    sql: ${meeting_time} ;;
    value_format_name: decimal_0
  }

  measure: total_training {
    type: sum
    sql: ${training} ;;
    value_format_name: decimal_0
  }

  measure: total_vacation_holidays {
    label: "Total Vacation + Holidays"
    type: sum
    sql: ${vacation__holidays} ;;
    value_format_name: decimal_0
  }

}
