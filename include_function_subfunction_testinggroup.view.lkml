view: include_function_subfunction_testinggroup {
  derived_table: {
    sql: select "Join Identifier - Resources", "Function", "Sub-function", "Testing Group"
          , AVG("Sups# Per Shift" * "# of Shifts") as dim_avg_sups_per_shift
        from rpt_staffing_resource_hrs
        group by "Join Identifier - Resources", "Function", "Sub-function", "Testing Group" ;;
  }

  dimension: join_identifier_resources {
    primary_key: yes
    type: string
    sql: ${TABLE}."Join Identifier - Resources" ;;
    hidden: yes
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
    hidden: yes
  }

  dimension: subfunction {
    type: string
    sql: ${TABLE}."Sub-function" ;;
    hidden: yes
  }

  dimension: testing_group {
    type: string
    label: "Testing Group"
    sql: ${TABLE}."Testing Group" ;;
    hidden: yes
  }

  dimension: dim_avg_sups_per_shift {
    type: string
    sql: ${TABLE}.dim_avg_sups_per_shift ;;
    hidden: yes
  }

  measure: sups_by_shifts_v {
    label: "Sups. by Shifts V"
    type: number
    sql: AVG(${dim_avg_sups_per_shift})
          * (1+ {% parameter rpt_staffing_production.param_span_of_control %}) ;;
    value_format_name: decimal_0
  }

  set: detail {
    fields: [function, subfunction, testing_group, dim_avg_sups_per_shift]
  }
}
