view: filtros {
  derived_table: {
    sql: SELECT DISTINCT Division FROM `@{GCP_PROJECT}.RPT_CORP.RRHH_COMP_Plantas`
WHERE Division != 'Div/Neg' ;;
  }
dimension: division_envases {
  type: string
  sql: ${TABLE}.Division ;;
}
}
