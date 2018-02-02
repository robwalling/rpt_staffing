view: rpt_staffing_mgmt_count {
  sql_table_name: dbo.RPT_Staffing_Mgmt_Count ;;

  dimension: asset {
    type: string
    sql: ${TABLE}.Asset ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."Data Type" ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
  }

  dimension: join_identifier__mgmt {
    type: string
    sql: ${TABLE}."Join Identifier - Mgmt" ;;
  }

  dimension: manager {
    type: number
    sql: ${TABLE}.Manager ;;
  }

  dimension: operators {
    type: number
    sql: ${TABLE}.Operators ;;
  }

  dimension: others {
    type: number
    sql: ${TABLE}.Others ;;
  }

  dimension: subfunction {
    type: string
    sql: ${TABLE}."Sub-function" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
