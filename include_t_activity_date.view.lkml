view: include_t_activity_date {
  derived_table: {
    sql: SELECT
        ROW_NUMBER() over (order by CONVERT(VARCHAR(10),dateadd(day, (rpt_staffing_production."Day of Operations"), (CONVERT(VARCHAR(10),rpt_staffing_schedule."Start Date" ,120))) ,120) asc)
          AS "row_number"
        , CONVERT(VARCHAR(10),dateadd(day, (rpt_staffing_production."Day of Operations"), (CONVERT(VARCHAR(10),rpt_staffing_schedule."Start Date" ,120))) ,120)
          AS "t_activity_date"

        -- Get dimensionalized [Prd 20K DSP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = '20K' and rpt_staffing_production."Suite" = 'Downstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_20k_dsp_avg_ops

        -- Get dimensionalized [Prd 20K USP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = '20K' and rpt_staffing_production."Suite" = 'Upstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_20k_usp_avg_ops

        -- Get dimensionalized [Prd 5K DSP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = '5K' and rpt_staffing_production."Suite" = 'Downstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_5k_dsp_avg_ops

        -- Get dimensionalized [Prd 5K USP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = '5K' and rpt_staffing_production."Suite" = 'Upstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_5k_usp_avg_ops

        -- Get dimensionalized [Prd Mono DSP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = 'Mono' and rpt_staffing_production."Suite" = 'Downstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_mono_dsp_avg_ops

        -- Get dimensionalized [Prd Mono USP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = 'Mono' and rpt_staffing_production."Suite" = 'Upstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_mono_usp_avg_ops

        -- Get dimensionalized [Prd CT USP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = 'CT' and rpt_staffing_production."Suite" = 'Upstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_ct_usp_avg_ops

        -- Get dimensionalized [Prd P5 DSP avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' and rpt_staffing_production."Asset" = 'P5' and rpt_staffing_production."Suite" = 'Downstream'
              THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+ {% parameter rpt_staffing_production.param_reactive_maintenance %}
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+ {% parameter rpt_staffing_production.param_returned_excess_rm %}
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+ {% parameter rpt_staffing_production.param_sublot %})
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ {% parameter rpt_staffing_deviation.param_deviations %})
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+{% parameter rpt_staffing_production.param_change_control %})
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN {% parameter rpt_staffing_production.param_electronic_br %}
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-{% parameter rpt_staffing_production.param_returned_excess_rm %}
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ {% parameter rpt_staffing_production.param_rework_rate %})))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ {% parameter rpt_staffing_production.param_idle_time %})))) ), 0))
              / ((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  * (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year"))
            ELSE 0
            END as dim_prd_p5_dsp_avg_ops

      FROM dbo.RPT_Staffing_Production  AS rpt_staffing_production
      LEFT JOIN dbo.RPT_Staffing_Schedule  AS rpt_staffing_schedule ON (rpt_staffing_production."Join Identifier for Schd")
            = (rpt_staffing_schedule."Join Identifier for Schd")
      LEFT JOIN dbo.RPT_Staffing_Resource_HRS  AS rpt_staffing_resource_hrs ON (rpt_staffing_production."Join Identifier - Resources")
            = (rpt_staffing_resource_hrs."Join Identifier - Resources")
      LEFT JOIN dbo.RPT_Staffing_Deviation_New  AS rpt_staffing_deviation ON (rpt_staffing_production."Join Identifier for Schd") = rpt_staffing_deviation.Join_Identifier_for_Schd
            AND (rpt_staffing_production."Join Identifier - Mgmt") = (rpt_staffing_deviation."Join_Identifier_-_Mgmt")
            AND (rpt_staffing_production."Join Identifier - Resources") = (rpt_staffing_deviation."Join_Identifier_-_Resources")

      GROUP BY CONVERT(VARCHAR(10),dateadd(day, (rpt_staffing_production."Day of Operations"), (CONVERT(VARCHAR(10),rpt_staffing_schedule."Start Date" ,120))) ,120)
        , rpt_staffing_production."Function", rpt_staffing_production."Asset", rpt_staffing_production."Suite" ;;
  }

  ###### Dimensions ######
  dimension: row_number {
    primary_key: yes
    type: number
    sql: ${TABLE}.row_number ;;
    hidden: yes
  }

  dimension: t_activity_date {
    type: string
    sql: ${TABLE}.t_activity_date ;;
    hidden: yes
  }

  dimension: dim_prd_20k_dsp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_20k_dsp_avg_ops ;;
    hidden: yes
  }

  dimension: dim_prd_20k_usp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_20k_usp_avg_ops ;;
    hidden: yes
  }

  dimension: dim_prd_5k_dsp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_5k_dsp_avg_ops ;;
    hidden: yes
  }

  dimension: dim_prd_5k_usp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_5k_usp_avg_ops ;;
    hidden: yes
  }

  dimension: dim_prd_mono_dsp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_mono_dsp_avg_ops ;;
    hidden: yes
  }

  dimension: dim_prd_mono_usp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_mono_usp_avg_ops ;;
    hidden: yes
  }

  dimension: dim_prd_ct_usp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_ct_usp_avg_ops ;;
    hidden: yes
  }

  dimension: dim_prd_p5_dsp_avg_ops {
    type: string
    sql: ${TABLE}.dim_prd_p5_dsp_avg_ops ;;
    hidden: yes
  }

  ###### Measures ######
  measure: prd_20k_dsp_avg_ops {
    type: average
    sql: ${dim_prd_20k_dsp_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: prd_20k_usp_avg_ops {
    type: average
    sql: ${dim_prd_20k_usp_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: prd_5k_dsp_avg_ops {
    type: average
    sql: ${dim_prd_5k_dsp_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: prd_5k_usp_avg_ops {
    type: average
    sql: ${dim_prd_5k_usp_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: prd_mono_dsp_avg_ops {
    type: average
    sql: ${dim_prd_mono_dsp_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: prd_mono_usp_avg_ops {
    type: average
    sql: ${dim_prd_mono_usp_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: prd_ct_usp_avg_ops {
    type: average
    sql: ${dim_prd_ct_usp_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: prd_p5_dsp_avg_ops {
    type: average
    sql: ${dim_prd_p5_dsp_avg_ops} ;;
    value_format_name: decimal_0
  }

}
