view: include_subfunction_testinggroup {
  derived_table: {
    sql: select "Join Identifier - Resources"
          , "Sub-function", "Testing Group"
          , AVG("Sup# SOC") as dim_avg_sup_soc
          , AVG("HC (Opers# Only)") as dim_avg_hc_opers_only
        from rpt_staffing_resource_hrs
        group by "Join Identifier - Resources", "Sub-function", "Testing Group" ;;
  }

  parameter: param_span_of_control {
    label: "Span of Control"
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
          * (1+ {% parameter param_span_of_control %})  ;;
  }

  set: detail {
    fields: [subfunction, testing_group, dim_avg_sup_soc, dim_avg_hc_opers_only]
  }
}
