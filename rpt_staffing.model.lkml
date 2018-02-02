connection: "edm"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: rpt_staffing_mgmt_count {}


explore: rpt_staffing_production {
  join: rpt_staffing_schedule {
    type: left_outer
    sql_on: ${rpt_staffing_production.join_identifier_for_schd};;
    relationship: many_to_one
  }
}



explore: rpt_staffing_schedule {}
