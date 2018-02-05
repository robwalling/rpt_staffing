view: rpt_staffing_resource_hrs {
  sql_table_name: dbo.RPT_Staffing_Resource_HRS ;;

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

  measure: count {
    type: count
    drill_fields: []
  }
}
