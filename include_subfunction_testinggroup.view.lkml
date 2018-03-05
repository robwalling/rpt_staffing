view: include_subfunction_testinggroup {
  derived_table: {
    sql: select "Join Identifier - Resources"
          , "Sub-function", "Testing Group"
          , AVG("Sup# SOC") as dim_avg_sup_soc
          , AVG("HC (Opers# Only)") as dim_avg_hc_opers_only
        from rpt_staffing_resource_hrs
        group by "Join Identifier - Resources", "Sub-function", "Testing Group" ;;
  }

  dimension: join_identifier_resources {
    primary_key: yes
    type: string
    sql: ${TABLE}."Join Identifier - Resources" ;;
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

  dimension: dim_avg_sup_soc {
    type: number
    sql: ${TABLE}.dim_avg_sup_soc ;;
    hidden: yes
  }

  dimension: dim_avg_hc_opers_only {
    type: number
    sql: ${TABLE}.dim_avg_hc_opers_only ;;
    hidden: yes
  }

  measure: sum_avg_sup_soc {
    type: sum
    sql: ${dim_avg_sup_soc} ;;
    value_format_name: decimal_1
    hidden: yes
  }

  measure: sum_avg_hc_opers_only {
    type: sum
    sql: ${dim_avg_hc_opers_only} ;;
    value_format_name: decimal_1
    hidden: yes
  }

  measure: t_soc_v {
    label: "T SOC V"
    type: number
    sql: (${sum_avg_sup_soc} / ${sum_avg_hc_opers_only})
          * (1+ {% parameter rpt_staffing_production.param_span_of_control %})  ;;
  }

  set: detail {
    fields: [subfunction, testing_group, dim_avg_sup_soc, dim_avg_hc_opers_only]
  }
}
