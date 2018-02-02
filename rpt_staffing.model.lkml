connection: "edm"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# --- [RHW, 2/02] Commented out all explores except the following:
# ------ mgmt_count
# ------ production
# ------ schedule

# explore: rpt_staffing_audits {}

# explore: rpt_staffing_batch_record_sf {}

# explore: rpt_staffing_cont_test {}

# explore: rpt_staffing_deviation_new {}

# explore: rpt_staffing_dispensing {}

# explore: rpt_staffing_em_test {}

explore: rpt_staffing_mgmt_count {}

# explore: rpt_staffing_msat_dsp {}

# explore: rpt_staffing_msat_pv {}

# explore: rpt_staffing_msat_usp {}

# explore: rpt_staffing_npd_eng {}

# explore: rpt_staffing_npd_ppl {}

# explore: rpt_staffing_npd_prod_support {}

# explore: rpt_staffing_outsource {}

# explore: rpt_staffing_pd_ppl {}

# explore: rpt_staffing_prod_test {}

explore: rpt_staffing_production {

  join: rpt_staffing_schedule {
    sql_on: ${rpt_staffing_production.join_identifier_for_schd}
    = ${rpt_staffing_schedule.join_identifier_for_schd} ;;
  type: left_outer
  relationship: many_to_one
  }
}

# explore: rpt_staffing_rm_test {}

# explore: rpt_staffing_rout_micro_test {}

explore: rpt_staffing_schedule {}

# explore: rpt_staffing_stability {}

# explore: rpt_staffing_tech_services {}
