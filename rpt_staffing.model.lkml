connection: "edm"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: rpt_staffing_mgmt_count {}


explore: rpt_staffing_production {
  fields: [ALL_FIELDS*,
    -rpt_staffing_schedule.join_identifier_for_schd,
    -rpt_staffing_resource_hrs.join_identifier_resources,
    -rpt_staffing_mgmt_count.join_identifier_mgmt]

  join: rpt_staffing_schedule {
    sql_on: ${rpt_staffing_production.join_identifier_for_schd}
      = ${rpt_staffing_schedule.join_identifier_for_schd} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: rpt_staffing_resource_hrs {
    sql_on: ${rpt_staffing_production.join_identifier_resources}
      = ${rpt_staffing_resource_hrs.join_identifier_resources} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: rpt_staffing_mgmt_count {
    sql_on: ${rpt_staffing_production.join_identifier_mgmt}
      = ${rpt_staffing_mgmt_count.join_identifier_mgmt} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: rpt_staffing_deviation {
    sql_on: ${rpt_staffing_production.join_identifier_for_schd} = ${rpt_staffing_deviation.join_identifier_for_schd}
      AND ${rpt_staffing_production.join_identifier_mgmt} = ${rpt_staffing_deviation.join_identifier_mgmt}
      AND ${rpt_staffing_production.join_identifier_resources} = ${rpt_staffing_deviation.join_identifier_resources};;
    type: left_outer
    relationship: one_to_one
  }

  join: include_t_activity_month {
    view_label: "Rpt Staffing Production"
    sql_on: ${rpt_staffing_production.t_activity_month} = ${include_t_activity_month.t_activity_month} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: include_function_subfunction {
    view_label: "Rpt Staffing Production"
    sql_on: ${rpt_staffing_resource_hrs.function} = ${include_function_subfunction.function}
      AND ${rpt_staffing_resource_hrs.subfunction} = ${include_function_subfunction.subfunction} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: include_function_subfunction_testinggroup {
    view_label: "Rpt Staffing Production"
    sql_on: ${rpt_staffing_resource_hrs.function} = ${include_function_subfunction_testinggroup.function}
      AND ${rpt_staffing_resource_hrs.subfunction} = ${include_function_subfunction_testinggroup.subfunction}
      AND ${rpt_staffing_resource_hrs.testing_group} = ${include_function_subfunction_testinggroup.testing_group} ;;
    type: left_outer
    relationship: many_to_one
  }
}

explore: rpt_staffing_schedule {}
