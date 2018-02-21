view: include_function_subfunction {
  derived_table: {
    sql: select r."Function", r."Sub-function", AVG("Manager") as dim_avg_manager
      from rpt_staffing_resource_hrs r
      join rpt_staffing_production p
        on r."Join Identifier - Resources" = p."Join Identifier - Resources"
      join rpt_staffing_mgmt_count m
        on p."Join Identifier - Mgmt" = m."Join Identifier - Mgmt"
      group by r."Function", r."Sub-function"
       ;;
  }

###### Dimensions ######

# ------ Did not pull in "Join identifier - Resources" as the PK because that contains
# "Testing Group" information that would have affected the grouping logic here.
  dimension: primary_key {
    primary_key: yes
    type: string
    sql: CONCAT(${function}, ${subfunction}) ;;
    hidden: yes
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
    hidden: yes
  }

  dimension: subfunction {
    type: string
    sql: ${TABLE}."Sub-function" ;;
    hidden: yes
  }

  dimension: dim_avg_manager {
    type: number
    sql: ${TABLE}.dim_avg_manager ;;
    hidden: yes
  }

###### Measures ######
  measure: mgmt_count {
    type: sum
    sql: ${dim_avg_manager} ;;
    value_format_name: decimal_0
  }

  set: detail {
    fields: [function, subfunction]
  }
}
