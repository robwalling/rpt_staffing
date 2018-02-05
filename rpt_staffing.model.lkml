connection: "edm"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: rpt_staffing_mgmt_count {}


explore: rpt_staffing_production {
  join: rpt_staffing_schedule {
    sql_on: ${rpt_staffing_production.join_identifier_for_schd}
      = ${rpt_staffing_schedule.join_identifier_for_schd} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: rpt_staffing_resource_hrs {
    sql_on: ${rpt_staffing_production.join_identifier__resources}
      = ${rpt_staffing_resource_hrs.join_identifier__resources};;
    type: left_outer
    relationship: many_to_one
  }
}



explore: rpt_staffing_schedule {}
