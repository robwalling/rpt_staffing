view: rpt_staffing_deviation_new {
  sql_table_name: dbo.RPT_Staffing_Deviation_New ;;

  dimension: asset {
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

  measure: count {
    type: count
    drill_fields: []
  }
}
