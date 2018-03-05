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

#  join: include_t_activity_date {
#    view_label: "Rpt Staffing Production"
#    sql_on: ${rpt_staffing_production.t_activity_date} = ${include_t_activity_date.t_activity_date} ;;
#    type: left_outer
#    relationship: many_to_many
#  }

#  join: include_t_activity_month {
#    view_label: "Rpt Staffing Production"
#    sql_on: ${rpt_staffing_production.t_activity_month} = ${include_t_activity_month.t_activity_month} ;;
#    type: left_outer
#    relationship: many_to_one
#  }

  join: include_function_subfunction {
    view_label: "Rpt Staffing Production"
    sql_on: ${rpt_staffing_resource_hrs.function} = ${include_function_subfunction.function}
      AND ${rpt_staffing_resource_hrs.subfunction} = ${include_function_subfunction.subfunction} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: include_function_subfunction_testinggroup {
    view_label: "Rpt Staffing Production"
    sql_on: ${rpt_staffing_resource_hrs.join_identifier_resources}
            = ${include_function_subfunction_testinggroup.join_identifier_resources} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: include_subfunction_testinggroup {
    view_label: "Rpt Staffing Production"
    sql_on: ${rpt_staffing_production.join_identifier_resources}
            = ${include_subfunction_testinggroup.join_identifier_resources};;
    type: left_outer
    relationship: many_to_one
  }

  join: exclude_production_fields {
    view_label: "Rpt Staffing Production"
    sql_on: ${exclude_production_fields.number} = ${rpt_staffing_production.id} ;;
    type: left_outer
    relationship: many_to_one
  }
}

explore: rpt_staffing_schedule {}

# explore: rpt_staffing_resource_hrs {
#  join: rpt_staffing_production {
#    sql_on: ${rpt_staffing_production.join_identifier_resources}
#      = ${rpt_staffing_resource_hrs.join_identifier_resources} ;;
#    type: left_outer
#  }
#}
