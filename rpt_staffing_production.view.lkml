view: rpt_staffing_production {
  sql_table_name: dbo.RPT_Staffing_Production ;;

  ######## Parameters ########
  parameter: param_coverage {
    label: "Coverage"
    view_label: "Parameters"
    default_value: "0.80"
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
    default_value: "0.50"
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
    default_value: "0.50"
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
    default_value: "0.50"
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

  parameter: param_returned_excess_rm {
    label: "Returned Excess RM per Lot"
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

  parameter: param_change_control {
    label: "Change Control"
    view_label: "Parameters"
    default_value: "0.50"
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
    default_value: "0.20"
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

  parameter: param_span_of_control {
    label: "Span of Control"
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

  ######## Dimensions ########

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."#" ;;
    hidden: yes
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
#     hidden: yes
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
    value_format_name: decimal_1
  }

  measure: total_person_hours {
    type: sum
    sql: ${sum_of_personhours} ;;
    value_format_name: decimal_1
  }

  measure: total_sublot {
    label: "Sub-lot Multiplier"
    type: sum
    sql: ${sublot_multiplier} ;;
    value_format_name: decimal_1
  }

#   measure: t_v_person_hours {
#     type: number
#     sql: ${total_person_hours} * ${parameter_control} * (1+ ${t_rework_work_calculation})
#       * (1+ ${t_idle_time_calculation}) ;;
#     value_format_name: decimal_1
#   }

  dimension: t_v_person_hours {
    type: number
    sql: ${sum_of_personhours} * ${parameter_control} * (1+ ${t_rework_work_calculation})
      * (1+ ${t_idle_time_calculation}) ;;
    value_format_name: decimal_1
  }

  measure: total_average_of_rework_rate {
    type: sum
    sql: ${average_of_rework_rate} ;;
    value_format_name: decimal_1
  }

  measure: total_average_of_idle_time {
    type: sum
    sql: ${average_of_idle_time} ;;
    value_format_name: decimal_1
  }

#   measure: t_v_ftes {
#     label: "T V FTEs"
#     type: number
#     sql: ${total_t_v_person_hours} / ${rpt_staffing_resource_hrs.v_productive_shift_hours} ;;
#     value_format_name: decimal_1
#   }

  dimension: t_v_ftes {
    label: "T V FTEs"
    type: number
    sql: ${t_v_person_hours} / nullif(${rpt_staffing_resource_hrs.v_productive_shift_hours},0) ;;
    value_format_name: decimal_1
  }

  measure: total_t_v_ftes {
    label: "Total T V FTEs"
    type: sum
    sql: ${t_v_ftes} ;;
    value_format_name: decimal_1
  }

  measure: t_average_ftes {
    label: "T Average FTEs"
    type: number
    sql: 1.0*(${total_t_v_ftes})/nullif(1.0*${rpt_staffing_resource_hrs.average_working_days_month}, 0) ;;
    value_format_name: decimal_2
  }

  measure: total_t_v_person_hours {
    type: sum      # Rebecca changed this to number due to LookML errors #Maire changed this back to a sum
    sql: ${t_v_person_hours} ;;
    value_format_name: decimal_1
  }

# ------ Rebecca changed these back to measures due to LookML errors ------
# ("Field references an aggregate bus is specified as a 'dimension'.")
# The above was occurring because there were mixed measures and dimensions - this needs to be rectified

##NOTE: MAIRE - CHANGING ALL OF THESE BACK TO DIMENSIONS - THEY ARE ROW LEVEL CALCULATIONS THAT GET AGGREGATED AT THE END
##THERE ARE A FEW SCENARIOS IN WHICH SUMS OR AVERAGES ARE PRESENT WITHIN THE CALCULATION,
##BUT WHEN THIS DOESN'T HAPPEN, THESE NEED TO BE CALCULATED AT A ROW LEVEL AND THEN AGGREGATED
#   measure: t_rework_work_calculation {
#     type: number
#     sql: ISNULL(${total_average_of_rework_rate}, 0)*(1+ {% parameter param_rework_rate %});;
#     value_format_name: decimal_1
#   }
#
#   measure: t_idle_time_calculation {
#     type: number
#     sql: ISNULL(${total_average_of_idle_time}, 0)*(1+ {% parameter param_idle_time %});;
#     value_format_name: decimal_1
#   }

  dimension: t_rework_work_calculation {
    type: number
    sql: ISNULL(${average_of_rework_rate}, 0)*(1+ {% parameter param_rework_rate %});;
    value_format_name: decimal_2
  }

  dimension: t_idle_time_calculation {
    type: number
    sql: ISNULL(${average_of_idle_time}, 0)*(1+ {% parameter param_idle_time %});;
    value_format_name: decimal_2
  }

# --------------------------------------------------------------------------

# ------ Rebecca doesn't believe we need these; the above number types work in the Explore ------
#  measure: total_t_rework_work_calculation {
#    type: number      # Rebecca changed this to number due to LookML errors
#    sql: ${t_rework_work_calculation};;
#    value_format_name: decimal_1
#  }
#
#  measure: total_t_idle_time_calculation {
#    type: number      # Rebecca changed this to number due to LookML errors
#    sql: ${t_idle_time_calculation};;
#    value_format_name: decimal_1
#  }
# -----------------------------------------------------------------------------------------------

# ------ Alternatively, may use include_function_subfunction.mgmt_count ------
# ------ instead of rpt_staffing_mgmt_count.total_managers. ------------------
  measure: agg_sl_total_ftes {
    label: "AGG(SL Total FTEs)"
    type: number
    sql: ISNULL(${sl_total_ops_direct_using_ratio},0) + ISNULL(${sl_total_ops_indirect_using_ratio},0)
          + ISNULL(${rpt_staffing_resource_hrs.sl_total_supervisors_direct},0)
          + ISNULL(${rpt_staffing_resource_hrs.sl_total_supervisors_indirect},0)
          + ${rpt_staffing_mgmt_count.total_managers};;
    value_format_name: decimal_1
  }
# -----------------------------------------------------------------------------------------------

  measure: sl_total_ops_direct_using_ratio {
    label: "SL Total Ops - Direct - Using Ratio"
    type: number
    sql: ${sl_total_ops} * ${direct_total_ftes} * 0.94701
          + CASE WHEN ${t_activity_year} = 2017 THEN 2.8
                 WHEN ${t_activity_year} = 2018 THEN 5.1
                 ELSE 0
                 END ;;
    value_format_name: decimal_1
  }

  measure: sl_total_ops_indirect_using_ratio {
    label: "SL Total Ops - Indirect - Using Ratio"
    type: number
    sql: ${sl_total_ops} * ${indirect_total_ftes} * 1.02638
          + CASE WHEN ${t_activity_year} = 2017 THEN 3
                 WHEN ${t_activity_year} = 2018 THEN -1.1
                 ELSE 0
                 END ;;
    value_format_name: decimal_1
  }

# ------ Alternatively, avg_others_operators may come from the DT include_function_subfunction ------
  measure: sl_total_ops {
    label: "SL Total Ops"
    description: "Requires T Activity Year for AA SF Growth Factor"
    type: number
    sql: ${sl_production_ops} + ${sl_sf_ops} * ${aa_sf_growth_factor_by_year}
          + ${rpt_staffing_mgmt_count.avg_others_operators} ;;
    value_format_name: decimal_1
  }
# ---------------------------------------------------------------------------------------------------

  measure: direct_total_ftes {
    label: "Direct/Total FTEs"
    type: number
    sql: ${t_direct_ftes} / nullif((${t_indirect_ftes} + ${t_direct_ftes}), 0) ;;
    value_format_name: percent_1
  }

  measure: indirect_total_ftes {
    label: "Indirect/Total FTEs"
    type: number
    sql: ${t_indirect_ftes} / nullif((${t_direct_ftes} + ${t_indirect_ftes}), 0) ;;
    value_format_name: percent_1
  }

  measure: sl_production_ops {
    label: "SL Production Ops"
    type: number
    sql: AVG(${prd_20k_dsp_avg_ops})
            + ${t_beta}* ISNULL(STDEV(${prd_20k_dsp_avg_ops}), 0)
          + AVG(${prd_20k_usp_avg_ops})
            + ${t_beta}*0.65* ISNULL(STDEV(${prd_20k_usp_avg_ops}), 0)
          + AVG(${prd_5k_dsp_avg_ops})
            + ${t_beta}* ISNULL(STDEV(${prd_5k_dsp_avg_ops}), 0)
          + AVG(${prd_5k_usp_avg_ops})
            + ${t_beta}*0.65* ISNULL(STDEV(${prd_5k_usp_avg_ops}), 0)
          + AVG(${prd_mono_dsp_avg_ops})
            + ${t_beta}* ISNULL(STDEV(${prd_mono_dsp_avg_ops}), 0)
          + AVG(${prd_mono_usp_avg_ops})
            + ${t_beta}*0.65* ISNULL(STDEV(${prd_mono_usp_avg_ops}), 0)
          + AVG(${prd_ct_usp_avg_ops})
            + ${t_beta}*0.65* ISNULL(STDEV(${prd_ct_usp_avg_ops}), 0)
          + AVG(${prd_p5_dsp_avg_ops})
            + ${t_beta}* ISNULL(STDEV(${prd_p5_dsp_avg_ops}), 0) ;;
    value_format_name: decimal_3
  }

#  measure: sl_production_ops {
#    label: "SL Production Ops"
#    type: number
#    sql: ${include_t_activity_date.prd_20k_dsp_avg_ops}
#            + ${t_beta}* ISNULL(STDEV(${prd_20k_dsp_avg_ops}), 0)
#          + ${include_t_activity_date.prd_20k_usp_avg_ops}
#            + ${t_beta}*0.65* ISNULL(STDEV(${prd_20k_usp_avg_ops}), 0)
#          + ${include_t_activity_date.prd_5k_dsp_avg_ops}
#            + ${t_beta}* ISNULL(STDEV(${include_t_activity_date.dim_prd_5k_dsp_avg_ops}), 0)
#          + ${include_t_activity_date.prd_5k_usp_avg_ops}
#            + ${t_beta}*0.65* ISNULL(STDEV(${include_t_activity_date.dim_prd_5k_usp_avg_ops}), 0)
#          + ${include_t_activity_date.prd_mono_dsp_avg_ops}
#            + ${t_beta}* ISNULL(STDEV(${include_t_activity_date.dim_prd_mono_dsp_avg_ops}), 0)
#          + ${include_t_activity_date.prd_mono_usp_avg_ops}
#            + ${t_beta}*0.65* ISNULL(STDEV(${include_t_activity_date.dim_prd_mono_usp_avg_ops}), 0)
#          + ${include_t_activity_date.prd_ct_usp_avg_ops}
#            + ${t_beta}*0.65* ISNULL(STDEV(${include_t_activity_date.dim_prd_ct_usp_avg_ops}), 0)
#          + ${include_t_activity_date.prd_p5_dsp_avg_ops}
#            + ${t_beta}* ISNULL(STDEV(${include_t_activity_date.dim_prd_p5_dsp_avg_ops}), 0);;
#    value_format_name: decimal_3
#  }

  measure: sl_sf_ops {
    label: "SL SF Ops"
    description: "Should use with T Activity Month dimension"
    type: number
    sql: AVG(${sf_qc_avg_ops})
            + ${t_beta}*0.9* ISNULL(STDEV(${sf_qc_avg_ops}), 0)
          + AVG(${sf_qa_avg_ops})
            + ${t_beta}*0.9* ISNULL(STDEV(${sf_qa_avg_ops}), 0)
          + AVG(${sf_engineering_avg_ops})
            + ${t_beta}*0.9* ISNULL(STDEV(${sf_engineering_avg_ops}), 0)
          + AVG(${sf_ppl_avg_ops})
            + ${t_beta}*0.9* ISNULL(STDEV(${sf_ppl_avg_ops}), 0)
          + AVG(${sf_production_services_avg_ops})
            + ${t_beta}*0.9* ISNULL(STDEV(${sf_production_services_avg_ops}), 0)
          + AVG(${sf_msat_avg_ops})
            + ${t_beta}*0.9* ISNULL(STDEV(${sf_msat_avg_ops}), 0)
          + AVG(${sf_mfg_support_avg_ops})
            + ${t_beta}*0.9* ISNULL(STDEV(${sf_mfg_support_avg_ops}), 0) ;;
    value_format_name: decimal_3
  }

#  measure: sl_sf_ops {
#    label: "SL SF Ops"
#    description: "Should use with T Activity Month dimension"
#    type: number
#    sql: ${include_t_activity_month.sf_qc_avg_ops}
#            + ${t_beta}*0.9* ISNULL(STDEV(${include_t_activity_month.dim_sf_qc_avg_ops}), 0)
#          + ${include_t_activity_month.sf_qa_avg_ops}
#            + ${t_beta}*0.9* ISNULL(STDEV(${include_t_activity_month.dim_sf_qa_avg_ops}), 0)
#          + ${include_t_activity_month.sf_engineering_avg_ops}
#            + ${t_beta}*0.9* ISNULL(STDEV(${include_t_activity_month.dim_sf_engineering_avg_ops}), 0)
#          + ${include_t_activity_month.sf_ppl_avg_ops}
#            + ${t_beta}*0.9* ISNULL(STDEV(${include_t_activity_month.dim_sf_ppl_avg_ops}), 0)
#          + ${include_t_activity_month.sf_production_services_avg_ops}
#            + ${t_beta}*0.9* ISNULL(STDEV(${include_t_activity_month.dim_sf_production_services_avg_ops}), 0)
#          + ${include_t_activity_month.sf_msat_avg_ops}
#            + ${t_beta}*0.9* ISNULL(STDEV(${include_t_activity_month.dim_sf_msat_avg_ops}), 0)
#          + ${include_t_activity_month.sf_mfg_support_avg_ops}
#            + ${t_beta}*0.9* ISNULL(STDEV(${include_t_activity_month.dim_sf_manufacturing_avg_ops}), 0);;
#    value_format_name: decimal_3
#  }

  measure: aa_sf_growth_factor_by_year {
    label: "AA SF Growth Factor by Year"
    type: number
    sql: CASE WHEN ${t_activity_year} = 2017 THEN 1
              WHEN ${t_activity_year} = 2018 THEN ${aa_growth_factor_2018}
              WHEN ${t_activity_year} = 2019 THEN ${aa_growth_factor_2019}
              WHEN ${t_activity_year} = 2020 THEN ${aa_growth_factor_2020}
              WHEN ${t_activity_year} = 2021 THEN ${aa_growth_factor_2021}
              WHEN ${t_activity_year} = 2022 THEN ${aa_growth_factor_2022}
              ELSE 1
              END ;;
  }

  measure: t_direct_ftes {
    label: "T Direct FTEs"
    type: number
    sql: CASE WHEN ${labour} = 'Direct' THEN ${total_t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }

  measure: t_indirect_ftes {
    label: "T Indirect FTEs"
    type: number
    sql: CASE WHEN ${labour} = 'Indirect' THEN ${total_t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_1
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
            ELSE 0
            END ;;
  }

# ------ Alternatives to DTs include_t_activity_date and include_t_activity_month ------
  dimension: prd_20k_dsp_avg_ops {
    label: "Prd 20K DSP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = '20K' AND ${suite} = 'Downstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: prd_20k_usp_avg_ops {
    label: "Prd 20K USP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = '20K' AND ${suite} = 'Upstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: prd_5k_dsp_avg_ops {
    label: "Prd 5K DSP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = '5K' AND ${suite} = 'Downstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: prd_5k_usp_avg_ops {
    label: "Prd 5K USP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = '5K' AND ${suite} = 'Upstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: prd_mono_dsp_avg_ops {
    label: "Prd Mono DSP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = 'Mono' AND ${suite} = 'Downstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: prd_mono_usp_avg_ops {
    label: "Prd Mono USP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = 'Mono' AND ${suite} = 'Upstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: prd_ct_usp_avg_ops {
    label: "Prd CT USP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = 'CT' AND ${suite} = 'Upstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: prd_p5_dsp_avg_ops {
    label: "Prd P5 DSP Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND ${asset} = 'P5' AND ${suite} = 'Downstream'
                THEN ${t_v_ftes}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: sf_qc_avg_ops {
    label: "SF QC Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'QC' THEN ${t_v_ftes_net_of_month_days}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: t_v_ftes_net_of_month_days {
    label: "T V FTEs - Net of Month Days"
    type: number
    sql: ${t_v_person_hours} /
      nullif((${rpt_staffing_resource_hrs.v_productive_shift_hours} * ${rpt_staffing_resource_hrs.working_days_month}), 0) ;;
  }

  dimension: sf_qa_avg_ops {
    label: "SF QA Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'QA' THEN ${t_v_ftes_net_of_month_days}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: sf_engineering_avg_ops {
    label: "SF Engineering Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Engineering' THEN ${t_v_ftes_net_of_month_days}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: sf_ppl_avg_ops {
    label: "SF PP&L Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'PP&L' THEN ${t_v_ftes_net_of_month_days}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: sf_production_services_avg_ops {
    label: "SF Production Services Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Production Services' THEN ${t_v_ftes_net_of_month_days}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: sf_msat_avg_ops {
    label: "SF MSAT Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'MSAT' THEN ${t_v_ftes_net_of_month_days}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

  dimension: sf_mfg_support_avg_ops {
    label: "SF Mfg Support Avg Ops"
    type: number
    sql: CASE WHEN ${function} = 'Manufacturing' AND
                  (${rpt_staffing_resource_hrs.subfunction} = 'Deviations Investigation' OR
                    ${rpt_staffing_resource_hrs.subfunction} = 'Production Services')
                THEN ${t_v_ftes_net_of_month_days}
              ELSE 0
              END ;;
    value_format_name: decimal_0
  }

# ------ Duplicates the dimension above (t_v_ftes_net_of_month_days); may remove later ------
  measure: t_v_ftes_net_of_month {
    label: "T V FTEs - Net of Month Days"
    type: number
    sql: (${total_t_v_person_hours}/ nullif(${rpt_staffing_resource_hrs.v_productive_shift_hours}, 0))
          * ${rpt_staffing_resource_hrs.total_working_days_month} ;;
    value_format_name: decimal_1
  }
# -------------------------------------------------------------------------------------------

  measure: aa_growth_factor_2018 {
    label: "AA Growth Factor 2018"
    type: number
    sql: ${aa_prd_fte_hrs_2018}/nullif(${aa_prd_fte_hrs_2017},0) ;;
    value_format_name: percent_1
  }

  measure: aa_growth_factor_2019 {
    label: "AA Growth Factor 2019"
    type: number
    sql: ${aa_prd_fte_hrs_2019}/nullif(${aa_prd_fte_hrs_2017},0) ;;
    value_format_name: percent_1
  }

  measure: aa_growth_factor_2020 {
    label: "AA Growth Factor 2020"
    type: number
    sql: ${aa_prd_fte_hrs_2020}/nullif(${aa_prd_fte_hrs_2017},0) ;;
    value_format_name: percent_1
  }

  measure: aa_growth_factor_2021 {
    label: "AA Growth Factor 2021"
    type: number
    sql: ${aa_prd_fte_hrs_2021}/nullif(${aa_prd_fte_hrs_2017},0) ;;
    value_format_name: percent_1
  }

  measure: aa_growth_factor_2022 {
    label: "AA Growth Factor 2022"
    type: number
    sql: ${aa_prd_fte_hrs_2022}/nullif(${aa_prd_fte_hrs_2017},0) ;;
    value_format_name: percent_1
  }

# ------ May need to get [ftes] from exclude_production_fields ------
  measure: aa_prd_fte_hrs_2018 {
    label: "AA Prd FTE Hrs in 2018"
    type: number
    sql: CASE WHEN ${activity_year} = 2018
                THEN AVG(${ftes})/1200 + ${beta} * STDEV(${ftes}) - 3.6
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }

  measure: aa_prd_fte_hrs_2017 {
    label: "AA Prd FTE Hrs in 2017"
    type: number
    sql: CASE WHEN ${activity_year} = 2017
                THEN AVG(${ftes})/1200 + ${beta} * STDEV(${ftes})
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }

  measure: aa_prd_fte_hrs_2019 {
    label: "AA Prd FTE Hrs in 2019"
    type: number
    sql: CASE WHEN ${activity_year} = 2019
                THEN AVG(${ftes})/1200 + ${beta} * STDEV(${ftes})
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }

  measure: aa_prd_fte_hrs_2020 {
    label: "AA Prd FTE Hrs in 2020"
    type: number
    sql: CASE WHEN ${activity_year} = 2020
                THEN AVG(${ftes})/1200 + ${beta} * STDEV(${ftes})
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }

  measure: aa_prd_fte_hrs_2021 {
    label: "AA Prd FTE Hrs in 2021"
    type: number
    sql: CASE WHEN ${activity_year} = 2021
                THEN AVG(${ftes})/1200 + ${beta} * STDEV(${ftes})
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }

  measure: aa_prd_fte_hrs_2022 {
    label: "AA Prd FTE Hrs in 2022"
    type: number
    sql: CASE WHEN ${activity_year} = 2022
                THEN AVG(${ftes})
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }
# -------------------------------------------------------------------

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
            ELSE 0
            END ;;
  }

  dimension: ftes {
    label: "FTEs"
    type: number
    sql: (CASE WHEN ${sublot_multiplier} is not null
                THEN (CASE WHEN ${sublot} = 'Sub-lot' THEN ${sublot_multiplier} * (1+ {% parameter param_sublot %})
                          ELSE ${sublot_multiplier}
                          END) * ${sum_of_personhours} * (1+ {% parameter param_rework_rate %})
                  * (1+ ${dim_para_idle_time_calc_v})
              ELSE ${sum_of_personhours} * (1+ {% parameter param_rework_rate %})
                  * (1+ ${dim_para_idle_time_calc_v})
              END
          *
            CASE WHEN ${parameter} = 'eBR' THEN {% parameter param_electronic_br %}
                WHEN ${parameter} = 'Paper' THEN (1- {% parameter param_electronic_br %})
                ELSE 1
                END)
            / nullif(${rpt_staffing_resource_hrs.v_productive_shift_time}, 0) ;;
    value_format_name: decimal_1
  }

# ------ If the dimension above calculates correctly, this could become a simple SUM type. ------
  measure: total_ftes {
    label: "Total FTEs"
    type: number
    sql: (${total_person_hours_v} *
            CASE WHEN ${parameter} = 'eBR' THEN {% parameter param_electronic_br %}
                 WHEN ${parameter} = 'Paper' THEN (1- {% parameter param_electronic_br %})
                 ELSE 1
                 END)
          / nullif(${rpt_staffing_resource_hrs.v_productive_shift_time}, 0) ;;
    value_format_name: decimal_1
  }
# -----------------------------------------------------------------------------------------------

  measure: total_person_hours_v {
    label: "Total Person-Hours v"
    type: number
    sql: CASE WHEN ${sublot_count_v} is not null
                THEN ${sublot_count_v} * ${total_person_hours} * (1+ {% parameter param_rework_rate %})
                  * (1+ ${para_idle_time_calc_v})
              ELSE ${total_person_hours} * (1+ {% parameter param_rework_rate %})
                  * (1+ ${para_idle_time_calc_v})
              END ;;
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
    sql: (1+ {% parameter param_idle_time %}) * ISNULL(${total_average_of_idle_time}, 0) ;;
    value_format_name: decimal_1
  }

  dimension: dim_para_idle_time_calc_v {
    type: number
    sql: (1+ {% parameter param_idle_time %}) * ISNULL(${average_of_idle_time}, 0) ;;
    hidden: yes
  }

  measure: indirect_direct_ratio_display {
    label: "Indirect/Direct Ratio - Display"
    type: number
    sql: (${rpt_staffing_resource_hrs.sl_total_supervisors_indirect}
            + ${sl_total_ops_indirect_using_ratio} + ${include_function_subfunction.mgmt_count})
          / nullif((${rpt_staffing_resource_hrs.sl_total_supervisors_direct}
            + ${sl_total_ops_direct_using_ratio}), 0) ;;
  }

  measure: rework_rate_d {
    type: number
    sql: ISNULL(${total_average_of_rework_rate}, 0) ;;
    value_format_name: decimal_1
  }

  measure: para_return_excess_rm_v {
    type: number
    sql: CASE WHEN ${parameter} = 'Return Excess RM'
                THEN ${total_t_v_ftes} * (1+ {% parameter param_returned_excess_rm %}
              ELSE 0
              END ;;
    value_format_name: decimal_1
  }
}
