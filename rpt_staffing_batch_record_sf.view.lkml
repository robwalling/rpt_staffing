view: rpt_staffing_batch_record_sf {
  sql_table_name: dbo.RPT_Staffing_Batch_Record_SF ;;

  dimension: asset {
    type: string
    sql: ${TABLE}.Asset ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.Data_Type ;;
  }

  dimension: day_of_operations {
    type: number
    sql: ${TABLE}.Day_of_Operations ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
  }

  dimension: idle_time {
    type: number
    sql: ${TABLE}.Idle_Time ;;
  }

  dimension: join_identifier_for_schd {
    type: string
    sql: ${TABLE}.Join_Identifier_for_Schd ;;
  }

  dimension: join_identifier_mgmt {
    type: string
    sql: ${TABLE}.Join_Identifier_Mgmt ;;
  }

  dimension: join_identifier_resources {
    type: string
    sql: ${TABLE}.Join_Identifier_Resources ;;
  }

  dimension: labour {
    type: string
    sql: ${TABLE}.Labour ;;
  }

  dimension: parameter {
    type: string
    sql: ${TABLE}.Parameter ;;
  }

  dimension: product {
    type: number
    sql: ${TABLE}.Product ;;
  }

  dimension: rework_rate {
    type: number
    sql: ${TABLE}.Rework_Rate ;;
  }

  dimension: sub_function {
    type: string
    sql: ${TABLE}.Sub_Function ;;
  }

  dimension: sum_of_person_hours {
    type: number
    sql: ${TABLE}.Sum_of_Person_hours ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
