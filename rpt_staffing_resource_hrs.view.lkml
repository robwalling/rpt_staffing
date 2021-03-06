view: rpt_staffing_resource_hrs {
  sql_table_name: dbo.RPT_Staffing_Resource_HRS ;;

###### Parameters ######
  parameter: param_gowning {
    label: "Gowning Hours"
    view_label: "Parameters"
    default_value: "0.20"
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
    view_label: "Parameters"
    default_value: "0.20"
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
    view_label: "Parameters"
    default_value: "0.20"
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
    view_label: "Parameters"
    default_value: "0.20"
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
    view_label: "Parameters"
    default_value: "0.20"
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

  parameter: param_soc {
    label: "SOC"
    view_label: "Parameters"
    default_value: "Sups. by SOC"
    type: string
    allowed_value: {label: "Sups. by SOC" value: "Sups. by SOC"}
    allowed_value: {label: "Sups. by Shifts" value: "Sups. by Shifts"}
  }

  parameter: param_rework {
    label: "Incremental Rework Rate"
    view_label: "Parameters"
    default_value: "0.20"
    type: number
    allowed_value: {label: "-100%" value: "-1.00"}
    allowed_value: {label: "-90%" value: "-0.90"}
    allowed_value: {label: "-80%" value: "-0.80"}
    allowed_value: {label: "-70%" value: "-0.70"}
    allowed_value: {label: "-60%" value: "-0.60"}
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
    allowed_value: {label: "60%" value: "0.60"}
    allowed_value: {label: "70%" value: "0.70"}
    allowed_value: {label: "80%" value: "0.80"}
    allowed_value: {label: "90%" value: "0.90"}
    allowed_value: {label: "100%" value: "1.00"}
  }

###### Dimensions ######
  dimension: number_of_shifts {
    type: number
    sql: ${TABLE}."# of Shifts" ;;
  }

  dimension: assets {
    hidden: yes
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

  dimension: join_identifier_resources {
    type: string
    primary_key: yes                # Added by Rebecca
    sql: ${TABLE}."Join Identifier - Resources" ;;
    hidden: yes
  }

  dimension: meeting_time {
    type: number
    sql: ${TABLE}."Meeting Time" ;;
  }

  dimension: net_hours_month {
    label: "Net Hours/Month"
    type: number
    sql: ${TABLE}."Net Hours / Month" ;;
  }

  dimension: net_hours_year {
    label: "Net Hours/Year"
    type: number
    sql: ${TABLE}."Net hours / Year" ;;
  }

  dimension: net_working_weeksyear {
    label: "Net Working Weeks/Year"
    type: number
    sql: ${TABLE}."Net Working Weeks/Year" ;;
  }

  dimension: shift_duration {
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

  dimension: vacation_holidays {
    type: number
    sql: ${TABLE}."Vacation + holidays" ;;
  }

  dimension: working_days_month {
    label: "Working Days / Month"
    type: number
    sql: ${TABLE}."Working days / Month" ;;
  }

  dimension: working_days_year {
    label: "Working Days / Year"
    type: number
    sql: ${TABLE}."Working days / Year" ;;
  }

  dimension: working_days_week {
    label: "Working Days / Week"
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
    sql: ${working_days_month} ;;
  }

  measure: average_working_days_month {
    label: "Average Working Days / Month"
    type: average
    sql: ${working_days_month} ;;
  }

#   measure: v_productive_shift_hours {
#     type: number
#     sql: ((${total_shift_duration} -
#             (${v_gowning_hours} + ${v_break_hours} + ${v_meeting_hours} + ${v_training_hours})) *
#           (${total_working_days_year} - ${v_vacations}) / ${total_working_days_year}) ;;
#     value_format_name: decimal_1
#   }

  dimension: v_productive_shift_hours {
    type: number
    sql: ((${shift_duration} -
            (${v_gowning_hours} + ${v_break_hours} + ${v_meeting_hours} + ${v_training_hours})) *
          (${working_days_year} - ${v_vacations}) / ${working_days_year}) ;;
    value_format_name: decimal_1
  }

  measure: total_shift_duration {
    type: sum
    sql: ${shift_duration} ;;
    value_format_name: decimal_1
  }

#   measure: v_gowning_hours {
#     type: sum
#     sql: ${gowning_time} * (1+ {% parameter param_gowning %}) ;;
#     value_format_name: decimal_1
#   }

  dimension: v_gowning_hours {
    type: number
    sql: ${gowning_time} * (1+ {% parameter param_gowning %}) ;;
    value_format_name: decimal_1
  }

#   measure: v_break_hours {
#     type: sum
#     sql: ${break_time} * (1+ {% parameter param_break %}) ;;
#     value_format_name: decimal_1
#   }

  dimension: v_break_hours {
    type: number
    sql: ${break_time} * (1+ {% parameter param_break %}) ;;
    value_format_name: decimal_1
  }

#   measure: v_meeting_hours {
#     type: sum
#     sql: ${meeting_time} * (1+ {% parameter param_meeting %}) ;;
#     value_format_name: decimal_1
#   }

  dimension: v_meeting_hours {
    type: number
    sql: ${meeting_time} * (1+ {% parameter param_meeting %}) ;;
    value_format_name: decimal_1
  }

#   measure: v_training_hours {
#     type: sum
#     sql: ${training} * (1+ {% parameter param_training %}) ;;
#     value_format_name: decimal_1
#   }

  dimension: v_training_hours {
    type: number
    sql: ${training} * (1+ {% parameter param_training %}) ;;
    value_format_name: decimal_1
  }

  measure: total_working_days_year {
    type: sum
    sql: ${working_days_year} ;;
  }

#   measure: v_vacations {
#     type: sum
#     sql: ${vacation_holidays} * (1+ {% parameter param_vacations %}) ;;
#     value_format_name: decimal_1
#   }

  dimension: v_vacations {
    type: number
    sql: ${vacation_holidays} * (1+ {% parameter param_vacations %}) ;;
    value_format_name: decimal_1
  }

  measure: total_gowning_time {
    type: sum
    sql: ${gowning_time} ;;
    value_format_name: decimal_1
  }

  measure: total_break_time {
    type: sum
    sql: ${break_time} ;;
    value_format_name: decimal_1
  }

  measure: total_meeting_time {
    type: sum
    sql: ${meeting_time} ;;
    value_format_name: decimal_1
  }

  measure: total_training {
    type: sum
    sql: ${training} ;;
    value_format_name: decimal_1
  }

  measure: total_vacation_holidays {
    label: "Total Vacation + Holidays"
    type: sum
    sql: ${vacation_holidays} ;;
    value_format_name: decimal_1
  }

  measure: avg_staff_efficiency_future {
    label: "AVG(Staff Efficiency - Future)"
    type: number
    sql: SUM(${v_productive_shift_hours}) / ${total_shift_duration} ;;
    value_format_name: percent_1
  }

  measure: avg_staff_efficiency_current {
    label: "AVG(Staff Efficiency - Current)"
    type: number
    sql: ${d_productive_shift_hours} / ${total_shift_duration} ;;
    value_format_name: percent_1
  }

  measure: d_productive_shift_hours {
    type: number
    sql: ((${total_shift_duration} -
            (${total_break_time} + ${total_meeting_time} + ${total_gowning_time} + ${total_training})) *
          (${total_working_days_year} - ${total_vacation_holidays})) / ${total_working_days_year} ;;
    value_format_name: decimal_1
  }

  measure: sl_total_supervisors_direct {
    label: "SL Total Supervisors - Direct"
    type: number
    sql: ${sl_total_supervisors} * ${rpt_staffing_production.direct_total_ftes} * 0.94701 ;;
    value_format_name: decimal_1
  }

  measure: sl_total_supervisors_indirect {
    label: "SL Total Supervisors - Indirect"
    type: number
    sql: ${sl_total_supervisors} * ${rpt_staffing_production.indirect_total_ftes} * 1.02638 ;;
    value_format_name: decimal_1
  }

# ------ Edited not to use the DTs include_function_subfunction_testinggroup ------
# ------ and include_subfunction_testinggroup -------------------------------------
  measure: sl_total_supervisors {
    label: "SL Total Supervisors"
    type: number
    sql: CASE WHEN {% parameter param_soc %} = 'Sups. by Shifts'
                THEN ${sups_by_shifts_v}
              ELSE CAST(${rpt_staffing_production.sl_total_ops} as int)
                    / ${t_soc_v}
              END ;;
    value_format_name: decimal_1
  }
# ---------------------------------------------------------------------------------

# ------ Non-DT versions ------
  measure: sups_by_shifts_v {
    label: "Sups. by Shifts V"
    type: number
    sql: AVG(${sups_per_shift} * ${number_of_shifts})
          * (1+ {% parameter rpt_staffing_production.param_span_of_control %}) ;;
  }

  measure: t_soc_v {
    label: "T SOC V"
    type: number
    sql: (AVG(${sup_soc} * ${hc_opers_only}) / AVG(${hc_opers_only}))
          * (1+ {% parameter rpt_staffing_production.param_span_of_control %}) ;;
  }
# -----------------------------

  measure: total_sups_per_shift {
    type: sum
    sql: ${sups_per_shift} ;;
  }

  measure: total_number_of_shifts {
    label: "Total # of Shifts"
    type: sum
    sql: ${number_of_shifts} ;;
  }

  measure: variable_break_time {
    type: number
    sql: ${total_break_time} * (1+ {% parameter param_break %}) ;;
    value_format_name: decimal_1
  }

  measure: variable_gowning_time {
    type: number
    sql: ${total_gowning_time} * (1+ {% parameter param_gowning %}) ;;
    value_format_name: decimal_1
  }

  measure: variable_meeting_time {
    type: number
    sql: ${total_meeting_time} * (1+ {% parameter param_meeting %}) ;;
    value_format_name: decimal_1
  }

  measure: variable_training_hours {
    type: number
    sql: ${total_training} * (1+ {% parameter param_training %}) ;;
    value_format_name: decimal_1
  }

  measure: variable_vacations {
    type: number
    sql: ${total_vacation_holidays} * (1+ {% parameter param_vacations %}) ;;
    value_format_name: decimal_1
  }

  dimension: v_productive_shift_time {
    type: number
    sql: ((${shift_duration} -
            (${break_time} * (1+ {% parameter param_break %})) + (${gowning_time} * (1+ {% parameter param_gowning %}))
              + (${meeting_time} * (1+ {% parameter param_meeting %})) + (${training} * (1+ {% parameter param_training %})))
            * (${working_days_year} - (${vacation_holidays} * (1+ {% parameter param_vacations %}))))
          / ${working_days_year} ;;
  }

  measure: total_v_productive_shift_time {
    type: number
    sql: ((${total_shift_duration} - (${variable_break_time} + ${variable_gowning_time}
              + ${variable_meeting_time} + ${variable_training_hours})) *
            (${total_working_days_year} - ${variable_vacations}))
          / ${total_working_days_year} ;;
    value_format_name: decimal_3
  }

  measure: sl_direct_sups {
    label: "SL Direct Sups."
    type: number
    sql: ${sl_total_supervisors} * ${rpt_staffing_production.direct_total_ftes} * 0.94701 ;;
    value_format_name: decimal_4
  }

}
