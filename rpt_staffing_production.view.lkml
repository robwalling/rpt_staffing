view: rpt_staffing_production {
  sql_table_name: dbo.RPT_Staffing_Production ;;

  ######## Parameters ########
  parameter: param_coverage {
    label: "Coverage"
    view_label: "Parameters"
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

  parameter: param_sublot {
    label: "Sub-lot"
    view_label: "Parameters"
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

  parameter: param_rework_rate {
    label: "Incremental Rate of Rework Rate"
    view_label: "Parameters"
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

  parameter: param_idle_time {
    label: "Idle Time"
    view_label: "Parameters"
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

  parameter: param_reactive_maintenance {
    label: "Reactive Maintenance per Lot"
    view_label: "Parameters"
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

  parameter: param_returned_excess_rm {
    label: "Returned Excess RM per Lot"
    view_label: "Parameters"
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

  parameter: param_change_control {
    label: "Change Control"
    view_label: "Parameters"
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

  parameter: param_electronic_br {
    label: "Electronic BR"
    view_label: "Parameters"
    type: number
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
    allowed_value: {label: "55%" value: "0.55"}
    allowed_value: {label: "60%" value: "0.60"}
    allowed_value: {label: "65%" value: "0.65"}
    allowed_value: {label: "70%" value: "0.70"}
    allowed_value: {label: "75%" value: "0.75"}
    allowed_value: {label: "80%" value: "0.80"}
    allowed_value: {label: "85%" value: "0.85"}
    allowed_value: {label: "90%" value: "0.90"}
    allowed_value: {label: "95%" value: "0.95"}
    allowed_value: {label: "100%" value: "1.00"}
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

  dimension_group: activity {
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

  dimension: join_identifier_mgmt {
    type: string
    sql: ${TABLE}."Join Identifier - Mgmt" ;;
  }

  dimension: join_identifier_resources {
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

  dimension: parameter_control {
    type: number
    sql: CASE
          WHEN ${parameter} = 'Reactive Maintenance' THEN 1+{% parameter param_reactive_maintenance %}
          WHEN ${parameter} = 'Return Excess RM' THEN 1+{% parameter param_returned_excess_rm %}
          WHEN ${parameter} = 'Rework Rate' THEN IIF(${sublot_multiplier} IS NOT NULL
                                                  , IIF(${sublot}='Sub-lot', ${sublot_multiplier}*(1+{% parameter param_sublot %})
                                                    ,${sublot_multiplier})
                                                  ,1)
          WHEN ${parameter} = 'Deviations' THEN ${rpt_staffing_deviation.deviation_count}*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
          WHEN ${parameter} = 'Change Control' THEN (1+{% parameter param_change_control %})
          WHEN ${parameter} = 'eBR' THEN {% parameter param_electronic_br %}
          WHEN ${parameter} = 'Paper' THEN 1-{% parameter param_returned_excess_rm %}
          ELSE 1
        END
          ;;
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

  measure: total_sublot {
    label: "Sub-lot Multiplier"
    type: sum
    sql: ${sublot} ;;
    value_format_name: decimal_0
  }

  measure: t_v_person_hours {
    type: number
    sql: ${sum_of_personhours} * ${parameter_control} * (1+ ${t_rework_work_calculation})
      * (1+ ${t_idle_time_calculation}) ;;
    value_format_name: decimal_0
  }

  measure: total_average_of_rework_rate {
    type: sum
    sql: ${average_of_rework_rate} ;;
    value_format_name: decimal_0
  }

  measure: total_average_of_idle_time {
    type: sum
    sql: ${average_of_idle_time} ;;
    value_format_name: decimal_0
  }

  measure: t_v_ftes {
    label: "T V FTEs"
    type: number
    sql: ${total_t_v_person_hours} / ${rpt_staffing_resource_hrs.v_productive_shift_hours} ;;
    value_format_name: decimal_0
  }

  measure: total_t_v_person_hours {
    type: number      # Rebecca changed this to number due to LookML errors
    sql: ${t_v_person_hours} ;;
    value_format_name: decimal_0
  }

# ------ Rebecca changed these back to measures due to LookML errors ------
# ("Field references an aggregate bus is specified as a 'dimension'.")
  measure: t_rework_work_calculation {
    type: number
    sql: ISNULL(${total_average_of_rework_rate}, 0)*(1+ {% parameter param_rework_rate %});;
    value_format_name: decimal_0
  }

  measure: t_idle_time_calculation {
    type: number
    sql: ISNULL(${total_average_of_idle_time}, 0)*(1+ {% parameter param_idle_time %});;
    value_format_name: decimal_0
  }
# --------------------------------------------------------------------------

# ------ Rebecca doesn't believe we need these; the above number types work in the Explore ------
#  measure: total_t_rework_work_calculation {
#    type: number      # Rebecca changed this to number due to LookML errors
#    sql: ${t_rework_work_calculation};;
#    value_format_name: decimal_0
#  }
#
#  measure: total_t_idle_time_calculation {
#    type: number      # Rebecca changed this to number due to LookML errors
#    sql: ${t_idle_time_calculation};;
#    value_format_name: decimal_0
#  }
# -----------------------------------------------------------------------------------------------

  measure: t_direct_ftes {
    label: "T Direct FTEs"
    type: number
    sql: CASE WHEN ${labour} = 'Direct' THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  measure: t_indirect_ftes {
    label: "T Indirect FTEs"
    type: number
    sql: CASE WHEN ${labour} = 'Indirect' THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  measure: direct_total_ftes {
    label: "Direct/Total FTEs"
    type: number
    sql: ${t_direct_ftes} / (${t_indirect_ftes} + ${t_direct_ftes}) ;;
    value_format_name: decimal_0
  }

  measure: indirect_total_ftes {
    label: "Indirect/Total FTEs"
    type: number
    sql: ${t_indirect_ftes} / (${t_direct_ftes} + ${t_indirect_ftes}) ;;
    value_format_name: decimal_0
  }

  measure: t_beta {
    label: "T Beta"
    type: sum
    sql: CASE WHEN {% parameter param_coverage %} = 0.75 then 0.674
            WHEN {% parameter param_coverage %} = 0.76 then 0.706
            WHEN {% parameter param_coverage %} = 0.77 then 0.738
            WHEN {% parameter param_coverage %} = 0.78 then 0.772
            WHEN {% parameter param_coverage %} = 0.79 then 0.806
            WHEN {% parameter param_coverage %} = 0.80 then 0.841
            WHEN {% parameter param_coverage %} = 0.81 then 0.877
            WHEN {% parameter param_coverage %} = 0.82 then 0.915
            WHEN {% parameter param_coverage %} = 0.83 then 0.954
            WHEN {% parameter param_coverage %} = 0.84 then 0.994
            WHEN {% parameter param_coverage %} = 0.85 then 1.036
            WHEN {% parameter param_coverage %} = 0.86 then 1.080
            WHEN {% parameter param_coverage %} = 0.87 then 1.126
            WHEN {% parameter param_coverage %} = 0.88 then 1.174
            WHEN {% parameter param_coverage %} = 0.89 then 1.226
            WHEN {% parameter param_coverage %} = 0.90 then 1.281
            WHEN {% parameter param_coverage %} = 0.91 then 1.340
            WHEN {% parameter param_coverage %} = 0.92 then 1.405
            WHEN {% parameter param_coverage %} = 0.93 then 1.475
            WHEN {% parameter param_coverage %} = 0.94 then 1.554
            WHEN {% parameter param_coverage %} = 0.95 then 1.644
            WHEN {% parameter param_coverage %} = 0.96 then 1.750
            WHEN {% parameter param_coverage %} = 0.97 then 1.880
            WHEN {% parameter param_coverage %} = 0.98 then 2.053
            WHEN {% parameter param_coverage %} = 0.99 then 2.326
            ELSE null
            END ;;
  }

  measure: beta {
    type: sum
    sql: CASE WHEN {% parameter param_coverage %} = 0.75 then 0.674
            WHEN {% parameter param_coverage %} = 0.76 then 0.706
            WHEN {% parameter param_coverage %} = 0.77 then 0.738
            WHEN {% parameter param_coverage %} = 0.78 then 0.772
            WHEN {% parameter param_coverage %} = 0.79 then 0.806
            WHEN {% parameter param_coverage %} = 0.80 then 0.841
            WHEN {% parameter param_coverage %} = 0.81 then 0.877
            WHEN {% parameter param_coverage %} = 0.82 then 0.915
            WHEN {% parameter param_coverage %} = 0.83 then 0.954
            WHEN {% parameter param_coverage %} = 0.84 then 0.994
            WHEN {% parameter param_coverage %} = 0.85 then 1.036
            WHEN {% parameter param_coverage %} = 0.86 then 1.080
            WHEN {% parameter param_coverage %} = 0.87 then 1.126
            WHEN {% parameter param_coverage %} = 0.88 then 1.174
            WHEN {% parameter param_coverage %} = 0.89 then 1.226
            WHEN {% parameter param_coverage %} = 0.90 then 1.281
            WHEN {% parameter param_coverage %} = 0.91 then 1.340
            WHEN {% parameter param_coverage %} = 0.92 then 1.405
            WHEN {% parameter param_coverage %} = 0.93 then 1.475
            WHEN {% parameter param_coverage %} = 0.94 then 1.554
            WHEN {% parameter param_coverage %} = 0.95 then 1.644
            WHEN {% parameter param_coverage %} = 0.96 then 1.750
            WHEN {% parameter param_coverage %} = 0.97 then 1.880
            WHEN {% parameter param_coverage %} = 0.98 then 2.053
            WHEN {% parameter param_coverage %} = 0.99 then 2.326
            ELSE null
            END ;;
  }

  measure: ftes {
    label: "FTEs"
    type: number
    sql: (${total_person_hours} *
            CASE WHEN ${parameter} = 'eBR' THEN {% parameter param_electronic_br %}
                 WHEN ${parameter} = 'Paper' THEN (1- % parameter param_electronic_br %})
                 ELSE 1
                 END)
          / ${rpt_staffing_resource_hrs.v_productive_shift_time} ;;
    value_format_name: decimal_0
  }

  measure: sublot_count_v {
    label: "Sub-lot Count V"
    type: sum
    sql: CASE WHEN ${sublot} = 'Sub-lot' THEN ${sublot_multiplier} * (1+ {% parameter param_sublot %})
              ELSE ${sublot_multiplier}
              END ;;
  }

  measure: para_idle_time_calc_v {
    type: number
    sql: (1+ % parameter param_idle_time %}) * ISNULL(${total_average_of_idle_time}, 0) ;;
    value_format_name: decimal_0
  }

  measure: rework_rate_d {
    type: number
    sql: ISNULL(${total_average_of_rework_rate}, 0) ;;
    value_format_name: decimal_0
  }

}
