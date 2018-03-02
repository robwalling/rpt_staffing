view: exclude_production_fields {
  derived_table: {
    sql: SELECT rpt_staffing_production."#"
        , YEAR(dateadd(day, (rpt_staffing_production."Day of Operations"), CONVERT(VARCHAR(10),rpt_staffing_schedule."Start Date" ,120)) )
            AS "activity_year"
        , "Step Code", "Support Fx Identifier", "Customer", rpt_staffing_production."Manufacturing Activity"
        , "Process Final", "Schedule Mapping", "Process - BR", "Process BR Details", "Sub-lot", "Sub-lot Multiplier"
        , "Activity (L4)", "Cycle Time", "Sum of Person-hours", "Day of Operations", "Average of Rework Rate"
        , "Average of Idle Time", "Final Person-hours", "Resource Function", "Suite", "Comments"
        , CASE WHEN
                  (CASE WHEN "Sub-lot" = 'Sub-lot' THEN "Sub-lot Multiplier" * (1+ {% parameter rpt_staffing_production.param_sublot %})
                        ELSE "Sub-lot Multiplier"
                        END)
                  is not null THEN
                    (CASE WHEN "Sub-lot" = 'Sub-lot' THEN "Sub-lot Multiplier" * (1+ {% parameter rpt_staffing_production.param_sublot %})
                          ELSE "Sub-lot Multiplier"
                          END)
                      * SUM("Sum of Person-hours")
                      * (1+ {% parameter rpt_staffing_production.param_rework_rate %})
                      * ((1+ {% parameter rpt_staffing_production.param_idle_time %})
                        * ISNULL(SUM(rpt_staffing_production."Average of Idle Time"), 0))
              ELSE SUM("Sum of Person-hours") * (1+ {% parameter rpt_staffing_production.param_rework_rate %})
                      * ((1+ {% parameter rpt_staffing_production.param_idle_time %})
                        * ISNULL(SUM(rpt_staffing_production."Average of Idle Time"), 0))
              END

          -- Omitting multiplication by CASE [Parameter] clause, because [Parameter] is supposed to be EXCLUDED
          / (((COALESCE(SUM((rpt_staffing_resource_hrs."Shift Duration ") ), 0)) - (((COALESCE(SUM((rpt_staffing_resource_hrs."Break Time") ), 0)) * (1+ 0.20)) + ((COALESCE(SUM((rpt_staffing_resource_hrs."Gowning Time") ), 0)) * (1+ 0.20))
                    + ((COALESCE(SUM((rpt_staffing_resource_hrs."Meeting Time") ), 0)) * (1+ 0.20)) + ((COALESCE(SUM(rpt_staffing_resource_hrs.Training ), 0)) * (1+ 0.20)))) *
                  ((COALESCE(SUM((rpt_staffing_resource_hrs."Working days / Year") ), 0)) - ((COALESCE(SUM((rpt_staffing_resource_hrs."Vacation + holidays") ), 0)) * (1+ 0.20))))
                / COALESCE(SUM((rpt_staffing_resource_hrs."Working days / Year") ), 0)  AS "ftes"

      FROM dbo.RPT_Staffing_Production  AS rpt_staffing_production
      LEFT JOIN dbo.RPT_Staffing_Schedule  AS rpt_staffing_schedule ON (rpt_staffing_production."Join Identifier for Schd")
            = (rpt_staffing_schedule."Join Identifier for Schd")
      LEFT JOIN dbo.RPT_Staffing_Resource_HRS AS rpt_staffing_resource_hrs
          on rpt_staffing_production."Join Identifier - Resources" = rpt_staffing_resource_hrs."Join Identifier - Resources"
      GROUP BY rpt_staffing_production."#", YEAR(dateadd(day, (rpt_staffing_production."Day of Operations")
        , (CONVERT(VARCHAR(10),rpt_staffing_schedule."Start Date" ,120))) ),   "Step Code", "Support Fx Identifier", "Customer"
        , rpt_staffing_production."Manufacturing Activity", "Process Final", "Schedule Mapping", "Process - BR"
        , "Process BR Details", "Sub-lot", "Sub-lot Multiplier", "Activity (L4)", "Cycle Time", "Sum of Person-hours"
        , "Day of Operations", "Average of Rework Rate", "Average of Idle Time", "Final Person-hours", "Resource Function"
        , "Suite", "Comments"
       ;;
  }

###### Dimensions ######
  dimension: number {
    primary_key: yes
    type: number
    sql: ${TABLE}."#" ;;
    hidden: yes
  }

  dimension: activity_year {
    type: string
    sql: ${TABLE}.activity_year ;;
    hidden: yes
  }

  dimension: step_code {
    type: string
    label: "Step Code"
    sql: ${TABLE}."Step Code" ;;
    hidden: yes
  }

  dimension: support_fx_identifier {
    type: string
    label: "Support Fx Identifier"
    sql: ${TABLE}."Support Fx Identifier" ;;
    hidden: yes
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
    hidden: yes
  }

  dimension: manufacturing_activity {
    type: string
    label: "Manufacturing Activity"
    sql: ${TABLE}."Manufacturing Activity" ;;
    hidden: yes
  }

  dimension: process_final {
    type: string
    label: "Process Final"
    sql: ${TABLE}."Process Final" ;;
    hidden: yes
  }

  dimension: schedule_mapping {
    type: string
    label: "Schedule Mapping"
    sql: ${TABLE}."Schedule Mapping" ;;
    hidden: yes
  }

  dimension: process_br {
    type: string
    label: "Process - BR"
    sql: ${TABLE}."Process - BR" ;;
    hidden: yes
  }

  dimension: process_br_details {
    type: string
    label: "Process BR Details"
    sql: ${TABLE}."Process BR Details" ;;
    hidden: yes
  }

  dimension: sublot {
    type: string
    sql: ${TABLE}."Sub-lot" ;;
    hidden: yes
  }

  dimension: sublot_multiplier {
    type: string
    label: "Sub-lot Multiplier"
    sql: ${TABLE}."Sub-lot Multiplier" ;;
    hidden: yes
  }

  dimension: activity_l4 {
    type: string
    label: "Activity (L4)"
    sql: ${TABLE}."Activity (L4)" ;;
    hidden: yes
  }

  dimension: cycle_time {
    type: string
    label: "Cycle Time"
    sql: ${TABLE}."Cycle Time" ;;
    hidden: yes
  }

  dimension: sum_of_personhours {
    type: string
    label: "Sum of Person-hours"
    sql: ${TABLE}."Sum of Person-hours" ;;
    hidden: yes
  }

  dimension: day_of_operations {
    type: string
    label: "Day of Operations"
    sql: ${TABLE}."Day of Operations" ;;
    hidden: yes
  }

  dimension: average_of_rework_rate {
    type: string
    label: "Average of Rework Rate"
    sql: ${TABLE}."Average of Rework Rate" ;;
    hidden: yes
  }

  dimension: average_of_idle_time {
    type: string
    label: "Average of Idle Time"
    sql: ${TABLE}."Average of Idle Time" ;;
    hidden: yes
  }

  dimension: final_personhours {
    type: string
    label: "Final Person-hours"
    sql: ${TABLE}."Final Person-hours" ;;
    hidden: yes
  }

  dimension: resource_function {
    type: string
    label: "Resource Function"
    sql: ${TABLE}."Resource Function" ;;
    hidden: yes
  }

  dimension: suite {
    type: string
    sql: ${TABLE}.Suite ;;
    hidden: yes
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
    hidden: yes
  }

  dimension: ftes {
    type: number
    sql: ${TABLE}.ftes ;;
    hidden: yes
  }

###### Sets for drilling ######
  set: detail {
    fields: [
      activity_year,
      support_fx_identifier,
      customer,
      manufacturing_activity,
      comments,
      ftes
    ]
  }
}
