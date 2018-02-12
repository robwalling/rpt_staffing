view: rpt_staffing_deviation {
  sql_table_name: dbo.RPT_Staffing_Deviation_New ;;

###### Parameters ######
  parameter: param_deviations {
    label: "Deviations"
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
  dimension: asset {
    hidden: yes
    type: string
    sql: ${TABLE}.Asset ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}.Classification ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.Data_Type ;;
  }

  dimension: day_of_operations {
    type: number
    sql: ${TABLE}.Day_of_Operations ;;
  }

  dimension: deviation_count {
    type: number
    sql: ${TABLE}.Deviation_Count ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
  }

  dimension: join_identifier__mgmt {
    type: string
    sql: ${TABLE}."Join_Identifier_-_Mgmt" ;;
  }

  dimension: join_identifier__resources {
    type: string
    sql: ${TABLE}."Join_Identifier_-_Resources" ;;
  }

  dimension: join_identifier_for_schd {
    type: string
    sql: ${TABLE}.Join_Identifier_for_Schd ;;
  }

  dimension: labour {
    hidden: yes
    type: string
    sql: ${TABLE}.Labour ;;
  }

  dimension: parameter {
    type: string
    sql: ${TABLE}.Parameter ;;
  }

  dimension: subfunction {
    type: string
    sql: ${TABLE}."Sub-Function" ;;
  }

  dimension: sum_of_personhours {
    type: number
    sql: ${TABLE}."Sum_of_Person-hours" ;;
  }

###### Measures ######
  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_deviation_count {
    type: sum
    sql: ${deviation_count} ;;
  }
}
