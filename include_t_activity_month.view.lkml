# ------ SQL works, but columns return 0 values ------
view: include_t_activity_month {
  derived_table: {
    sql: SELECT
        CONVERT(VARCHAR(7),dateadd(day, (rpt_staffing_production."Day of Operations"), (CONVERT(VARCHAR(10),rpt_staffing_schedule."Start Date" ,120))) ,120)
          AS "t_activity_month"

        -- Get dimensionalized [SF QC  avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'QC' THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+NULL)
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ NULL)
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+NULL)
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN NULL
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-NULL
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ NULL)))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ NULL)))) ), 0))
              / (((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  / (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year")) * SUM("Working days / Month"))
            ELSE 0
            END as dim_sf_qc_avg_ops

        -- Get dimensionalized [SF QA  avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'QA' THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+NULL)
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ NULL)
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+NULL)
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN NULL
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-NULL
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ NULL)))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ NULL)))) ), 0))
              / (((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  / (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year")) * SUM("Working days / Month"))
              ELSE 0
              END as dim_sf_qa_avg_ops

        -- Get dimensionalized [SF Engineering  avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Engineering' THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+NULL)
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ NULL)
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+NULL)
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN NULL
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-NULL
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ NULL)))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ NULL)))) ), 0))
              / (((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  / (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year")) * SUM("Working days / Month"))
            ELSE 0
            END as dim_sf_engineering_avg_ops

        -- Get dimensionalized [SF PP&L avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'PP&L' THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+NULL)
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ NULL)
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+NULL)
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN NULL
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-NULL
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ NULL)))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ NULL)))) ), 0))
              / (((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  / (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year")) * SUM("Working days / Month"))
            ELSE 0
            END as dim_sf_ppl_avg_ops

        -- Get dimensionalized [SF Production Services avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Production Services' THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+NULL)
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ NULL)
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+NULL)
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN NULL
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-NULL
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ NULL)))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ NULL)))) ), 0))
              / (((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  / (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year")) * SUM("Working days / Month"))
            ELSE 0
            END as dim_sf_production_services_avg_ops

        -- Get dimensionalized [SF MSAT  avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'MSAT' THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+NULL)
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ NULL)
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+NULL)
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN NULL
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-NULL
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ NULL)))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ NULL)))) ), 0))
              / (((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  / (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year")) * SUM("Working days / Month"))
            ELSE 0
            END as dim_sf_msat_avg_ops

        -- Get dimensionalized [SF Mfg Support avg ops]
        , CASE
            WHEN rpt_staffing_production."Function" = 'Manufacturing' THEN (COALESCE(SUM(((rpt_staffing_production."Sum of Person-hours") * CASE
                WHEN rpt_staffing_production.Parameter = 'Reactive Maintenance' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Return Excess RM' THEN 1+NULL
                WHEN rpt_staffing_production.Parameter = 'Rework Rate' THEN IIF((rpt_staffing_production."Sub-lot Multiplier") IS NOT NULL
                                                        , IIF((rpt_staffing_production."Sub-lot")='Sub-lot', (rpt_staffing_production."Sub-lot Multiplier")*(1+NULL)
                                                          ,(rpt_staffing_production."Sub-lot Multiplier"))
                                                        ,1)
                WHEN rpt_staffing_production.Parameter = 'Deviations' THEN rpt_staffing_deviation.Deviation_Count*(1+ NULL)
                WHEN rpt_staffing_production.Parameter = 'Change Control' THEN (1+NULL)
                WHEN rpt_staffing_production.Parameter = 'eBR' THEN NULL
                WHEN rpt_staffing_production.Parameter = 'Paper' THEN 1-NULL
                ELSE 1
              END * (1+ (ISNULL((rpt_staffing_production."Average of Rework Rate"), 0)*(1+ NULL)))
                * (1+ (ISNULL((rpt_staffing_production."Average of Idle Time"), 0)*(1+ NULL)))) ), 0))
              / (((SUM("Shift Duration") - (SUM("Gowning Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_gowning %})
                                         + SUM("Break Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_break %})
                                         + SUM("Meeting Time")*(1+ {% parameter rpt_staffing_resource_hrs.param_meeting %})
                                         + SUM("Training")*(1+ {% parameter rpt_staffing_resource_hrs.param_training %})))
                  / (SUM("Working days / Year") - SUM("Vacation + holidays")*(1+ {% parameter rpt_staffing_resource_hrs.param_vacations %}))
                / SUM("Working days / Year")) * SUM("Working days / Month"))
            ELSE 0
            END as dim_sf_manufacturing_avg_ops
      FROM dbo.RPT_Staffing_Production  AS rpt_staffing_production
      LEFT JOIN dbo.RPT_Staffing_Schedule  AS rpt_staffing_schedule ON (rpt_staffing_production."Join Identifier for Schd")
            = (rpt_staffing_schedule."Join Identifier for Schd")
      LEFT JOIN dbo.RPT_Staffing_Resource_HRS  AS rpt_staffing_resource_hrs ON (rpt_staffing_production."Join Identifier - Resources")
            = (rpt_staffing_resource_hrs."Join Identifier - Resources")
      LEFT JOIN dbo.RPT_Staffing_Deviation_New  AS rpt_staffing_deviation ON (rpt_staffing_production."Join Identifier for Schd") = rpt_staffing_deviation.Join_Identifier_for_Schd
            AND (rpt_staffing_production."Join Identifier - Mgmt") = (rpt_staffing_deviation."Join_Identifier_-_Mgmt")
            AND (rpt_staffing_production."Join Identifier - Resources") = (rpt_staffing_deviation."Join_Identifier_-_Resources")

      GROUP BY CONVERT(VARCHAR(7),dateadd(day, (rpt_staffing_production."Day of Operations"), (CONVERT(VARCHAR(10),rpt_staffing_schedule."Start Date" ,120))) ,120)
        , rpt_staffing_production."Function"
       ;;
  }


###### Dimensions ######
  dimension: t_activity_month {
    primary_key: yes
    type: string
    sql: ${TABLE}.t_activity_month ;;
    hidden: yes
  }

  dimension: dim_sf_qc_avg_ops {
    type: string
    sql: ${TABLE}.dim_sf_qc_avg_ops ;;
    hidden: yes
  }

  dimension: dim_sf_qa_avg_ops {
    type: string
    sql: ${TABLE}.dim_sf_qa_avg_ops ;;
    hidden: yes
  }

  dimension: dim_sf_engineering_avg_ops {
    type: string
    sql: ${TABLE}.dim_sf_engineering_avg_ops ;;
    hidden: yes
  }

  dimension: dim_sf_ppl_avg_ops {
    type: string
    sql: ${TABLE}.dim_sf_ppl_avg_ops ;;
    hidden: yes
  }

  dimension: dim_sf_production_services_avg_ops {
    type: string
    sql: ${TABLE}.dim_sf_production_services_avg_ops ;;
    hidden: yes
  }

  dimension: dim_sf_msat_avg_ops {
    type: string
    sql: ${TABLE}.dim_sf_msat_avg_ops ;;
    hidden: yes
  }

  dimension: dim_sf_manufacturing_avg_ops {
    type: string
    sql: ${TABLE}.dim_sf_manufacturing_avg_ops ;;
    hidden: yes
  }

###### Measures ######
  measure: sf_qc_avg_ops {
    label: "SF QC Avg Ops"
    type: average
    sql: ${dim_sf_qc_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: sf_qa_avg_ops {
    label: "SF QA Avg Ops"
    type: average
    sql: ${dim_sf_qa_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: sf_engineering_avg_ops {
    label: "SF Engineering Avg Ops"
    type: average
    sql: ${dim_sf_engineering_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: sf_ppl_avg_ops {
    label: "SF PP&L Avg Ops"
    type: average
    sql: ${dim_sf_ppl_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: sf_production_services_avg_ops {
    label: "SF Production Services Avg Ops"
    type: average
    sql: ${dim_sf_production_services_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: sf_msat_avg_ops {
    label: "SF MSAT Avg Ops"
    type: average
    sql: ${dim_sf_msat_avg_ops} ;;
    value_format_name: decimal_0
  }

  measure: sf_mfg_support_avg_ops {
    label: "SF Mfg Support Avg Ops"
    type: average
    sql: ${dim_sf_manufacturing_avg_ops} ;;
    value_format_name: decimal_0
  }

  set: detail {
    fields: [
      t_activity_month,
      dim_sf_qc_avg_ops,
      dim_sf_qa_avg_ops,
      dim_sf_engineering_avg_ops,
      dim_sf_ppl_avg_ops,
      dim_sf_production_services_avg_ops,
      dim_sf_msat_avg_ops,
      dim_sf_manufacturing_avg_ops
    ]
  }
}
